function validateHasData(element, errorMsg) {
    if(! element.value) {
        element.style.backgroundColor = "red"
        element.placeholder = "Falta " + errorMsg
    } else {
        element.style.backgroundColor = "#CCCCFF"
        element.placeholder = ""
    }

    if(element.id == "email") {
        if (! isValidEmail(element.value)) {
            alert("El email ingresado no es válido.")
        }
    }
}

function validateForm() {
    var numTkElement = document.getElementById("numTK")
    var firstNameElement = document.getElementById("firstname")
    var lastNameElement = document.getElementById("lastname")
    var mailElement = document.getElementById("email")
    var mailConfElement = document.getElementById("emailConf")
    var radioElements = document.getElementsByName("ccard")

    var regexOnlyText = /^[a-zA-Z]{1,25}$/

    if (numTkElement.value < 1 || numTkElement.value > 20) {
        alert("El número mínimo de entradas permitidas es 1 y el máximo son 20.")
        return false
    }

    if (! regexOnlyText.test(firstNameElement.value)) {
        alert("El nombre no puede estar vacío y solo puede contener letras hasta un máximo de 25 caracteres.")
        return false
    }

    if (! regexOnlyText.test(lastNameElement.value)) {
        alert("El apellido no puede estar vacío y solo puede contener letras hasta un máximo de 25 caracteres.")
        return false
    }

    if (isValidEmail(mailElement.value)) {
       if(mailElement.value != mailConfElement.value) {
            mailElement.style.backgroundColor = "red"
            mailElement.placeholder = "Los emails no coinciden"
            mailElement.value = ""

            mailConfElement.style.backgroundColor = "red"
            mailConfElement.placeholder = "Los emails no coinciden"
            mailConfElement.value = ""

            return false
        }
    } else {
        alert("El email ingresado no es válido.")
        return false
    }

    var isSelected = false
    for(var i = 0; i < radioElements.length && !isSelected; i++) {
        if (radioElements[i].checked) {
            isSelected = true
        }
    }

    if (! isSelected) {
        alert("Se debe seleccionar un método de pago.")
        return false
    }

    return true
}

function isValidEmail(email) {
    var regex = /^\w+([\.-]?\w+)*@(?:gmail|hotmail)\.com+$/

    return regex.test(email)
}

function calculatePrice() {
    var eventElement = document.getElementById("select_event")
    var numTKElementValue = document.getElementById("numTK").value
    var valueElement = document.getElementById("value")

    switch (eventElement.value) {
        case "1": 
            valueElement.value = 200 * getLocationMultiplier() * parseInt(numTKElementValue)
            break
        case "2":
            valueElement.value = 150 * getLocationMultiplier() * parseInt(numTKElementValue)
            break
        case "3":
            valueElement.value = 170 * getLocationMultiplier() * parseInt(numTKElementValue)
            break
    }
}

function getLocationMultiplier() {
    var locationElement = document.getElementById("select_location")

    switch (locationElement.value) {
        case "PL":
        case "PV":
            return 1
        case "PLL":
        case "PLV":
            return 5
    }
}

function alertPromos() {
    alert("Visa - 3 cuotas s/ interés. \nMaster - 6 cuotas s/ interés. \nAmerican 12 cuotas s/ interés.")
}
<%  'tomo los datos del formulario para guardarlos en la cookie
    response.COOKIES("Entradas-Tek")("Evento")=Request.form("select_event")
    response.COOKIES("Entradas-Tek")("Ubicacion")=Request.form("select_location")
    response.COOKIES("Entradas-Tek")("Cantidad")=Request.form("numTK")
    response.COOKIES("Entradas-Tek")("Importe")=Request.form("value")
    response.COOKIES("Entradas-Tek")("Nombre")=Request.form("firstname")
    response.COOKIES("Entradas-Tek")("Apellido")=Request.form("lastname")
    response.COOKIES("Entradas-Tek")("Email")=Request.form("email")
    response.COOKIES("Entradas-Tek")("Tarjeta")=Request.form("ccard")
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title>Entradas-Tek</title>
</head>
<body>

<table>
<thead>
    <tr>
        <th colspan="4"><span>Entradas-Tek - Confirmaci&oacute;n</span></th>
    </tr>
</thead>
<tbody>
    <tr>
        <td colspan="4"><hr/></td>
    </tr>
<tr>
    <td><span>Encuentro: </span> <span class="texto"><% Response.Write(Request.form("select_event")) %></span></td>
    <td><span>Ubicaci&oacute;n: </span> <span class="texto"><% Response.Write(Request.form("select_location")) %></span></td>
    <td><span>Cantidad: </span> <span class="texto"><% Response.Write(Request.form("numTK")) %></span></td>
    <td><span>Precio u$s: </span> <span class="texto"><% Response.Write(Request.form("value")) %></span></td>
</tr>
<tr>
    <td><span>Apellido: </span> <span class="texto"><% Response.Write(Request.form("lastname")) %></span></td>
    <td><span>Nombre: </span> <span class="texto"><% Response.Write(Request.form("firstname")) %></span></td>
    <td><span>E-mail: </span> <span class="texto"><% Response.Write(Request.form("email")) %></span></td>
    <td><span>Tarjeta: </span> <span class="texto"><% Response.Write(Request.form("ccard")) %></span></td>
</tr>
<tr>
    <td colspan="4"><hr/></td>
</tr>
</tbody>
</table>
<div id="qrcode">
<a href="./finalizacion.asp"><img src="../img/qr_img.png" alt="© 2021 - Gabriel Cisilino" /></a>
</div>

</body>
</html>
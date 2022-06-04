<%  'tomo los datos del formulario para guardarlos en la cookie
    response.COOKIES("Entradas-Tek")("Evento")=Request.QueryString("select_event")
    response.COOKIES("Entradas-Tek")("Ubicacion")=Request.QueryString("select_location")
    response.COOKIES("Entradas-Tek")("Cantidad")=Request.QueryString("numTK")
    response.COOKIES("Entradas-Tek")("Importe")=Request.QueryString("value")
    response.COOKIES("Entradas-Tek")("Nombre")=Request.QueryString("firstname")
    response.COOKIES("Entradas-Tek")("Apellido")=Request.QueryString("lastname")
    response.COOKIES("Entradas-Tek")("Email")=Request.QueryString("email")
    response.COOKIES("Entradas-Tek")("Tarjeta")=Request.QueryString("ccard")
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
    <td><span>Encuentro: </span> <span class="texto"><% Response.Write(Request.QueryString("select_event")) %></span></td>
    <td><span>Ubicaci&oacute;n: </span> <span class="texto"><% Response.Write(Request.QueryString("select_location")) %></span></td>
    <td><span>Cantidad: </span> <span class="texto"><% Response.Write(Request.QueryString("numTK")) %></span></td>
    <td><span>Precio u$s: </span> <span class="texto"><% Response.Write(Request.QueryString("value")) %></span></td>
</tr>
<tr>
    <td><span>Apellido: </span> <span class="texto"><% Response.Write(Request.QueryString("lastname")) %></span></td>
    <td><span>Nombre: </span> <span class="texto"><% Response.Write(Request.QueryString("firstname")) %></span></td>
    <td><span>E-mail: </span> <span class="texto"><% Response.Write(Request.QueryString("email")) %></span></td>
    <td><span>Tarjeta: </span> <span class="texto"><% Response.Write(Request.QueryString("ccard")) %></span></td>
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
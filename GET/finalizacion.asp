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
        <th colspan="4"><span>Entradas-Tek - Finalizaci&oacute;n</span></th>
    </tr>
</thead>
<tbody>
    <tr>
        <td colspan="4"><hr/></td>
    </tr>
<tr>
    <td><span>Encuentro: </span> <span class="texto">
        <%
        ev=Request.COOKIES("Entradas-Tek")("Evento")
        Select Case ev
        Case 1
            response.write("Barcelona - Ath. Bilbao")
        Case 2
            response.write("Real Madrid - Sp. Gijón")
        Case else
            response.write("Dep. La Coruña – Sevilla")
        End Select
        %></span>
    </td>
    <td><span>Ubicaci&oacute;n: </span> <span class="texto">
        <% 
        ub=Request.COOKIES("Entradas-Tek")("Ubicacion")
        
        If ub = "PL" then
            response.write("Popular Local")
        elseif ub = "PV" then
            response.write("Popular Visitante")
        elseif ub = "PLL" then
            response.write("Platea Local")
        else
            response.write("Platea Visitante")
        end if
        %></span>
    </td>
    <td><span>Cantidad de Entradas: </span> <span class="texto"><% Response.Write(Request.COOKIES("Entradas-Tek")("Cantidad")) %></span></td>
    <td><span>Precio u$s: </span> <span class="texto"><% Response.Write(Request.COOKIES("Entradas-Tek")("Importe")) %></span></td>
</tr>
<tr>
    <td><span>Apellido: </span>  <span class="texto"><% Response.Write(Request.COOKIES("Entradas-Tek")("Apellido")) %></span></td>
    <td><span>Nombre: </span>  <span class="texto"><% Response.Write(Request.COOKIES("Entradas-Tek")("Nombre")) %></span></td>
    <td><span>E-mail: </span>  <span class="texto"><% Response.Write(Request.COOKIES("Entradas-Tek")("Email")) %></span></td>
    <td><span>Tarjeta: </span>  <span class="texto"><% Response.Write(Request.COOKIES("Entradas-Tek")("Tarjeta")) %></span></td>
</tr>
<tr>
    <td colspan="4"><hr/></td>
</tr>
</tbody>
</table>

</body>
</html>
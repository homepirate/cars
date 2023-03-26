<!DOCTYPE html>
<html>
<head>
    <title>SELECTION OF CARS</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body  style="white-space: pre-line">
<#assign x=3>
<#assign k=2>
<#assign y=2>
<#list tables as tbl>
<table class="table">
    <tr>
        <th>f</th>
        <#list 0..k as i>
        <th>x${i+1}</th>
        </#list>
    </tr>

    <#list 0..x as i>
    <tr>
    <#if i == 3>
    <th>fnd</th>
    <#else>
    <th>x${i+1}</th>
    </#if>
        <#list 0..y as j>
        <td>${tbl[i][j]}</td>
        </#list>
    </tr>
    </#list>
</table>
</#list>
</body>
</html>
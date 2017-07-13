<cffile action = "read"  
    file = "C:/JSON/Oferentes.json"  
    variable = "Message"
    charset = "UTF-8"
>
<cfoutput>#Message#</cfoutput>


<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/themes/redmond/jquery-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/css/ui.jqgrid.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/jquery.jqgrid.min.js"></script>
    <script>
    //<![CDATA[
    $(function () {
        "use strict";
        $("#grid1").jqGrid({
            colModel: [
                { name: "Id", label: "Cedula", width: 120, align: "center" },
                { name: "Nombre", label: "Nombre", width: 150, align: "center"},
                { name: "Apellido", label: "Apellido", width: 150, align: "center"},
                { name: "Direccion", label: "Dirección", width: 150, align: "center"},
                { name: "Correo", label: "Correo", width: 150, align: "center"},
                { name: "Profesion", label: "Profesión", width: 150, align: "center"},
                { name: "Puesto_solicitante", label: "Puesto Solicitado", width: 150, align: "center"},
                { name: "Salario_base", label: "Salario Base", width: 150, align: "center"},
                { name: "Ultimo_trabajo", label: "Ultimo Trabajo", width: 150, align: "center"},
            ],
            data: <cfoutput>#Message#</cfoutput>,

            iconSet: "fontAwesome",
            idPrefix: "g1_",
            rownumbers: true,
            sortname: "invdate",
            sortorder: "desc",
            caption: "The grid, which uses predefined formatters and templates"
        });
    });
    //]]>
    </script>
</head>
<body>
<table id="grid1"></table>
</body>
</html>




<cffile action = "read" file = "C:/JSON/Oferentes.json" variable = "Message" charset = "UTF-8">

<html>
<head>
    <meta charset="UTF-8">
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
        var mydata = "",
            
        $grid = $("#grid");
        $grid.jqGrid({
            data: <cfoutput> #Message# </cfoutput>,
            colModel: [

                { name: "Id", label: "Cedula", width: 120, align: "center", editable: true },
                { name: "Nombre", label: "Nombre", width: 150, align: "center", editable: true},
                { name: "Apellido", label: "Apellido", width: 150, align: "center", editable: true},
                { name: "Direccion", label: "Dirección", width: 150, align: "center", editable: true, charset: true},
                { name: "Correo", label: "Correo", width: 150, align: "center", editable: true},
                { name: "Profesion", label: "Profesión", width: 150, align: "center", editable: true},
                { name: "Puesto_solicitante", label: "Puesto Solicitado", width: 150, align: "center", editable: true},
                { name: "Salario_base", label: "Salario Base", width: 150, align: "center", editable: true},
                { name: "Ultimo_trabajo", label: "Ultimo Trabajo", width: 150, align: "center", editable: true},
            ],
            pager: true,
            iconSet: "fontAwesome",
            autoencode: true,
            viewrecords: true,
            rowNum: 10,
            altRows: true,
            altclass: "myAltRowClass",
            rowList: [5, 10, 20, "10000:All" ],
            caption: "ColdFusion - JQGRiD - JSON",
            navOptions: {
                del: true,
                <cffile action = "write" file = "C:/JSON/Oferentes.json" output = #Message# charset = "UTF-8">
            },
            searching: {
                closeAfterSearch: true,
                closeAfterReset: true,
                closeOnEscape: true,
                searchOnEnter: true,
                multipleSearch: true,            
            },
            edit :{
                saveData: "Data has been changed! Save changes?",
                bYes : "Yes",
                bNo : "No",
            }
        }).jqGrid("navGrid");
    });
    //]]>
    </script>
</head>
<body>
<table id="grid"></table>
</body>
</html>




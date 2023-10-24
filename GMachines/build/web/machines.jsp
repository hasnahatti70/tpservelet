<%-- 
    Document   : machines
    Created on : 24 oct. 2023, 18:51:56
    Author     : hasna
--%>

<%@page import="entities.Machine"%>
<%@page import="service.MachineService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <a href="index.html"></a>
    <body>
        <form action ="MachineController" method="GET">
            <fieldset>
                <legend>Informations machine </legend>
                <table border="0">
                    
                        <tr>
                            <td> Ref :</td>
                            <td><input type="text" name="ref" value="" /></td>
                        </tr>
                        <tr>
                            <td>Marque :</td>
                            <td><input type="text" name="marque" value="" /></td>
                        </tr>
                        <tr>
                            <td> Prix :</td>
                            <td><input type="text" name="prix" value="" /></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="AJOUTER" /><input type="reset" value="Annuler" /></td>
                        </tr>
                    </tbody>
                </table>

             </fieldset>

        </form>
    </body>
</html>
<html>
    <body>
        <fieldset>
            <legend> List des machines <table border="1">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Référence</th>
                            <th>Marque</th>
                            <th>Prix</th>
                           
                              <th>Modifier</th>
                               <th>Supprimer</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            MachineService ms = new MachineService();
                            for (Machine m : ms.findAll()){
                            %>
                        <tr>
                            <td> <%=m.getId()%></td>
                            <td><%=m.getRef()%></td>
                            <td><%=m.getMarque()%></td>
                            <td><%=m.getMarque()%></td>
                            <td><%=m.getPrix()%></td>
                            <td><a href="MachineController?op=delete&id"<%=m.getId()%>>Supprimer</a></td>
                            <td><a href="MachineController">Moddifier</a> </td>
                        </tr>
                        <%}%>
                     
                    </tbody>
                </table>
            </legend>
            </fieldset>
    </body>
</html>

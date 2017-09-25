<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Fixed navbar -->
        <div class="container">
            <div class="row float-right tabla1">
                <button class="btn btn-success"><span class="fa fa-print"></span> Imprimir</button>
            </div>
            <div class="row tabla2">
                <h3>Factura Cliente - Cliente 1</h3>
                <table id="tabla" class="table table-stripped table-hover table-striped">
                    <thead class="thead-inverse">
                        <tr>
                            <th>Pedido</th>
                            <th>Caja</th>
                            <th>Clinica</th>
                            <th>Sede</th>
                            <th>Paciente</th>
                            <th>Orden</th>
                            <th>antagonista</th>
                            <th>Entrada</th>
                            <th>Odontólogo</th>
                            <th>Trabajo</th>
                            <th>Entrega</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>12</td>
                            <td>A8</td>
                            <td>Sonria</td>
                            <td>Sede Centro</td>
                            <td>Juan Ochoa</td>
                            <td>2597</td>
                            <td>Si</td>
                            <td>2017-04-18</td>
                            <td>Polette Díaz</td>
                            <td>Corona</td>
                            <td>2017-04-30</td>
                        </tr>
                        <tr>
                            <td>13</td>
                            <td>A9</td>
                            <td>Sonria</td>
                            <td>Sede Centro</td>
                            <td>Jose Ochoa</td>
                            <td>2598</td>
                            <td>Si</td>
                            <td>2017-04-18</td>
                            <td>Polette Díaz</td>
                            <td>Corona</td>
                            <td>2017-04-30</td>
                        </tr>
                        <tr>
                            <td>14</td>
                            <td>B1</td>
                            <td>Sonria</td>
                            <td>Sede Centro</td>
                            <td>Carmen Ochoa</td>
                            <td>2599</td>
                            <td>Si</td>
                            <td>2017-04-18</td>
                            <td>Polette Díaz</td>
                            <td>Corona</td>
                            <td>2017-04-30</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- Footer -->
        <%@include file="unitedFooter.jsp" %>
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="Assets/js/jquery.min.js"></script>
        <script src="Assets/js/tether.min.js"></script>
        <script src="Assets/js/bootstrap.min.js"></script>
    </body>
</html>
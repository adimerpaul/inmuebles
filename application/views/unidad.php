<section class="content-header">
    <h1>
        Folios por unidad
        <small>control</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href=""><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="">Sistema</a></li>
        <!--        <li class="active">Data tables</li>-->
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Folios por unidad</h3>
                    <div class="modal fade" id="historial">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">Historial de folio</h4>
                                </div>
                                <div class="modal-body">
                                    <form class="form-horizontal">
                                        <div class="box-body">
                                            <div class="form-group">
                                                <label for="numero2" class="col-sm-2 control-label">Tramite</label>
                                                <div class="col-sm-10">
                                                    <!--                                                    <input type="text" class="form-control" id="numero2" name="numero" placeholder="Numero" required>-->
                                                    <div id="tramite"></div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <table class="table table-hover">
                                                    <thead>
                                                    <tr>
                                                        <th>Fecha</th>
                                                        <th>Nombre</th>
                                                        <th>Lugar</th>
                                                        <th>personal</th>
                                                        <th>Estado</th>
                                                        <th>Detalle</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="contenido">

                                                    </tbody>
                                                </table>
<!--                                                <form class="form-horizontal" id="historia">-->
<!--                                                    <div class="box-body">-->
<!--                                                        <div class="form-group">-->
<!--                                                            <label for="lugar" class="col-sm-1 control-label">Lugar</label>-->
<!--                                                            <div class="col-sm-2">-->
<!--                                                                <select name="lugar" id="lugar" class="form-control" required>-->
<!--                                                                    <option value="">Selecionar....</option>-->
<!--                                                                    <option value="VENTANILLA UNICA">VENTANILLA UNICA</option>-->
<!--                                                                    <option value="VEHICULOS">VEHICULOS</option>-->
<!--                                                                    <option value="INMUEBLES">INMUEBLES</option>-->
<!--                                                                    <option value="INDUSTRI COMERCIO">INDUSTRI COMERCIO</option>-->
<!--                                                                    <option value="ESPEC. PUBLICOS">ESPEC. PUBLICOS</option>-->
<!--                                                                </select>-->
<!--                                                            </div>-->
<!--                                                            <label for="personal" class="col-sm-1 control-label">Personal</label>-->
<!--                                                            <div class="col-sm-2">-->
<!--                                                                <select name="personal" id="personal" class="form-control" required>-->
<!--                                                                    <option value="">Selecionar....</option>-->
<!--                                                                    --><?php
//                                                                    $query=$this->db->query("SELECT * FROM users WHERE tipo='RECEPCIONISTA'");
//                                                                    foreach ($query->result() as $row){
//                                                                        echo "<option value='$row->nombrecompleto'>$row->nombrecompleto</option>";
//                                                                    }
//                                                                    ?>
<!--                                                                </select>-->
<!--                                                            </div>-->
<!--                                                            <label for="estado" class="col-sm-1 control-label">Estado</label>-->
<!--                                                            <div class="col-sm-2">-->
<!--                                                                <select name="estado" id="estado" class="form-control" required>-->
<!--                                                                    <option value="">Selecionar....</option>-->
<!--                                                                    <option value="ENTREAGDO">ENTREGADO</option>-->
<!--                                                                    <option value="DESPACHADO">DESPACHADO</option>-->
<!--                                                                </select>-->
<!--                                                            </div>-->
<!--                                                            <label for="Lugar" class="col-sm-1 control-label">Detalle</label>-->
<!--                                                            <div class="col-sm-2">-->
<!--                                                                <textarea name="detalle" id="detalle" class="form-control"></textarea>-->
<!--                                                            </div>-->
<!--                                                        </div>-->
<!--                                                    </div>-->
<!--                                                    <div class="modal-footer">-->
<!--                                                        <button type="button" class="btn btn-info pull-left" data-dismiss="modal"> <i class="fa fa-eye"></i>Ocultar</button>-->
<!--                                                       <button type="submit" class="btn btn-warning"><i class="fa fa-check"></i>Agregar</button>-->
<!--                                                    </div>-->
<!--                                                </form>-->
                                            </div>
                                        </div>
                                        <!-- /.box-body -->

                                        <!-- /.box-footer -->
                                    </form>
                                </div>

                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <script >
                        var id;
                        function datosfun(id) {
                            $('#contenido').html('');
                            $.ajax({
                                url:window.location.href+'../../../Admin/historia/'+id,
                                success:function (e) {
                                    let dat=JSON.parse(e);
                                    // console.log(dat);
                                    dat.forEach(res=>{
                                        $('#contenido').append("<tr>" +
                                            "<td>"+res.fecha+"</td>" +
                                            "<td>"+res.nombre+"</td>" +
                                            "<td>"+res.lugar+"</td>" +
                                            "<td>"+res.personal+"</td>" +
                                            "<td><span class='label label-success'>"+res.estado+"</span></td>" +
                                            "<td>"+res.detalle+"</td>" +
                                            "</tr>");
                                    })
                                }
                            })
                        }
                        function historial(ide) {
                            var URLactual = window.location;
                            // alert(URLactual);
                            // console.log(window.location)
                            id=ide;
                            // console.log(id);
                            $.ajax({
                                url: window.location.href+'../../../Admin/datos/'+id,
                                success:function (e) {
                                    // console.log(e);
                                    let dat=JSON.parse(e);
                                    $('#tramite').html(e);
                                    datosfun(id);
                                }
                            })
                        }
                    </script>
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>Numero</th>
                            <th>Asunto</th>
                            <th>Nombre</th>
                            <th>Unidad</th>
                            <th>Opciones</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        //"SELECT * FROM tramite WHERE idusuario='".$_SESSION['iduser']."'"
                        $query=$this->db->query("SELECT * FROM tramite t 
INNER JOIN historia h ON t.idtramite=h.idtramite WHERE h.lugar='".$_SESSION['unidad']."'  ");
                        foreach ($query->result() as $row){
                            echo "<tr>
                                        <td>$row->numero</td>
                                        <td>$row->asunto</td>
                                        <td>$row->nombre</td>
                                        <td>$row->lugar</td>
                                        <td>
                                            <button type='button' class='btn btn-warning' onclick='historial($row->idtramite)' style='padding: 1px' data-toggle='modal' data-target='#historial'>
                                                <i class='fa fa-history'></i> Historial del tramite
                                            </button>
                                        </td>
                                    </tr>";
                        }
                        ?>

                        </tbody>
                        <tfoot>
                        <tr>
                            <th>Numero</th>
                            <th>Asunto</th>
                            <th>Nombre</th>
                            <th>Estado</th>
                            <th>Opciones</th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<script >
    window.onload=function () {
        $('#historial').submit(function (e) {
            // console.log(id);
            let datos={
                idtramite:id,
                estado:$('#estado').val(),
                lugar:$('#lugar').val(),
                detalle:$('#detalle').val(),
                personal:$('#personal').val(),
            }
            // console.log(datos);
            $.ajax({
                url:'Admin/hitoriainsert',
                data:datos,
                type:'POST',
                success:function (e) {
                    console.log(e);
                    if (e=="1"){
                        datosfun(id);
                    }
                }
            })
            return false;
        });
    }
</script>

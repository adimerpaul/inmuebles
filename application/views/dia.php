<section class="content-header">
    <h1>
        Numeros Folios
        <small>por dia</small>
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
                    <form class="form-inline" method="post">
                        <div class="form-group">
                            <label for="exampleInputName2">Dia</label>
                            <input type="date" class="form-control" id="dia" value="<?=$dia?>">
                        </div>
                        <button type="button"
                                onclick="window.location.href ='<?=base_url()?>/Inmuebles/dia/'+document.getElementById('dia').value;"
                                class="btn btn-success" >
                            <i class="fa fa-plus"></i> Verificar
                        </button>
                    </form>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <script >
                        var id;
                        function eliminar(e) {
                            if (!confirm('Seguro de quere terminar el proceso')){
                                e.preventDefault();
                            }
                        }
                        function datosfun(id) {
                            $('#contenido').html('');
                            $.ajax({
                                url:'Inmuebles/historia/'+id,
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
                            id=ide;
                            // console.log(id);
                            $.ajax({
                                url:'Inmuebles/datos/'+id,
                                success:function (e) {
                                    // console.log(e);
                                    let dat=JSON.parse(e);
                                    $('#tramite').html(e);
                                    datosfun(id);
                                }
                            })
                        }
                    </script>
                    <div class="table-responsive">
                        <table id="in" class="table table-bordered table-striped">
                            <thead>
                            <tr>

                                <th>Num</th>
                                <th>Nombre</th>
                                <th>CI</th>
                                <th>Form 27</th>
                                <th>Numtramite</th>
                                <th>Numtecnica</th>
                                <th>Direccion</th>
                                <th>Tramite</th>
                                <th>Fecha</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            //"SELECT * FROM tramite WHERE idusuario='".$_SESSION['iduser']."'"
                            $query=$this->db->query("SELECT * FROM inmuebles WHERE date(fecha)=date('$dia')");
                            foreach ($query->result() as $row){
                                echo "<tr>
                                        
                                        <td>$row->numero</td>
                                        <td>$row->nombre</td>
                                        <td>$row->ci</td>
                                        <td>$row->num27</td>
                                        <td>$row->numtramite</td>
                                        <td>$row->numtecnica</td>
                                        <td>$row->direccion</td>
                                        <td>$row->tramite</td>
                                        <td>$row->fecha</td>
                                    </tr>";
                            }
                            ?>

                            </tbody>
                            <!--                        <tfoot>-->
                            <!--                        <tr>-->
                            <!--                            <th>Numero</th>-->
                            <!--                            <th>Asunto</th>-->
                            <!--                            <th>Nombre</th>-->
                            <!--                            <th>Estado</th>-->
                            <!--                            <th>Opciones</th>-->
                            <!--                        </tr>-->
                            <!--                        </tfoot>-->
                        </table>
                    </div>
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
                url:'Inmuebles/hitoriainsert',
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

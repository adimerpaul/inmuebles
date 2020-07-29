<section class="content-header">
    <h1>
        Cuenta personal
        <small> de usuario</small>
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
        <div class="col-md-1">

        </div>
        <div class="col-md-10">
            <!-- Profile Image -->
            <div class="box box-primary">
                <form action="<?=base_url()?>Profile/unidad" method="post">
                <div class="box-body box-profile">
                    <img class="profile-user-img img-responsive img-circle" src="<?=base_url()?>dist/img/user2-160x160.jpg" alt="User profile picture">

                    <h3 class="profile-username text-center"><?=$_SESSION['nombrecompleto']?></h3>

                    <p class="text-muted text-center">Funcionario</p>

                    <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                            <b>Cambiar unidad</b>
<!--                            <a class="pull-right">1,322</a>-->
                            <select class="form-control" placeholder="Unidad"  required name="unidad">
                                <option value="">Seleccionar unidad </option>
                                <option value="VENTANILLA UNICA" <?=$_SESSION['unidad'] == 'VENTANILLA UNICA' ? 'selected' : '';?>>VENTANILLA UNICA</option>
                                <option value="VEHICULOS" <?=$_SESSION['unidad'] == 'VEHICULOS' ? 'selected' : '';?>>VEHICULOS</option>
                                <option value="INMUEBLES" <?=$_SESSION['unidad'] == 'INMUEBLES' ? 'selected' : '';?>>INMUEBLES</option>
                                <option value="INDUSTRI COMERCIO" <?=$_SESSION['unidad'] == 'INDUSTRI COMERCIO' ? 'selected' : '';?>>INDUSTRI COMERCIO</option>
                                <option value="ESPEC. PUBLICOS" <?=$_SESSION['unidad'] == 'ESPEC. PUBLICOS' ? 'selected' : '';?>>ESPEC. PUBLICOS</option>
                            </select>
                        </li>
<!--                        <li class="list-group-item">-->
<!--                            <b>Following</b> <a class="pull-right">543</a>-->
<!--                        </li>-->
<!--                        <li class="list-group-item">-->
<!--                            <b>Friends</b> <a class="pull-right">13,287</a>-->
<!--                        </li>-->
                    </ul>
                    <button class="btn btn-primary btn-block"><b>Guardar cambios</b></button>
                </form>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

            <!-- About Me Box -->
<!--            <div class="box box-primary">-->
<!--                <div class="box-header with-border">-->
<!--                    <h3 class="box-title">About Me</h3>-->
<!--                </div>-->
<!--                <div class="box-body">-->
<!--                    <strong><i class="fa fa-book margin-r-5"></i> Education</strong>-->
<!---->
<!--                    <p class="text-muted">-->
<!--                        B.S. in Computer Science from the University of Tennessee at Knoxville-->
<!--                    </p>-->
<!---->
<!--                    <hr>-->
<!---->
<!--                    <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>-->
<!---->
<!--                    <p class="text-muted">Malibu, California</p>-->
<!---->
<!--                    <hr>-->
<!---->
<!--                    <strong><i class="fa fa-pencil margin-r-5"></i> Skills</strong>-->
<!---->
<!--                    <p>-->
<!--                        <span class="label label-danger">UI Design</span>-->
<!--                        <span class="label label-success">Coding</span>-->
<!--                        <span class="label label-info">Javascript</span>-->
<!--                        <span class="label label-warning">PHP</span>-->
<!--                        <span class="label label-primary">Node.js</span>-->
<!--                    </p>-->
<!---->
<!--                    <hr>-->
<!---->
<!--                    <strong><i class="fa fa-file-text-o margin-r-5"></i> Notes</strong>-->
<!---->
<!--                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>-->
<!--                </div>-->
<!--            </div>-->
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<script >
    window.onload=function () {

    }
</script>

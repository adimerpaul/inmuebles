<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inmuebles extends CI_Controller {
    public function index()
    {
        if (!isset($_SESSION['nombre'])){
            header('Location: '.base_url());
        }
        $this->load->view('templates/header');
        $this->load->view('inmuebles');
        $this->load->view('templates/footer');
    }
    public function dia($dia)
    {
        if (!isset($_SESSION['nombre'])){
            header('Location: '.base_url());
        }
        $this->load->view('templates/header');
        $datos['dia']=$dia;
        $this->load->view('dia',$datos);
        $this->load->view('templates/footer');
    }
    public function terminado($id){
        if (!isset($_SESSION['iduser'])){
            header('Location: '.base_url());
            exit;
        }
        $this->db->query("UPDATE inmuebles SET estado='TERMINADO' WHERE idinmueble=$id");
        header('Location: '.base_url().'Inmuebles');
    }
    public function insert()
    {
        if (!isset($_SESSION['iduser'])){
            header('Location: '.base_url());
            exit;
        }
//        echo !isset( $_SESSION['iduser']);
//        exit;
        $nombre= strtoupper( $_POST['nombre']);
        $ci=$_POST['ci'];
        $num27=$_POST['num27'];
        $numtecnica=$_POST['numtecnica'];
        $numtramite=$_POST['numtramite'];
        $numero=$_POST['numero'];
        $tramite=$_POST['tramite'];
        $direccion=$_POST['direccion'];
        $idusuario=$_SESSION['iduser'];
        $this->db->query("INSERT INTO inmuebles SET 
nombre='$nombre',
numero='$numero',
ci='$ci',
num27='$num27',
numtecnica='$numtecnica',
numtramite='$numtramite',
direccion='$direccion',
tramite='$tramite',
iduser=$idusuario
");
        header('Location: '.base_url().'Inmuebles');
    }
    public function datos($id){
        $query=$this->db->query("SELECT * FROM inmuebles WHERE idinmueble='$id'");
        echo json_encode($query->result_array());
    }
    public function historia($id){
        $query=$this->db->query("SELECT * FROM inmuebles i 
INNER JOIN historiain h ON i.idinmueble=h.idinmueble 
WHERE i.idinmueble=$id");
        echo json_encode($query->result_array());
    }
    public function hitoriainsert(){
        $idtramite=$_POST['idtramite'];
        $estado=$_POST['estado'];
        $lugar=$_POST['lugar'];
        $iduser=$_SESSION['iduser'];
        $detalle=$_POST['detalle'];
        $personal=$_POST['personal'];
        $this->db->query("INSERT INTO historiain SET 
idinmueble='$idtramite',
estado='$estado',
lugar='$lugar',
iduser='$iduser',
detalle='$detalle',
personal='$personal'
");
        echo 1;
//        echo 1;
    }
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller
{
    public function index()
    {
        if (!isset($_SESSION['nombre'])) {
            header('Location: ' . base_url());
        }
        $this->load->view('templates/header');
        $this->load->view('profile');
        $this->load->view('templates/footer');
    }
    public function unidad(){
        $unidad=$_POST['unidad'];
        $idusuario=$_SESSION['iduser'];
        $this->db->query("UPDATE  users SET 
unidad='$unidad'
WHERE iduser='$idusuario'
");
        $_SESSION['unidad']=$_POST['unidad'];
        header('Location: '.base_url().'Profile');
    }
}

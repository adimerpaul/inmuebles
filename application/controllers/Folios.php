<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Folios extends CI_Controller
{
    public function unidad()
    {
        if (!isset($_SESSION['nombre'])) {
            header('Location: ' . base_url());
        }
        $this->load->view('templates/header');
        $this->load->view('unidad');
        $this->load->view('templates/footer');
    }
    public function cuenta()
    {
        if (!isset($_SESSION['nombre'])) {
            header('Location: ' . base_url());
        }
        $this->load->view('templates/header');
        $this->load->view('cuenta');
        $this->load->view('templates/footer');
    }
    public function unidad2(){
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

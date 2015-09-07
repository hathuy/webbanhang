<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of connection
 *
 * @author HaThuy
 */
class connection extends CI_Controller{
public function __construct() {
    parent::__construct();
}
public function connect(){
    $this->load->database();
    $query=$this->db->query("select * from car order by id_car");
    $data=$query->result_array();
    echo "<pre>";
    print_r($data);
    echo "</pre>";
}
    //put your code here
}

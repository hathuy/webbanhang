<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of hello
 *
 * @author HaThuy
 */
class hello extends CI_Controller{
    //put your code here
    public function _construct(){
        parent::_construct();
    }
    public function index(){
        echo "<h3>Hello CodeIgniter Framework - QHOnline.Info</h3>";
    }
    public function hocphp(){
        echo "<h3>Hoc PHP Tai QHOnline.Info</h3>";
    }   
}


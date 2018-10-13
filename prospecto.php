<?php

class Prospecto{
	public $nombre;
	public $ape_pat;
	public $ape_mat;
	public $cel;
	public $correo;
	public $ruta_doc;

	public function __construct($nombre){
		$this->nombre = $nombre;
	}

	public function getNombre(){
		return this->nombre;
	}

	public function getApePat(){
		return this->ape_pat;
	}
	public function getApeMat(){
		return this->ape_mat;
	}
	public function getCel(){
		return this->cel;
	}
	public function getCorreo(){
		return this->correo;
	}
	public function getRutaDoc(){
		return this->ruta_doc;
	}
}

?>
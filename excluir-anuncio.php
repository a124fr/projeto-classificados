<?php
require 'config.php';
require 'classes/Anuncios.php';

if(empty($_SESSION['cLogin']))
{
	header("Location: login.php");
	exit;
}	

$a = new Anuncios();
if(isset($_GET['id']) && !empty($_GET['id']))
{
	$a->excluirAnuncio($_GET['id']);
}

header("Location: meus-anuncios.php");
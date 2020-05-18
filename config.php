<?php
session_start();
global $pdo;
try
{
	$pdo = new PDO('mysql:dbname=projeto_classificados;host=localhost;port=3304', 'root', '');
}
catch(PDOException $e)
{
	echo "FALHOU: ".$e->getMessage();
}
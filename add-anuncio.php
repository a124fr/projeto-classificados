<?php 
require 'pages/header.php'; 
require 'classes/Categorias.php';
require 'classes/Anuncios.php';
?>
<?php
	if(empty($_SESSION['cLogin']))
	{
?>
	<script type="text/javascript">window.location.href="login.php";</script>
<?php
		exit;
	}


$a = new Anuncios();
if(isset($_POST['titulo']) && !empty($_POST['titulo']))
{
	$titulo = addslashes($_POST['titulo']);
	$categoria = addslashes($_POST['categoria']);
	$valor  = addslashes($_POST['valor']);
	$descricao = addslashes($_POST['descricao']);
	$estado = addslashes($_POST['estado']);

	$a->addAnuncio($titulo, $categoria, $valor, $descricao, $estado);
?>
	<div class="alert alert-success">
		Produto adicionado com sucesso!	
	</div>
<?php	
}
?>

<div class="container">
	<h1>Meus Anúncios - Adcionar Anúncio</h1>
	<form method="POST" enctype="multipart/form-data">
		<div class="form-group">
			<label for="categoria">Categoria:</label>
			<select name="categoria" id="categoria" class="form-control">
				<option value=""></option>
				<?php
					$c = new Categorias();
					$cats = $c->getLista();
					foreach($cats as $cat):
				?>
					<option value="<?php echo $cat['id'];?>"><?php echo $cat['nome'];?></option>
				<?php
					endforeach;
				?>
				
			</select>
		</div>
		<div class="form-group">
			<label for="titulo">Título:</label>
			<input type="text" name="titulo" id="titulo" class="form-control" />
		</div>
		<div class="form-group">
			<label for="valor">Valor:</label>
			<input type="text" name="valor" id="valor" class="form-control" />
		</div>

		<div class="form-group">
			<label for="descricao">Descrição:</label>
			<textarea class="form-control" name="descricao" id="descricao"></textarea>
		</div>

		<div class="form-group">
			<label for="estado">Estado de Convervação:</label>
			<select name="estado" id="estado" class="form-control">
				<option value="0">Ruim</option>
				<option value="1">Bom</option>
				<option value="2">Ótimo</option>
			</select>
		</div>

		<input type="submit" value="Adicionar" class="btn btn-default" />
	</form>
</div>


<?php require 'pages/footer.php'; ?>
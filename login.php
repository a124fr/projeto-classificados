<?php 
require 'pages/header.php'; 
require 'classes/Usuarios.php';
$u = new Usuarios();
?>
<div class="container">
	<h1>Login</h1>
	<?php		
		if(isset($_POST['email']) && !empty($_POST['email']))
		{			
			$email = addslashes($_POST['email']);
			$senha = $_POST['senha'];

			if($u->login($email, $senha))
			{
				?>
				<script type="text/javascript">window.location.href="./"</script>
				<?php
			}
			else 
			{
				?>
				<div class="alert alert-danger">
					Usuários e/ou Senha errados!
				</div>
				<?php
			}
		}
?>
	<form method="POST">		
		<div class="form-group">
			<label for="email">E-mail: </label>
			<input type="text" name="email" id="email" class="form-control" />
		</div>
		<div class="form-group">
			<label for="senha">Senha: </label>
			<input type="password" name="senha" id="senha" class="form-control" />
		</div>

		<input type="submit" value="Fazer login" class="btn btn-default" />
	</form>
</div>
<?php require 'pages/footer.php'; ?>


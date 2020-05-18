<?php
 
// Opções salvas no banco de dados
$options = ['mesa'];
 
?>
 
<!DOCTYPE html>
<html>
<head>
    <title>FORM</title>
</head>
<body>
    <form method="POST">
        <label>Mesa</label>
        <input type="checkbox" name="categorias[]" value="mesa" <?php echo (in_array('mesa', $options)) ? 'checked' :''?> ><br>
        <label>Banho</label>
        <input type="checkbox" name="categorias[]" value="banho" <?php echo (in_array('banho', $options)) ? 'checked' :''?>><br>
        <input type="submit" value="Salvar">       
    </form>
</body>
</html>
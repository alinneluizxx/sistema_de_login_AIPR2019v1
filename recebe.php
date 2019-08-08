<?php 
#Backend

echo "<pre>\n";
print_r($_GET);
echo "</pre>\n";

echo "<h1>Nome: $_GET[usuario]</h1>";
echo "<h2>Senha: $_GET[senha]</h2>";
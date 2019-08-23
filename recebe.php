<?php 

//É necessário fazer a conexão com o Banco de Dados
require_once"configDB.php";

function verificar_entrada($entrada){
    $saida = trim($entrada); //Remove espaços antes e depois
    $saida = stripslashes($saida); //Remove as barras
    $saida = htmlspecialchars($saida);
    return $saida;
}

if(isset($_POST['action']) && $_POST['action'] == 'cadastro'){
    $nomeCompleto = verificar_entrada($_POST['nomeCompleto']);
    $nomeUsuário = verificar_entrada($_POST['nomeUsuário']);
    $emailUsuário = verificar_entrada($_POST['emailUsuário']);
    $senhaUsuário = verificar_entrada($_POST['senhaUsuário']);
    $senhaConfirma = verificar_entrada ($_POST['senhaConfirma']);
    $concordar = $_POST['concordar'];
    $dataCriacao = date("Y-m-d H:i:s");

    echo "<h5>Nome completo: $nomeCompleto</h5>";
    echo "<h5>Nome Usuário: $nomeUsuário</h5>";
    echo "<h5>E-mail Usuário: $emailUsuário</h5>";
    echo "<h5>Senha Usuário: $senhaUsuário</h5>";
    echo "<h5>Senha Confirma: $senhaConfirma</h5>";
    echo "<h5>Concordar: $concordar</h5>";
    echo "<h5>Data de Criação: $dataCriacao</h5>";

    //Hash de senha / Codificação de senha em 40 caracteres
    $senha = sha1($senhaUsuário);
    $senhaC = sha1($senhaConfirma);

    if($senha != $senhaC){
        echo "<h1>As senhas não conferem</h1>";
        exit();
    }else{
        echo "<h5> senha codificada : $senha</h5>";
    }

}else{
    echo "<h1 style='color:red'>Esta página não pode ser acessada diretamente</h1>";
}
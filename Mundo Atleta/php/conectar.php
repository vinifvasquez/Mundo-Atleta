<?php
    //Conectando com o banco de dados
    $conexao = mysqli_connect ("localhost","root","");

    if(mysqli_connect_errno())
    {
        echo "falha ao conectar: ". mysqli_connect_error(); die();
    }

    mysqli_select_db($conexao,"Mundo_Atleta");
?>
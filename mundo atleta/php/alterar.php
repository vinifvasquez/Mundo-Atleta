<?php   
    //Importando o banco
    require("conectar.php");

    //Obtendo os valores do formulário
    $email = $_POST['email_cl'];
    $senha = $_POST['senha_cl'];
    $apelido = $_POST['apelido_cl'];
    $novo_apelido = $_POST['novo_apelido'];
    
    //Verificando se existe a conta
    $sql_pesquisa_cl = "SELECT * FROM `cliente` WHERE `email` = '$email' AND `senha` = '$senha' AND `apelido` = '$apelido'";

    //Executando a pesquisa de valores 
    $resultado_pesquisa = mysqli_query($conexao,$sql_pesquisa_cl);

    //Obtendo o numero de linhas retornadas na pesquisa
    $numero_resultado = mysqli_num_rows($resultado_pesquisa);

    //Caso não haja a conta
    if($numero_resultado == 0)
    {
        ?>
            <script>
                alert("Informações inválidas.");
                javascript:history.back();
            </script>
        <?php
    }
    else
    {
        //Criando a SQL de alteração de dados
        $sql_alterar_cl = "UPDATE `cliente` SET `apelido` = '$novo_apelido' WHERE `apelido` = '$apelido'";

        //Executando a SQL
        mysqli_query($conexao, $sql_alterar_cl);
        ?>
            <script>
                alert("Apelido alterado.");
                window.location.replace("index.html");
            </script>
        <?php
    }
?>
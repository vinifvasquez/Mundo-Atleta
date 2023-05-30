<?php   
    //Importando o banco
    require("conectar.php");

    //Obtendo os valores do formulário
    $email = $_POST['email_cl'];
    $senha = $_POST['senha_cl'];
    
    //Verificando se existe a conta
    $sql_pesquisa_cl = "SELECT * FROM `cliente`";

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
        //Criando a SQL de exclusão de conta
        $sql_excluir_cl = "DELETE FROM `cliente` WHERE `email` = '$email' AND `senha` = '$senha'";

        //Executando a SQL
        mysqli_query($conexao, $sql_excluir_cl);
        ?>
            <script>
                alert("Conta excluida.");
                window.location.replace("index.html");
            </script>
        <?php
            //Removendo os valores da sessão
            session_unset();

            //Encerrando a sessão
            session_destroy();
    }
?>
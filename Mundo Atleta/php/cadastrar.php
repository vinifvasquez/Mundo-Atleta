<?php
    //Conectando com o banco
    require("conectar.php");

    //Obtendo os valores do formulário
    $nome_cl = $_POST["nome_cl"];
    $apelido_cl = $_POST["Lapelido_cl"];
    $email_cl = $_POST["email_cl"];
    $senha_cl = $_POST["senha_cl"];  
    
    //Gerando a SQL de PESQUISA 
    $pesquisar_cl = "SELECT * FROM `cliente` WHERE email = '$email_cl'";

    //Executando a SQL
    $resultado_cl = mysqli_query($conexao, $pesquisar_cl);

    //Retornando o número de linhas encontradas
    $numero_retorno = mysqli_num_rows($resultado_cl);
    
    //Verificando se existe algum retorno    
    if($numero_retorno == 0)
    {
        //Gerando a SQL de inserção(Cadastrar)
        $sql_cadastrar_cl = "INSERT INTO `cliente`(`nome`,`apelido`,`email`,`senha`) VALUES ('$nome_cl',
        '$apelido_cl','$email_cl','$senha_cl')";

        //Executando a SQL
        mysqli_query($conexao, $sql_cadastrar_cl);
        
        //Imprimindo na tela
        ?>
            <script>
                alert("Conta cadastrada.");
                    javascript:history.back();
            </script>
        <?php
    }else{
        ?>
            <script>
                alert("Erro: Usuário já existente.");
                javascript:history.back();
            </script>
        <?php
    }
?>
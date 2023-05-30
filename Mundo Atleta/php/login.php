<?php
    //Conectando com o banco
    require("conectar.php");

    //Obtendo os valores do formulário
    $Lapelido_cl = $_POST["Lapelido_cl"];
    $Lsenha_cl = $_POST["Lsenha_cl"];  
    
    //Gerando a SQL de PESQUISA 
    $pesquisar_cl = "SELECT * FROM `cliente` WHERE apelido = '$Lapelido_cl' AND senha = '$Lsenha_cl'";

    //Executando a SQL
    $resultado_cl = mysqli_query($conexao, $pesquisar_cl);

    //Retornando o número de linhas encontradas
    $numero_retorno = mysqli_num_rows($resultado_cl);
    
    //Verificando se existe algum retorno    
    if($numero_retorno == 0)
    {
        ?>
            <script>
                alert("Erro: Informações inválidas.");
                javascript:history.back();
            </script>
        <?php
    }else{
        //Inicia ou mantém a sessão  
        session_start();
        //Armazenando valores da sessão
        $_SESSION['usuario'] = $Lapelido_cl;
        ?>
            <script>
                window.location.replace("index.html");
            </script>
        <?php
    }
?>
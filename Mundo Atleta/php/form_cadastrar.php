<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../perfil/style.css" />
    <title>Cadastrar</title>
</head>
<body>
    <form action="cadastrar.php" method="post">
    <div class="login">
        <!--Formulário para cadastrar novo usuário-->
        <h2>Cadastre-se</h2>
        
       
        <div class="box-user">
        <input type="text" name="Lapelido_cl" required>
            <label>Usuário</label>
        </div>
        <div class="box-user">
        <input type="text" name="nome_cl" required>
            <label>nome</label>
        </div>
        <div class="box-user">
        <input type="email" name="email_cl" required>
            <label>email</label>
        </div>
        <div class="box-user">
        <input type="password" name="senha_cl" id="Lsenha_cl" required>
            <label>senha</label>
        </div>

        <div>
            <a href="../index.html" class="forget"> Menu</a></br>
        </div>
       
        <div>
            <a href="form_login.php" class="forget">login</a></br>
        </div>

        <!--Alternar visibilidade da senha-->
        <script>
            function VerSenha() {
                var x = document.getElementById("senha_cl");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }
            javascript.history.back()
        </script>
        
        <button class="btn" type="submit">Criar Conta
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </button></p>    
        </div>
    </form>
</body>
</html>
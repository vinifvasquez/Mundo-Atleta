<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../perfil/style.css" />
    <title>Alterar </title>
</head>
<body>
    
    <form action="alterar.php" method="post">
    <div class="login">
    <h2>Alterar apelido</h2>
        <!--Formulário para alterar o apelido-->
        <div class="box-user">
        <input type="email" name="email_cl"  required>
            <label>email</label>
        </div>
        <div class="box-user">
        <input type="password" name="Lsenha_cl" id="Lsenha_cl" required>
            <label>Senha</label>
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
        <div class="box-user">
        <input type="text" name="apelido_cl"  required>
            <label>apelido atual</label>
        </div>
        <div class="box-user">
        <input type="text" name="apelido_cl"  required>
            <label>novo apelido</label>
        </div>
        </p><button  class="btn" type="reset">Redefinir
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </button>
        <button class="btn" type="submit">Alterar
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </button></p>    
        </div>
    </form>
</body>
</html>
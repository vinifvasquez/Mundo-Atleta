<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../perfil/style.css" />
    <title>Excluir conta</title>
</head>
<body>

<form action="excluir.php" method="post">
<div class="login">
<h2>Excluir conta</h2>
    <!--Formulário para excluir a conta-->
   
    <div class="box-user">
        <input type="email" name="email_cl" required>
        <label>Email</label>
    </div>
    <div class="box-user">
    <input type="password"  name="senha_cl" id="senha_cl" required>
       
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
        javascript.window.replace("index.html");
    </script>

    <button class="btn"type="submit">Excluir
            <span></span>
            <span></span>
            <span></span>
            <span></span>
    </button></p>    
    </div>
</form>
</body>
</html>
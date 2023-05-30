<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../perfil/style.css" />
    <title>Login</title>
</head>
<body>

<form action="login.php" method="post">
    <div class="login">
        <h2>Login</h2>
        <div class="box-user">
            <input type="text" name="Lapelido_cl" required>
            <label>Usuário</label>
        </div>
        <div class="box-user">
            <input type="password" name="Lsenha_cl" id="Lsenha_cl" required>
            <label>Senha</label>
        </div>
        <div>
            <a href="form_alterar.php" class="forget">Alterar</a></br>
        </div>
       
        <div>
            <a href="form_cadastrar.php" class="forget">Cadastar-se</a></br>
        </div>
        
        <!--Alternar visibilidade da senha-->
    <script>
        function VerSenha() {
            var x = document.getElementById("Lsenha_cl");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
        javascript.history.back()
    </script>
       <button class="btn" type="submit">Entrar
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            </button></p>
    </div>
    
    </form>
 
</body>
</html>
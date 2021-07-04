{include 'templates/header.tpl'}

<div class="container central col-md-4 offset-md-4 mt-4">
        <h1>{$title}</h1>
        <form action="registrar" method="POST">
            <div class="form-group">
                <label>Usuario</label>
                <input name="username" type="text" class="form-control" placeholder="Ingrese su usuario" required>
            </div>
            <div class="form-group">
                <label>Contraseña</label>
                <input name="password" type="password" class="form-control" placeholder="Ingrese su usuario" required>
            </div>
            {if $error}
                <div class="alert alert-danger" role="alert">
                    {$error}
                </div>
            {/if}
            <button type="submit" class="btn btn-primary">Registrarse</button>
        </form>
    </div>
</div>
{include 'templates/footer.tpl'},
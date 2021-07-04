{include 'templates/header.tpl'}
<div class="container central col-md-4 offset-md-4 mt-4">
    <h1>{$title}</h1>
    <form action="verify" method="POST">
        <div class="form-group">
            <label>Ingrese su Usuario</label>
            <input name="username" type="text" class="form-control" placeholder="Ingrese su usuario" required>
        </div>
        <div class="form-group">
            <label>Ingrese su Contraseña</label>
            <input name="password" type="password" class="form-control" placeholder="Ingrese su contraseña" required>
        </div>

        {if $error}
            <div class="alert alert-danger" role="alert">
                {$error}
            </div>
        {/if}
        <button type="submit" class="btn btn-primary">Entrar</button>
    </form>
</div>

{include 'templates/footer.tpl'}
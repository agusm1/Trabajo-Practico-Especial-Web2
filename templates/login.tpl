{include 'templates/header.tpl'}

<div class="container">
    <form action="verify" method="POST" class="col-md-4 offset-md-4 mt-4">
        <div class="form-group">
            <label>Ingrese su Usuario</label>
            <input name="username" type="text" class="form-control" placeholder="Ingrese su usuario">
        </div>
        <div class="form-group">
            <label>Ingrese su Contraseña</label>
            <input name="password" type="password" class="form-control" placeholder="Ingrese su contraseña">
        </div>

        {if $error}
            <div class="alert alert-danger" role="alert">
                {$error}
            </div>
        {/if}
        <input type="submit" class="btn btn-primary">
    </form>
</div>

{include 'templates/footer.tpl'}
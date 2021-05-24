{include 'templates/header.tpl'}

<div class="container">
    <form action="registrar" method="POST" class="col-md-4 offset-md-4 mt-4">
        <div class="form-group">
            <label>Usuario</label>
            <input name="username" type="text" class="form-control" placeholder="Enter username">
        </div>
        <div class="form-group">
            <label>Contraseña</label>
            <input name="password" type="password" class="form-control" placeholder="Enter password">
        </div>

        <input type="submit" class="btn btn-primary">
    </form>
</div>

{include 'templates/footer.tpl'},
{include 'templates/header.tpl'}

<div class="container">
    <div class="row align-items-start">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9">
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
    </div>
</div>
{include 'templates/footer.tpl'},
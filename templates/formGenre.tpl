{include 'templates/header.tpl'}

<div class="container">
    <form action="creategenre" method="POST" class="col-md-4 offset-md-4 mt-4">
        <div class="form-group">
            <label>Ingrese nombre del genero</label>
            <input name="nombre" type="text" class="form-control" placeholder="Ingrese nombre del genero">
        </div>
        <input type="submit" class="btn btn-primary">
    </form>
</div>

{include 'templates/footer.tpl'}
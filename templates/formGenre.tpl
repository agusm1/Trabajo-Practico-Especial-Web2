{include 'templates/header.tpl'}

<div class="container">
    <div class="row align-items-start">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9">
            <form action="creategenre" method="POST">
                <div class="form-group">
                    <label>Ingrese nombre del genero</label>
                    <input name="nombre" type="text" class="form-control" placeholder="Ingrese nombre del genero">
                </div>
                <input type="submit" class="btn btn-primary">
            </form>
        </div>
    </div>
</div>
{include 'templates/footer.tpl'}
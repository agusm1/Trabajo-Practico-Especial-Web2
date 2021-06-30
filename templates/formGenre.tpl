{include 'templates/header.tpl'}
<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9 central">
            <form action="creategenre" method="POST">
                <div class="form-group">
                    <label>Ingrese nombre del genero</label>
                    <input name="nombre" type="text" class="form-control" placeholder="Ingrese nombre del genero">
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
        </div>
    </div>
</div>
{include 'templates/footer.tpl'}



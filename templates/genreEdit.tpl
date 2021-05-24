{include file="header.tpl"}
<div class="container">
    <h1>{$title}</h1>
    <div class="col">

        {foreach from=$genre item=g}
            <form action="updateGenre/{$genre->id_genero}" method="POST" class="col-md-4 offset-md-4 mt-4">
                <ul>
                    <div class="form-group">
                        <label>Ingrese nombre del genero</label>
                        <input name="nombre" type="text" class="form-control" placeholder="{$genre->nombre}">
                    </div>
                    <input type="submit" class="btn btn-primary">
                </ul>
            </form>
        {/foreach}
    </div>
</div>

{include file="footer.tpl"}
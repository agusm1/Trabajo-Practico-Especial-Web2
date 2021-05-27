{include file="header.tpl"}
<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9 central">
            {foreach from=$genre item=$g}
                <form action="updateGenre/{$g->id_genero}" method="POST">
                    <div class="form-group">
                        <label>Ingrese nombre del genero</label>
                        <input name="nombre" type="text" class="form-control" placeholder="{$g->nombre}">
                    </div>
                    <input type="submit" class="btn btn-primary">
                </form>
            {/foreach}

        </div>
    </div>
</div>
{include file="footer.tpl"}
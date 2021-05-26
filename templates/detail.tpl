{include file="header.tpl"}
<div class="container">
    <div class="row">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9">
            <ul class="list_detail">
                {foreach from=$game item=g }
                    <h4>{$g->titulo}</h4>
                    <li>{$g->anio}</li>
                    <li>{$g->sinopsis}</li>
                    <li>
                        <a class="btn btn-primary" href="formEdit/{$g->id_game}">Editar</a>
                    {/foreach}
                    <a class="btn btn-primary" href="home">Volver</a>
                </li>
            </ul>
        </div>
    </div>
</div>

{include file="footer.tpl"}
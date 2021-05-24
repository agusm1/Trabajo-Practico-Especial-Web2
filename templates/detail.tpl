{include file="header.tpl"}
<div class="container">
    <div class="row align-items-center">
        <h1>{$title}</h1>
        <div class="col">
            <ul>
                {foreach from=$game item=g }
                    <li>{$g->titulo}</li>
                    <li>{$g->anio}</li>
                    <li>{$g->sinopsis}</li>
                    <a class="btn btn-primary" href="formEdit/{$g->id_game}">Editar</a>
                {/foreach}
                <a class="btn btn-primary" href="home">Volver</a>
            </ul>
        </div>
    </div>
</div>

{include file="footer.tpl"}
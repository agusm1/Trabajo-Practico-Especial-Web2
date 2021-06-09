{include file="header.tpl"}
<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9">
            <ul class="list-group">
                {foreach from=$genres item=$genre}
                    <li class="list-group-item central">
                        <h4>{$genre->name} </h4>
                        <a class="btn btn-primary" href="gamesforgenero/{$genre->id_genre}">Ver juegos</a>
                        {if $username != ''}
                            <a class="btn btn-primary" href="showformgenre/{$genre->id_genre}">Editar genero</a>
                            <a class="btn btn-primary" href="deleteGenre/{$genre->id_genre}">Eliminar genero</a>
                        {/if}
                        <a class="btn btn-primary" href="home">Volver</a>
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>
</div>
</div>
{include file="footer.tpl"}
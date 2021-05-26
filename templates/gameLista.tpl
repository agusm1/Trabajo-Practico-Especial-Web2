{include file="header.tpl"}
<div class="container">
    <div class="row align-items-start">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9">
            <ul class="list-group">
                {foreach from=$games item=$game}
                    <li class="list-group-item central">
                        <h4>{$game->titulo} </h4>
                        <span>{$game->anio} </span> <br>
                        <a class="btn btn-primary" href="detail/{$game->id_game}">Ver</a>
                        {if $username != ''}
                            <a class="btn btn-primary" href="deleteGame/{$game->id_game}">ELIMINAR</a>
                        {/if}
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>
</div>

{include file="footer.tpl"}
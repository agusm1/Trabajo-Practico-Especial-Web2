{include file="header.tpl"}
<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9 central">
            <ul class="list-group">
                {foreach from=$games item=$game}
                    <li class="list-group-item fondo_li">
                        <h4>{$game->title} </h4>
                        <span>{$game->year} </span> <br>
                        <a class="btn btn-primary" href="detail/{$game->id_game}">Ver</a>
                        {if $admin == 1}
                            <a class="btn delete" href="deleteGame/{$game->id_game}">ELIMINAR</a>
                        {/if}
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>
</div>

{include file="footer.tpl"}
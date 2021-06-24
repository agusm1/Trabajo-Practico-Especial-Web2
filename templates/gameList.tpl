{include file="header.tpl"}
<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9">
            <ul class="list-group">
                {foreach from=$games item=$game}
                    <li class="list-group-item central">
                        <h4>{$game->title} </h4>
                        <span>{$game->year} </span> <br>
                        {if $images}
                            <img src="{$images[0]->path}">
                        {/if}
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
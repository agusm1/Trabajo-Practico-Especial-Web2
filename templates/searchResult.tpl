{include file="header.tpl"}
<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9">
            <ul class="list-group">
                {foreach from=$result item=$r}
                    <li class="list-group-item central">
                        <h4>{$r->title} </h4>
                        <span>{$r->year} </span> <br>
                        <a class="btn btn-primary" href="detail/{$r->id_game}">Ver</a>
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
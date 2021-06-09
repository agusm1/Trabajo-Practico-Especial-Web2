{include file="header.tpl"}
<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9">
            <ul class="list-group">
                {foreach from=$gamefge item=gfge}
                    <li class="list-group-item central">
                        <h4>{$gfge->title} </h4>
                        <span>{$gfge->year} </span> <br>
                        <span>{$gfge->name} </span> <br>
                        <a class="btn btn-primary" href="detail/{$gfge->id_game}">Ver</a>
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>
</div>
{include file="footer.tpl"}
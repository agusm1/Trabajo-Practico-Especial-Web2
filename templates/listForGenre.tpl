{include file="header.tpl"}
<div class="container">
    <div class="row align-items-center">
        <h1>{$title}</h1>
        <div class="col">
            <ul class="list-group">
                {foreach from=$gamefge item=gfge}
                    <li class="list-group-item">
                        <h4>{$gfge->titulo} </h4>
                        <span>{$gfge->anio} </span> <br>
                        <span>{$gfge->nombre} </span> <br>
                        <a class="btn btn-primary" href="detail/{$gfge->id_game}">Ver</a>
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>
</div>



{include file="footer.tpl"}
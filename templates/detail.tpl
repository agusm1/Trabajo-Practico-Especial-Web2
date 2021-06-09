{include file="header.tpl"}
<div class="container ">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9">
            <ul class="list-group">
                {foreach from=$game item=g }
                    <li class="list-group-item central">
                        <h4>{$g->title}</h4>
                        <span>{$g->year}</span>
                        <br>
                        <span>{$g->synopsis}</span>
                        <br>
                        {if $g->image !=''}
                            <img style="height: 150px; width: 200px" src="{$g->image}" />
                        {/if}
                        <span>
                            {if $username != ''}
                                <a class="btn btn-primary" href="formEdit/{$g->id_game}">Editar</a>
                            {/if}
                        {/foreach}
                        <a class="btn btn-primary" href="home">Volver</a>
                    </span>
                </li>
            </ul>
        </div>
    </div>
</div>

{include file="footer.tpl"}
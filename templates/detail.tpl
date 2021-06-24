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
                        <span id="{$id_game}">
                            {if $username != ''}
                                <a class="btn btn-primary" href="formEdit/{$g->id_game}">Editar</a>
                            {/if}
                            <a class="btn btn-primary" href="home">Volver</a>
                        {/foreach}
                    </span>
                </li>
            </ul>
            <div style="background-color: #ffff;">
                <form method="POST" id="newCommentary">
                    <input type="text" name="commentary" id="commentary" placeholder="Ingrese un comentario">
                    <select name="vote" id="vote">
                        <option value='1'> 1</option>
                        <option value='2'> 2</option>
                        <option value='3'> 3</option>
                        <option value='4'> 4</option>
                        <option value='5'> 5</option>
                    </select>
                <input type="text" id="username" value="{$username}">
                    <button type="submit" class="btn btn-primary">Enviar </button>
                </form>
                
            </div>
            {include file="vue/comments.vue"}
        </div>
    </div>
</div>
{include file="footer.tpl"}
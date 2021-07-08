{include file="header.tpl"}
<div class="container ">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9 ">
            <ul class="list-group">
                {foreach from=$game item=g }
                    <li class="list-group-item central">
                        <h4>{$g->title}</h4>
                        <span>{$g->year}</span>
                        <br>
                        <span>{$g->synopsis}</span>
                        <br>
                        {if $images}
                            <div>
                                {include file="vue/images.vue"}
                            </div>
                        {/if}
                        <br>
                        {if $admin == 1}
                            <a class="btn btn-primary" href="formEdit/{$g->id_game}">Editar</a>
                        {/if}
                        <a class="btn btn-primary" href="home">Volver</a>
                    </li>
                {/foreach}
            </ul>
            {if $username != ''}
                <div class="newcommentary">
                    <form method="POST" id="newCommentary">
                        <input type="text" name="commentary" id="commentary" placeholder="Ingrese un comentario">
                        <select name="vote" id="vote">
                            <option value='1'> 1</option>
                            <option value='2'> 2</option>
                            <option value='3'> 3</option>
                            <option value='4'> 4</option>
                            <option value='5'> 5</option>
                        </select>
                        <input type="hidden" id="username" value="{$username}" type="hidden" disabled>
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
                {/if}
                {include file="vue/comments.vue"}
            </div>
        </div>
    </div>
</div>
<script src="{$base_url}/js/comments.js"></script>
<script src="{$base_url}/js/images.js"></script>

{include file="footer.tpl"}
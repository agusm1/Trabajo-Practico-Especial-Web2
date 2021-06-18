{include 'templates/header.tpl'}

<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9 central">
            <ul class="list-group">
                {foreach from=$users item=$user}
                    <li class="list-group-item central">
                        {if $username == $user->user}
                            <h4>{$user->user} </h4>
                        {else}
                            <h4>{$user->user} </h4>
                            {if $user->admin == 1}
                                <span value="{$user->admin}">Usuario administrador</span>
                                <a class="btn btn-primary" href="modifyAdmin/{$user->id}/0}">Quitar privilegios admin</a>
                            {else}
                                <span value="{$user->admin}">Usuario no administrador</span>   
                                <a class="btn btn-primary" href="modifyAdmin/{$user->id}/1">Añadir privilegios admin</a>
                            {/if}
                            <a class="btn btn-primary" href="deleteUser/{$user->id}">ELIMINAR</a>
                        {/if}
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>
</div>
{include 'templates/footer.tpl'}
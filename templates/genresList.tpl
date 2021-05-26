{include file="header.tpl"}
<div class="container">
        <div class="row align-items-start">
            <h1>{$title}</h1>
            {include file="baroption.tpl"}
            <div class="col-md-9">
                <ul class="list-group">
                    {foreach from=$genres item=$genre}
                        <li class="list-group-item">
                            <h4>{$genre->nombre} </h4>
                            <a class="btn btn-primary" href="gamesforgenero/{$genre->id_genero}">Ver juegos</a>
                            <a class="btn btn-primary" href="showformgenre/{$genre->id_genero}">Editar genero</a>
                            <a class="btn btn-primary" href="deleteGenre/{$genre->id_genero}">Eliminar genero</a>
                        </li>
                    {/foreach}
                    <li class="list-group-item">
                        <a class="btn btn-primary" href="formgenre">Crear genero</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}
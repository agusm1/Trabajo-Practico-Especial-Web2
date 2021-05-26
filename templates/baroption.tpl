<div class="col-md-3 baroption">
    <ul class="listbar">
        <li>
            <a class="btn" href='generos'><i class="fa fa-bars" aria-hidden="true"></i> Lista de
                generos</a>
        </li>
        {if $username != ''}
            <li>
                <a class="btn" href="formgame"><i class="fa fa-plus" aria-hidden="true"></i> Crear juego</a> <br>
            </li>
            <li>
                <a class="btn" href="formgenre"><i class="fa fa-plus" aria-hidden="true"></i> Crear genero</a>
            </li>
        {/if}
        <div class="btn-group dropright ">
            <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                <i class="fa fa-filter" aria-hidden="true"></i> Filtrar por generos
            </button>
            <div class="dropdown-menu">
                {foreach from=$genres item=genre}
                    <a class="dropdown-item" href="gamesforgenero/{$genre->id_genero}">{$genre->nombre}</a>
                {/foreach}
            </div>
        </div>
    </ul>
</div>
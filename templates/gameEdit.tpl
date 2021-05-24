{include file="header.tpl"}
<div class="container">
    <h1>{$title}</h1>
    <div class="col-md-4">

    </div>
    <div class="col-md-8">
        {foreach from=$game item=g }
            <form action="updateGame/{$g->id_game}" method="POST" class="col-md-4 offset-md-4 mt-4">
                <ul>
                    <div class="form-group">
                        <label>Ingrese el nombre del juego</label>
                        <input name="nombre" type="text" class="form-control" placeholder="{$g->titulo}">
                    </div>
                    <div class="form-group">
                        <label>Ingrese el año del juego</label>
                        <input name="anio" type="text" class="form-control" placeholder="{$g->anio}">
                    </div>
                    <div class="form-group">
                        <label>Ingrese la sinopsis del juego</label>
                        <textarea name="sinopsis" class="form-control" id="exampleFormControlTextarea1" rows="3"
                            placeholder="{$g->sinopsis}"></textarea>
                    </div>
                    <div class="form-group">
                        <select name="genero">
                            {foreach from=$genres item=genre}
                                <option value='{$genre->id_genero}'> {$genre->nombre}</option>
                            {/foreach}
                        </select>
                    </div>
                    <input type="submit" class="btn btn-primary">
                </ul>
            </form>
        {/foreach}
    </div>
</div>

{include file="footer.tpl"}
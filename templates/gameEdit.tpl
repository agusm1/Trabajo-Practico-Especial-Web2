{include file="header.tpl"}
<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9 central">
            {foreach from=$game item=g }
                <form action="updateGame/{$g->id_game}" method="POST">
                    <div class="form-group">
                        <label>Ingrese el nombre del juego</label>
                        <input name="nombre" type="text" class="form-control" value="{$g->title}" required>
                    </div>
                    <div class="form-group">
                        <label>Ingrese el año del juego</label>
                        <input name="anio" type="text" class="form-control" value="{$g->year}" required>
                    </div>
                    <div class="form-group">
                        <label>Ingrese la sinopsis del juego</label>
                        <textarea name="sinopsis" class="form-control" id="exampleFormControlTextarea1" rows="3"
                            placeholder="{$g->synopsis}" value="{$g->synopsis}" required></textarea>
                    </div>
                    <div class="form-group">
                        <select name="genero">
                            {foreach from=$genres item=genre}
                                <option value='{$genre->id_genero}'> {$genre->name}</option>
                            {/foreach}
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </form>
            {/foreach}
        </div>
    </div>
</div>

{include file="footer.tpl"}
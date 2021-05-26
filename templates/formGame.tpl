{include 'templates/header.tpl'}

<div class="container">
    <div class="row align-items-start">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9">
            <form action="createGame" method="POST">
                <div class="form-group">
                    <label>Ingrese el nombre del juego</label>
                    <input name="nombre" type="text" class="form-control" placeholder="Ingrese el nombre del genero">
                </div>
                <div class="form-group">
                    <label>Ingrese el año del juego</label>
                    <input name="anio" type="text" class="form-control" placeholder="Ingrese el año del genero">
                </div>
                <div class="form-group">
                    <label>Ingrese la sinopsis del juego</label>
                    <input name="sinopsis" type="text" class="form-control"
                        placeholder="Ingrese la sinopsis del genero">
                </div>
                <div class="form-group">
                    <select name="genero">
                        {foreach from=$genres item=genre}
                            <option value='{$genre->id_genero}'> {$genre->nombre}</option>
                        {/foreach}
                    </select>
                </div>
                <input type="submit" class="btn btn-primary">
            </form>
        </div>
    </div>
</div>
{include 'templates/footer.tpl'}
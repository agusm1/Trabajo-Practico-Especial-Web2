{include 'templates/header.tpl'}

<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9 central">
            <form action="createGame" method="POST">
                <div class="form-group">
                    <label>Ingrese el nombre del juego</label>
                    <input name="nombre" type="text" class="form-control" placeholder="Ingrese el nombre del juego">
                </div>
                <div class="form-group">
                    <label>Ingrese el año del juego</label>
                    <input name="anio" type="text" class="form-control" placeholder="Ingrese el año del juego">
                </div>
                <div class="form-group">
                    <label>Ingrese la sinopsis del juego</label>
                    <input name="sinopsis" type="text" class="form-control"
                        placeholder="Ingrese la sinopsis del juego">
                </div>
                <div class="form-group">
                    <select name="genero">
                        {foreach from=$genres item=genre}
                            <option value='{$genre->id_genero}'> {$genre->nombre}</option>
                        {/foreach}
                    </select>
                </div>
                <button type="button" class="btn btn-primary">Enviar </button>
            </form>
        </div>
    </div>
</div>
{include 'templates/footer.tpl'}
{include 'templates/header.tpl'}
<div class="container">
    <div class="row align-items-start title">
        <h1>{$title}</h1>
        {include file="baroption.tpl"}
        <div class="col-md-9 central">
            <form method="POST" action="uploadImage" enctype="multipart/form-data">
                <div class="form-group">
                    <h4>Seleccione el juego</h4>
                    <select name="game">
                        {foreach from=$games item=game}
                            <option value='{$game->id_game}'> {$game->title}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <input type="file" name="imagesToUpload[]" id="imagesToUpload" multiple>
                    </br>
                    <button type="submit" class="btn btn-primary">Enviar </button>
                </div>
            </form>
        </div>
    </div>
</div>
{include 'templates/footer.tpl'}
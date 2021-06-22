{literal}
    <section id="Vue-comments" style="background-color: #ffff;">
        <h3> {{ subtitle }} </h3>
        <form method="POST" action="new/{$id_game}">
            <input  type="text" name="commentary" placeholder="Ingrese un comentario">
            <select name="vote">
                <option value='1'> 1</option>
                <option value='2'> 2</option>
                <option value='3'> 3</option>
                <option value='4'> 4</option>
                <option value='5'> 5</option>
            </select>
            <button type="submit" class="btn btn-primary">Enviar </button>

        </form>
        <ul>
            <li v-for="comment in comments">
                <span>{{ comment.commentary }} </span>

            </li>
        </ul>
    </section>
{/literal}
<script src="{$base_url}/js/comments.js"></script>
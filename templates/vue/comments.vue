{literal}
    <section id="Vue-comments" style="background-color: #ffff;">
        <ul>
            <li v-for="comment in comments">
                <span>{{ comment.commentary }} {{ comment.vote }}</span>
            <button v-on:click="deleteComment( comment.id_commentary )" class="btn btn-primary">Eliminar</button>
            </li>
        </ul>
    </section>
{/literal}

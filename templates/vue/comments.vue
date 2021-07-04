{literal}
    <section id="Vue-comments" style="background-color: #ffff;">
        <span>{{ title }}</span>
        <ul class="list-none">
            <li v-for="comment in comments">
                <span>{{ comment.commentary }} {{ comment.vote }}</span>
                <span v-if="admin == 1"> 
                    <button v-on:click="deleteComment( comment.id_commentary )" class="btn btn-primary">Eliminar</button>
                </span>
            </li>
        </ul>
    </section>
{/literal}

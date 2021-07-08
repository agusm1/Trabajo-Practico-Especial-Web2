{literal}
    <section id="Vue-comments">
        <span>{{ title }}</span>
        <ul class="list-none">
            <li v-for="comment in comments">
                <p> <span>{{ comment.name_user }} </span>
                    <br/>{{ comment.commentary }} {{ comment.vote }}</p>
                <span v-if="admin == 1"> 
                    <button v-on:click="deleteComment( comment.id_commentary )" type="button" class="close" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </span>
            </li>
        </ul>
    </section>
{/literal}

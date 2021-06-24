{literal}
    <section id="Vue-comments" style="background-color: #ffff;">
        <h3> {{ subtitle }} </h3>
        <ul>
            <li v-for="comment in comments">
                <span>{{ comment.commentary }} </span>

            </li>
        </ul>
    </section>
{/literal}
<script src="{$base_url}/js/comments.js"></script>
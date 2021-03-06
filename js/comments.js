let admins = document.getElementById('admin').value;
let app = new Vue({
    el: "#Vue-comments",
    data: {
        title: "Comentarios",
        admin: admins,
        comments: []
    },
    methods: {
        getComments: function() {
            getComments();
        },
        deleteComment: function(id_commentary) {
            deleteComment(id_commentary);
        }
    },
});
app.getComments();
let form = document.getElementById('newCommentary');
form.addEventListener('submit', addComment);

function getComments() {
    let urlParts = window.location.href.split('/');
    let id_game = urlParts[urlParts.length - 1];
    fetch("api/game/" + id_game)
        .then(response => { return response.json() })
        .then(comments => {
            app.comments = comments;
        })
        .catch(error => console.log(error));
}

function addComment(evt) {
    evt.preventDefault();
    let urlParts = window.location.href.split('/');
    let id_game = urlParts[urlParts.length - 1];
    let commentary = document.getElementById('commentary').value;
    let vote = document.getElementById('vote').value;
    let username = document.getElementById('username').value;
    let comment = {
        "commentary": commentary,
        "vote": vote,
        "username": username,
        "id_game": id_game,
    }
    console.log(comment);

    fetch("api/new", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(comment)
    }).then(response => getComments())
}

function deleteComment(id_commentary) {

    fetch('api/comment/' + id_commentary, {
            method: 'DELETE',
            headers: { 'Content-Type': 'application/json' },
        }).then(response => { return response.json() })
        .then(comment => {
            app.getComments();
        })
        .catch(error => { console.log(error) })
}
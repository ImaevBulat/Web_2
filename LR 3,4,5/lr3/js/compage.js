$(document).ready(function () {
    var id = window.location.search.substring(4);
    $("#send").click(
        function () {
            var name = document.getElementById('name').value;

            var text = document.getElementById('text').value;

            sendAjaxForm(name, text, id);
            return false;
        });
});
function fSuccessComment(data) {
    alert("Комментарий успешно добавлен!");
    document.comment.reset();
}

function sendAjaxForm(name, text, id) {
    $.ajax({
        url: "php/com.php",
        type: "POST",
        data: ({ name: name, text: text, id: id }),
        dataType: "html",
        success: fSuccessComment
    });
}
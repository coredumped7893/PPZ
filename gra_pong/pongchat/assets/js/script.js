$(function(){

    var refreshButton = $('h1 img'),
        pongchatForm = $('.pongchat-form'),
        form = pongchatForm.find('form'),
        closeForm = pongchatForm.find('h2 span'),
        nameElement = form.find('#pongchat-name'),
        commentElement = form.find('#pongchat-comment'),
        ul = $('ul.pongchat-content');


    emojione.ascii = true;

    load();

    
    var canPostComment = true;

    form.submit(function(e){
        e.preventDefault();

        if(!canPostComment) return;
        
        var name = nameElement.val().trim();
        var comment = commentElement.val().trim();

        if(name.length && comment.length && comment.length < 240) {
        
            publish(name, comment);


            canPostComment = false;


            setTimeout(function(){
                canPostComment = true;
            }, 5000);

        }

    });
    
    
    pongchatForm.on('click', 'h2', function(e){
        
        if(form.is(':visible')) {
            formClose();
        }
        else {
            formOpen();
        }
        
    });
    
    
    ul.on('click', '.pongchat-comment-reply', function(e){
        
        var replyName = $(this).data('name');
        
        formOpen();
        commentElement.val('@'+replyName+' ').focus();

    });
    
    
    var canReload = true;

    refreshButton.click(function(){

        if(!canReload) return false;
        
        load();
        canReload = false;

        setTimeout(function(){
            canReload = true;
        }, 2000);
    });

    setInterval(load,20000);


    function formOpen(){
        
        if(form.is(':visible')) return;

        form.slideDown();
        closeForm.fadeIn();
    }

    function formClose(){

        if(!form.is(':visible')) return;

        form.slideUp();
        closeForm.fadeOut();
    }

    
    function publish(name,comment){
    
        $.post('publish.php', {name: name, comment: comment}, function(){
            nameElement.val("");
            commentElement.val("");
            load();
        });

    }
    
    
    function load(){
        $.getJSON('./load.php', function(data) {
            appendComments(data);
        });
    }
    
    
    function appendComments(data) {

        ul.empty();

        data.forEach(function(d){
            ul.append('<li>'+
                '<span class="pongchat-username">' + d.name + '</span>'+
                '<p class="pongchat-comment">' + emojione.toImage(d.text) + '</p>'+
                '<div class="pongchat-comment-details"><span class="pongchat-comment-reply" data-name="' + d.name + '">REPLY</span>'+
                '<span class="pongchat-comment-ago">' + d.timeAgo + '</span></div>'+
            '</li>');
        });

    }

});
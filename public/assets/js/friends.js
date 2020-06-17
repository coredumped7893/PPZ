$(document).ready(function () {

    $(".delete_action").on('click',function (e) {
        console.log($(this).attr('id'));//Returns userName
        $tmp = $(this);
        $.confirm({
            title: 'Jesteś pewien?',
            content:"",
            buttons: {
                yyup:  {
                    text: 'Tak',
                    btnClass: 'btn-red',
                    action: function(){
                        $.ajax({
                            url: "/user/friends",
                            async:true,
                            data:{username:$tmp.attr('id'),delete:'1'},
                            method:"POST",
                        }).always(function(status) {
                            console.log(status);
                            $("#friend_"+$tmp.attr('id')).hide(500);
                        });
                    }
                },
                nope:  {
                    text: 'Nie',
                    btnClass: 'btn-blue',
                    keys: ['enter', 'shift'],
                },
            }
        });

    })

    var inviteSent=false;
    $(".invite_action").on('click',function (e) {

        if(!inviteSent){
            console.log($(this).attr('id'));//Returns userName
            $tmp = $(this);
            $.ajax({
                url: "/user/friends",
                async:true,
                data:{username:$tmp.attr('id'),delete:'1'},
                method:"PUT",
            }).always(function(status) {
                console.log(status);
                $tmp.css("background-color","grey");
                $("#invite_btn").html("Wysłano");
            });
            inviteSent=true;
        }

    })

    $(".accept").on('click',function (e) {
        $(this).css('color',"firebrick");
        $(this).css('font-size',"10px");
        $(this).html("<i class=\"fa fa-trash\" aria-hidden=\"true\"></i>\n(Usuń)");
        $(this).attr('class','delete_action');
    })






});
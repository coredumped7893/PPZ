$(document).ready(function () {

    let c=0;
    let searchParams = new URLSearchParams(window.location.search);
    let status_ = $("#current_status").html();
    if(status_ !== "COMPLETED"){
        int_ = setInterval(function () {
            //$("#current_status").html(c);
            c++;
            if(searchParams.has('id')){
                $.ajax({
                    url: "/trade/getOrderStatus?id="+searchParams.get('id'),
                    async:false,
                }).done(function(status) {
                    $("#current_status").html(status);
                    status_ = status;
                    if(status  === "COMPLETED"){
                        $(".button").show(500);
                        $("#ok_").show(500);
                        $(".load-container").hide(500);
                        clearInterval(int_);
                    }
                });
            }

            if(c>=5){
                //Przerywa po 5 próbach
                $(".load-container").hide(500);
                if(status_ === "COMPLETED"){
                    $(".button").show(500);
                    $("#ok_").show(500);
                }else{
                    $("#err_").show(500);
                    $(".button").show(500);
                    $(".button").css("background-color","#f7f387");
                    $(".button").html("Wróć");
                }
                clearInterval(int_);
            }
        },2000);
    }


});
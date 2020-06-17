<?= view('partials/_header_slim_') ?>

<!-- Profile -->
<section id="main" class="wrapper style3">
    <div class="title"><?= session('username');  ?></div>

    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">

    <!-- from: https://codepen.io/jasondavis/pen/vyMJPp  -->


    <div id="user-profile-2" class="user-profile">
        <div class="tabbable">
            <ul class="nav nav-tabs padding-18" style="width: 28%;margin: auto;">
                <li class="active">
                    <a data-toggle="tab" href="#home">
                        <i class="green ace-icon fa fa-user bigger-120"></i>
                        Profil
                    </a>
                </li>

                <li>
                    <a data-toggle="tab" href="#items">
                        <i class="piGreen1 ace-icon fa fa-archive bigger-120"></i>
                        Ekwipunek
                    </a>
                </li>

                <li>
                    <a data-toggle="tab" href="#top">
                        <i class="orange ace-icon fa fa-rss bigger-120"></i>
                        Rankingi
                    </a>
                </li>

                <li>
                    <a data-toggle="tab" href="#friends">
                        <i class="piBlue1 ace-icon fa fa-users bigger-120"></i>
                        Znajomi
                    </a>
                </li>




            </ul>

            <div class="tab-content no-border padding-24">
                <div id="home" class="tab-pane in active">
                    <div class="row"  style="width: fit-content;margin: auto;">
                        <div class="col-xs-12 col-sm-4 center">
							<span class="profile-picture">
								<img class="editable img-responsive" alt=" Avatar" id="avatar2" src="<?=   $gravatar;   ?>">
							</span>

                            <div class="space space-4"></div>

<!--                            <a href="#" class="btn btn-sm btn-block btn-success">-->
<!--                                <i class="ace-icon fa fa-plus-circle bigger-120"></i>-->
<!--                                <span class="bigger-110">Dodaj do znajomych</span>-->
<!--                            </a>-->

<!--                            <a href="#" class="btn btn-sm btn-block btn-primary">-->
<!--                                <i class="ace-icon fa fa-envelope-o bigger-110"></i>-->
<!--                                <span class="bigger-110">Send a message</span>-->
<!--                            </a>-->
                        </div><!-- /.col -->

                        <div class="col-xs-12 col-sm-8">
                            <h4 class="blue">
                                <span class="middle"><?=   session('username');   ?></span>

                                <span class="label label-purple arrowed-in-right" style="color: #0e0e0e">
									<i class="ace-icon fa fa-circle smaller-80 align-middle" style="
                                            color: green;
                                        "></i>
									online
								</span>
                            </h4>

                            <div class="profile-user-info">






                                <div class="profile-info-row">
                                    <div class="profile-info-name"> Rejestracja: </div>

                                    <div class="profile-info-value">
                                        <span><?=  $user['create_time']  ?></span>
                                    </div>
                                </div>

                                <div class="profile-info-row">
                                    <div class="profile-info-name"> Ostatnie logowanie:</div>

                                    <div class="profile-info-value">
                                        <span><?=  $user['last_succ_login']   ?></span>
                                    </div>
                                </div>
                            </div>

                            <div class="hr hr-8 dotted"></div>


                        </div>
                    </div><!-- /.row -->

                    <div class="space-20"></div>

                </div><!-- /#home -->

                <div id="top" class="tab-pane">
                    <div class="profile-feed row" style="margin-top: unset;margin-left: unset;">
                        <div class="col-sm-3" style="margin: auto;">



                            <?php
                            foreach ($stats as $game){
                               // echo "<p><b>".strtoupper($game->game_name).":</b> ".$game->score." </p>";

                                echo '

                            <div class="profile-activity clearfix" >
                                <div>
                                    <img class="pull-left" alt="MALIKM" src="'.$gravatar.'">
                                    <a class="user" href="/game/play/'.trim($game->game_name).'"> '.strtoupper($game->game_name).': </a>
                                    <a href="#" style="position: relative;float: right;">'.$game->score.'</a>

<!--                                    <div class="time">-->
<!--                                        <i class="ace-icon fa fa-clock-o bigger-110"></i>-->
<!--                                        an hour ago-->
<!--                                    </div>-->
                                </div>

                                <div class="tools action-buttons">
<!--                                    <a href="#" class="blue">-->
<!--                                        <i class="ace-icon fa fa-pencil bigger-125"></i>-->
<!--                                    </a>-->
<!---->
<!--                                    <a href="#" class="red">-->
<!--                                        <i class="ace-icon fa fa-times bigger-125"></i>-->
<!--                                    </a>-->
                                </div>
                            </div>
                            
                                ';

                            }

                            ?>







                        </div><!-- /.col -->

                    </div><!-- /.row -->

                    <div class="space-12"></div>
                    <br>
                    <div class="center">
                    <a href="/games/top">

                        <button type="button" class="btn btn-sm btn-primary btn-white btn-round">
                            <i class="ace-icon fa fa-list-ol bigger-150 middle orange2"></i>
                            <span class="bigger-110">Zobacz globalne statystyki</span>

                            <i class="icon-on-right ace-icon fa fa-arrow-right"></i>
                        </button>

                    </a>
                    </div>
                </div><!-- /#feed -->

                <div id="friends" class="tab-pane">
                    <div class="profile-users clearfix" style="margin: auto;display: flex;align-items: center;justify-content: center;flex-wrap: wrap;">




                        <?php

                            if(empty($friends)){
                                echo '
                                    Brak znajomych
                                ';
                            }else{
                                foreach ($friends as $f){
                                    //if($f->user_inviting == session('username') && $f->accepted == 0) continue;

                                            if($f->accepted == 1) {

                                                echo '
                                            <div class="itemdiv memberdiv" id="friend_'.$f->user_invited.'">
                                                <div class="inline pos-rel">
                                                    <div class="user">
                                                        <a href="#">
                                                            <img src="'.$friend_gravatar[$f->user_invited].'" alt="Bob Doe\'s avatar">
                                                        </a>
                                                    </div>
                    
                                            <div class="body">
                                            ';

                                                echo '
                                                <div class="name">
                                                    <a href="#" class="delete_action" id="' . $f->user_invited . '"  style="color: firebrick;font-size: 10px">
                                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                                        (Usuń)
                                                    </a>
                                                    <br>
                                                    <a href="/user/view/' . $f->user_invited . '">
                                                        <span class="user-status status-online"></span>
                                                        ' . $f->user_invited . '
                                                    </a>
                                                </div>
                                               ';
                                            }else if($f->user_inviting == session('username') && $f->accepted == 0){

                                                echo '
                                                <div class="itemdiv memberdiv" id="friend_'.$f->user_invited.'">
                                                    <div class="inline pos-rel">
                                                        <div class="user">
                                                            <a href="#">
                                                                <img src="'.$friend_gravatar[$f->user_invited].'" alt="Bob Doe\'s avatar">
                                                            </a>
                                                        </div>
                        
                                                <div class="body">
                                            ';

                                                echo '
                                                <div class="name">
                                                    <a href="#" class="" id="'.$f->user_inviting.'"  style="color: grey;font-size: 10px">
                                                        <i class="fa fa-check" aria-hidden="true"></i>
                                                        Wysłano
                                                    </a> 
                                                    <br>
                                                    <a href="/user/view/'.$f->user_inviting.'">
                                                        <span class="user-status status-online"></span>
                                                        '.$f->user_inviting.'
                                                    </a>
                                                </div>
                                               ';
                                            }else{

                                                echo '
                                                    <div class="itemdiv memberdiv" id="friend_'.$f->user_inviting.'">
                                                        <div class="inline pos-rel">
                                                            <div class="user">
                                                                <a href="#">
                                                                    <img src="'.$friend_gravatar[$f->user_inviting].'" alt="Bob Doe\'s avatar">
                                                                </a>
                                                            </div>
                            
                                                    <div class="body">
                                            ';

                                                echo '
                                                <div class="name">
                                                    <a href="#" class="invite_action accept" id="'.$f->user_inviting.'"  style="color: darkgreen;font-size: 15px">
                                                        <i class="fa fa-check" aria-hidden="true"></i>
                                                        Akceptuj
                                                    </a> 
                                                    <br>
                                                    <a href="/user/view/'.$f->user_inviting.'">
                                                        <span class="user-status status-online"></span>
                                                        '.$f->user_inviting.'
                                                    </a>
                                                </div>
                                               ';
                                            }








                                    echo '        </div>
                                        </div>
                                    </div>
                                ';
                                }
                            }


                        ?>



                    </div>

                    <div class="hr hr10 hr-double"></div>

<!--                    <ul class="pager pull-right">-->
<!--                        <li class="previous disabled">-->
<!--                            <a href="#">← Prev</a>-->
<!--                        </li>-->
<!---->
<!--                        <li class="next">-->
<!--                            <a href="#">Next →</a>-->
<!--                        </li>-->
<!--                    </ul>-->
                </div><!-- /#friends -->

                <div id="items" class="tab-pane" style="min-height: 400px;">
                    <ul class="ace-thumbnails" style=" display: flex;justify-content: center;flex-wrap: wrap;">


                        <?php
                        foreach ($skins as $s){
                            echo '
                        <li>
                            <a href="#" data-rel="colorbox">
                                <img style="max-height: 200px;max-width: 200px" src="images/skins/'.$s->path.'" alt="'.$s->name.'">
                                <div class="text">
                                    <div class="inner">'.$s->name.'</div>
                                </div>
                            </a>

                            <div class="tools tools-bottom">
                                <a href="#send">
                                    <i class="ace-icon fa fa-share-square"></i>
                                </a>
<!--                        <a href="#">-->
<!--                            <i class="ace-icon fa fa-paperclip"></i>-->
<!--                        </a>-->
<!---->
<!--                        <a href="#">-->
<!--                            <i class="ace-icon fa fa-pencil"></i>-->
<!--                        </a>-->
<!---->
<!--                        <a href="#">-->
<!--                            <i class="ace-icon fa fa-times red"></i>-->
<!--                        </a>-->

                            </div>
                        </li>
                       ';
                        }

                        ?>


                    </ul>
                </div><!-- /#pictures -->
            </div>
        </div>
    </div>













</section>
<?= view('partials/_footer_') ?>
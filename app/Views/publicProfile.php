<?= view('partials/_header_slim_') ?>

    <!-- Profile -->
    <section id="main" class="wrapper style3">
        <div class="title"><?= $user['username'];  ?></div>

        <link rel="stylesheet" href="/assets/css/bootstrap.min.css">

        <!-- from: https://codepen.io/jasondavis/pen/vyMJPp  -->


        <div id="user-profile-2" class="user-profile">
            <div class="tabbable">
                <ul class="nav nav-tabs padding-18" style="    width: 15%;margin: auto;">
                    <li class="active">
                        <a data-toggle="tab" href="#home">
                            <i class="green ace-icon fa fa-user bigger-120"></i>
                            Profil
                        </a>
                    </li>


                    <li>
                        <a data-toggle="tab" href="#top">
                            <i class="orange ace-icon fa fa-rss bigger-120"></i>
                            Rankingi
                        </a>
                    </li>






                </ul>

                <div class="tab-content no-border padding-24">
                    <div id="home" class="tab-pane in active">
                        <div class="row"  style="width: 35%;margin: auto;">

                            <?php


                            if(!empty($user)){
                                echo '
                                
                            <div class="col-xs-12 col-sm-5 center">
							<span class="profile-picture">
								<img class="editable img-responsive" alt=" Avatar" id="avatar2" src="'.$gravatar.'">
							</span>

                                <div class="space space-4"></div>';
                                
                                if($loginStatus &&  $user['username'] != session('username') && !$isFriend ){
                                   echo '
                                                <a href="#" id="'.$user['username'].'" class="btn btn-sm btn-block btn-success invite_action">
                                                    <i class="ace-icon fa fa-plus-circle bigger-120"></i>
                                                    <span class="bigger-110" id="invite_btn">Dodaj do znajomych</span>
                                                </a>
                                   ';
                                }

                                echo '
                                <!--                            <a href="#" class="btn btn-sm btn-block btn-primary">-->
                                <!--                                <i class="ace-icon fa fa-envelope-o bigger-110"></i>-->
                                <!--                                <span class="bigger-110">Send a message</span>-->
                                <!--                            </a>-->
                            </div><!-- /.col -->

                            <div class="col-xs-12 col-sm-6">
                                <h4 class="blue">
                                    <span class="middle">'.$user["username"].'</span>
                                </h4>

                                <div class="profile-user-info">






                                    <div class="profile-info-row">
                                        <div class="profile-info-name"> Rejestracja: </div>

                                        <div class="profile-info-value">
                                            <span>'.$user["create_time"]  .'</span>
                                        </div>
                                    </div>

                                    <div class="profile-info-row">
                                        <div class="profile-info-name"> Ostatnie logowanie:</div>

                                        <div class="profile-info-value">
                                            <span>'.$user["last_succ_login"].'</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="hr hr-8 dotted"></div>





                            </div>
                                
                                ';
                            }else{
                                echo '
                            <div class="col-xs-12 col-sm-3 center">
                                
                                Nie znaleziono takiego uzytkownika
                
                                <div class="space space-4"></div>

                            </div><!-- /.col -->
                                ';
                            }



                            ?>



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




                </div>
            </div>
        </div>













    </section>
<?= view('partials/_footer_') ?>
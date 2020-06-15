<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* viewtopic_body.html */
class __TwigTemplate_e6ff8c722e62c8282cd7d9ffd570bc4c0f662ccf5332bdf8cd09b5d84b29d537 extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        ob_start();
        // line 2
        if (( !($context["S_IS_BOT"] ?? null) && ((((((($context["U_VIEW_UNREAD_POST"] ?? null) || ($context["U_WATCH_TOPIC"] ?? null)) || ($context["U_BOOKMARK_TOPIC"] ?? null)) || ($context["U_BUMP_TOPIC"] ?? null)) || ($context["U_EMAIL_TOPIC"] ?? null)) || ($context["U_PRINT_TOPIC"] ?? null)) || ($context["S_DISPLAY_TOPIC_TOOLS"] ?? null)))) {
            // line 3
            echo "\t";
            if (($context["U_VIEW_UNREAD_POST"] ?? null)) {
                // line 4
                echo "\t\t<li class=\"small-icon icon-mark\"><a href=\"";
                echo ($context["U_VIEW_UNREAD_POST"] ?? null);
                echo "\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("VIEW_UNREAD_POST");
                echo "</a></li>
\t";
            }
            // line 6
            echo "\t";
            if (($context["U_WATCH_TOPIC"] ?? null)) {
                // line 7
                echo "\t\t<li class=\"small-icon\">
\t\t\t<a href=\"";
                // line 8
                echo ($context["U_WATCH_TOPIC"] ?? null);
                echo "\" class=\"watch-topic-link\" title=\"";
                echo ($context["S_WATCH_TOPIC_TITLE"] ?? null);
                echo "\" data-ajax=\"toggle_link\" data-toggle-class=\"icon ";
                if (($context["S_WATCHING_TOPIC"] ?? null)) {
                    echo "fa-check-square-o";
                } else {
                    echo "fa-square-o";
                }
                echo " fa-fw\" data-toggle-text=\"";
                echo ($context["S_WATCH_TOPIC_TOGGLE"] ?? null);
                echo "\" data-toggle-url=\"";
                echo ($context["U_WATCH_TOPIC_TOGGLE"] ?? null);
                echo "\" data-update-all=\".watch-topic-link\">
\t\t\t\t<i class=\"icon ";
                // line 9
                if (($context["S_WATCHING_FORUM"] ?? null)) {
                    echo "fa-square-o";
                } else {
                    echo "fa-check-square-o";
                }
                echo " fa-fw\" aria-hidden=\"true\"></i><span>";
                echo ($context["S_WATCH_TOPIC_TITLE"] ?? null);
                echo "</span>
\t\t\t</a>
\t\t</li>
\t";
            }
            // line 13
            $value = 1;
            $context['definition']->set('NAVLINKS_SHOW_DEFAULT', $value);
        }
        $value = ('' === $value = ob_get_clean()) ? '' : new \Twig_Markup($value, $this->env->getCharset());
        $context['definition']->set('NAVLINKS', $value);
        // line 16
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "viewtopic_body.html", 16)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 17
        echo "
";
        // line 18
        // line 19
        echo "<h2 class=\"topic-title\">";
        echo "<a href=\"";
        echo ($context["U_VIEW_TOPIC"] ?? null);
        echo "\">";
        echo ($context["TOPIC_TITLE"] ?? null);
        echo "</a>";
        echo "</h2>
";
        // line 20
        // line 21
        echo "<!-- NOTE: remove the style=\"display: none\" when you want to have the forum description on the topic body -->
";
        // line 22
        if (($context["FORUM_DESC"] ?? null)) {
            echo "<div style=\"display: none !important;\">";
            echo ($context["FORUM_DESC"] ?? null);
            echo "<br /></div>";
        }
        // line 23
        echo "
";
        // line 24
        if (($context["MODERATORS"] ?? null)) {
            // line 25
            echo "<p>
\t<strong>";
            // line 26
            if (($context["S_SINGLE_MODERATOR"] ?? null)) {
                echo $this->extensions['phpbb\template\twig\extension']->lang("MODERATOR");
            } else {
                echo $this->extensions['phpbb\template\twig\extension']->lang("MODERATORS");
            }
            echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
            echo "</strong> ";
            echo ($context["MODERATORS"] ?? null);
            echo "
</p>
";
        }
        // line 29
        echo "
";
        // line 30
        if (($context["S_FORUM_RULES"] ?? null)) {
            // line 31
            echo "\t<div class=\"rules";
            if (($context["U_FORUM_RULES"] ?? null)) {
                echo " rules-link";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t";
            // line 34
            if (($context["U_FORUM_RULES"] ?? null)) {
                // line 35
                echo "\t\t\t<a href=\"";
                echo ($context["U_FORUM_RULES"] ?? null);
                echo "\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FORUM_RULES");
                echo "</a>
\t\t";
            } else {
                // line 37
                echo "\t\t\t<strong>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FORUM_RULES");
                echo "</strong><br />
\t\t\t";
                // line 38
                echo ($context["FORUM_RULES"] ?? null);
                echo "
\t\t";
            }
            // line 40
            echo "
\t\t</div>
\t</div>
";
        }
        // line 44
        echo "
<div class=\"action-bar bar-top\">
\t";
        // line 46
        // line 47
        echo "
\t";
        // line 48
        if (( !($context["S_IS_BOT"] ?? null) && ($context["S_DISPLAY_REPLY_INFO"] ?? null))) {
            // line 49
            echo "\t\t<a href=\"";
            echo ($context["U_POST_REPLY_TOPIC"] ?? null);
            echo "\" class=\"button\" title=\"";
            if (($context["S_IS_LOCKED"] ?? null)) {
                echo $this->extensions['phpbb\template\twig\extension']->lang("TOPIC_LOCKED");
            } else {
                echo $this->extensions['phpbb\template\twig\extension']->lang("POST_REPLY");
            }
            echo "\">
\t\t\t";
            // line 50
            if (($context["S_IS_LOCKED"] ?? null)) {
                // line 51
                echo "\t\t\t\t<span>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_TOPIC_LOCKED");
                echo "</span> <i class=\"icon fa-lock fa-fw\" aria-hidden=\"true\"></i>
\t\t\t";
            } else {
                // line 53
                echo "\t\t\t\t<span>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_POST_REPLY");
                echo "</span> <i class=\"icon fa-reply fa-fw\" aria-hidden=\"true\"></i>
\t\t\t";
            }
            // line 55
            echo "\t\t</a>
\t";
        }
        // line 57
        echo "
\t";
        // line 58
        // line 59
        echo "\t";
        $location = "viewtopic_topic_tools.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("viewtopic_topic_tools.html", "viewtopic_body.html", 59)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 60
        echo "\t";
        // line 61
        echo "
\t";
        // line 62
        if (($context["S_DISPLAY_SEARCHBOX"] ?? null)) {
            // line 63
            echo "\t\t<div class=\"search-box\" role=\"search\">
\t\t\t<form method=\"get\" id=\"topic-search\" action=\"";
            // line 64
            echo ($context["S_SEARCHBOX_ACTION"] ?? null);
            echo "\">
\t\t\t<fieldset>
\t\t\t\t<input class=\"inputbox search tiny\"  type=\"search\" name=\"keywords\" id=\"search_keywords\" size=\"20\" placeholder=\"";
            // line 66
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_TOPIC");
            echo "\" />
\t\t\t\t<button class=\"button button-search\" type=\"submit\" title=\"";
            // line 67
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH");
            echo "\">
\t\t\t\t\t<i class=\"icon fa-search fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
            // line 68
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH");
            echo "</span>
\t\t\t\t</button>
\t\t\t\t<a href=\"";
            // line 70
            echo ($context["U_SEARCH"] ?? null);
            echo "\" class=\"button button-search-end\" title=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_ADV");
            echo "\">
\t\t\t\t\t<i class=\"icon fa-cog fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
            // line 71
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_ADV");
            echo "</span>
\t\t\t\t</a>
\t\t\t\t";
            // line 73
            echo ($context["S_SEARCH_LOCAL_HIDDEN_FIELDS"] ?? null);
            echo "
\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>
\t";
        }
        // line 78
        echo "
\t";
        // line 79
        if ((twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "pagination", [], "any", false, false, false, 79)) || ($context["TOTAL_POSTS"] ?? null))) {
            // line 80
            echo "\t\t<div class=\"pagination\">
\t\t\t";
            // line 81
            if ((($context["U_VIEW_UNREAD_POST"] ?? null) &&  !($context["S_IS_BOT"] ?? null))) {
                echo "<a href=\"";
                echo ($context["U_VIEW_UNREAD_POST"] ?? null);
                echo "\" class=\"mark\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("VIEW_UNREAD_POST");
                echo "</a> &bull; ";
            }
            echo ($context["TOTAL_POSTS"] ?? null);
            echo "
\t\t\t";
            // line 82
            if (twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "pagination", [], "any", false, false, false, 82))) {
                // line 83
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewtopic_body.html", 83)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 84
                echo "\t\t\t";
            } else {
                // line 85
                echo "\t\t\t\t&bull; ";
                echo ($context["PAGE_NUMBER"] ?? null);
                echo "
\t\t\t";
            }
            // line 87
            echo "\t\t</div>
\t";
        }
        // line 89
        echo "\t";
        // line 90
        echo "</div>

";
        // line 92
        // line 93
        echo "
";
        // line 94
        if (($context["S_HAS_POLL"] ?? null)) {
            // line 95
            echo "\t<form method=\"post\" action=\"";
            echo ($context["S_POLL_ACTION"] ?? null);
            echo "\" data-ajax=\"vote_poll\" class=\"topic_poll\">

\t<div class=\"panel\">
\t\t<div class=\"inner\">

\t\t<div class=\"content\">
\t\t\t<h2 class=\"poll-title\">";
            // line 101
            echo ($context["POLL_QUESTION"] ?? null);
            echo "</h2>
\t\t\t<p class=\"author\">";
            // line 102
            echo $this->extensions['phpbb\template\twig\extension']->lang("POLL_LENGTH");
            if ((($context["S_CAN_VOTE"] ?? null) && ($context["L_POLL_LENGTH"] ?? null))) {
                echo "<br />";
            }
            if (($context["S_CAN_VOTE"] ?? null)) {
                echo "<span class=\"poll_max_votes\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("MAX_VOTES");
                echo "</span>";
            }
            echo "</p>

\t\t\t<fieldset class=\"polls\">
\t\t\t";
            // line 105
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "poll_option", [], "any", false, false, false, 105));
            foreach ($context['_seq'] as $context["_key"] => $context["poll_option"]) {
                // line 106
                echo "\t\t\t\t";
                // line 107
                echo "\t\t\t\t<dl class=\"";
                if (twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_VOTED", [], "any", false, false, false, 107)) {
                    echo "voted";
                }
                if (twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_MOST_VOTES", [], "any", false, false, false, 107)) {
                    echo " most-votes";
                }
                echo "\"";
                if (twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_VOTED", [], "any", false, false, false, 107)) {
                    echo " title=\"";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("POLL_VOTED_OPTION");
                    echo "\"";
                }
                echo " data-alt-text=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("POLL_VOTED_OPTION");
                echo "\" data-poll-option-id=\"";
                echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_ID", [], "any", false, false, false, 107);
                echo "\">
\t\t\t\t\t<dt>";
                // line 108
                if (($context["S_CAN_VOTE"] ?? null)) {
                    echo "<label for=\"vote_";
                    echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_ID", [], "any", false, false, false, 108);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_CAPTION", [], "any", false, false, false, 108);
                    echo "</label>";
                } else {
                    echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_CAPTION", [], "any", false, false, false, 108);
                }
                echo "</dt>
\t\t\t\t\t";
                // line 109
                if (($context["S_CAN_VOTE"] ?? null)) {
                    echo "<dd style=\"width: auto;\" class=\"poll_option_select\">";
                    if (($context["S_IS_MULTI_CHOICE"] ?? null)) {
                        echo "<input type=\"checkbox\" name=\"vote_id[]\" id=\"vote_";
                        echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_ID", [], "any", false, false, false, 109);
                        echo "\" value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_ID", [], "any", false, false, false, 109);
                        echo "\"";
                        if (twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_VOTED", [], "any", false, false, false, 109)) {
                            echo " checked=\"checked\"";
                        }
                        echo " />";
                    } else {
                        echo "<input type=\"radio\" name=\"vote_id[]\" id=\"vote_";
                        echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_ID", [], "any", false, false, false, 109);
                        echo "\" value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_ID", [], "any", false, false, false, 109);
                        echo "\"";
                        if (twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_VOTED", [], "any", false, false, false, 109)) {
                            echo " checked=\"checked\"";
                        }
                        echo " />";
                    }
                    echo "</dd>";
                }
                // line 110
                echo "\t\t\t\t\t<dd class=\"resultbar";
                if ( !($context["S_DISPLAY_RESULTS"] ?? null)) {
                    echo " hidden";
                }
                echo "\"><div class=\"";
                if ((twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_PCT", [], "any", false, false, false, 110) < 20)) {
                    echo "pollbar1";
                } elseif ((twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_PCT", [], "any", false, false, false, 110) < 40)) {
                    echo "pollbar2";
                } elseif ((twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_PCT", [], "any", false, false, false, 110) < 60)) {
                    echo "pollbar3";
                } elseif ((twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_PCT", [], "any", false, false, false, 110) < 80)) {
                    echo "pollbar4";
                } else {
                    echo "pollbar5";
                }
                echo "\" style=\"width:";
                echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_PERCENT_REL", [], "any", false, false, false, 110);
                echo ";\">";
                echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_RESULT", [], "any", false, false, false, 110);
                echo "</div></dd>
\t\t\t\t\t<dd class=\"poll_option_percent";
                // line 111
                if ( !($context["S_DISPLAY_RESULTS"] ?? null)) {
                    echo " hidden";
                }
                echo "\">";
                if ((twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_RESULT", [], "any", false, false, false, 111) == 0)) {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("NO_VOTES");
                } else {
                    echo twig_get_attribute($this->env, $this->source, $context["poll_option"], "POLL_OPTION_PERCENT", [], "any", false, false, false, 111);
                }
                echo "</dd>
\t\t\t\t</dl>
\t\t\t\t";
                // line 113
                // line 114
                echo "\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['poll_option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 115
            echo "
\t\t\t\t<dl class=\"poll_total_votes";
            // line 116
            if ( !($context["S_DISPLAY_RESULTS"] ?? null)) {
                echo " hidden";
            }
            echo "\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\">";
            // line 118
            echo $this->extensions['phpbb\template\twig\extension']->lang("TOTAL_VOTES");
            echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
            echo " <span class=\"poll_total_vote_cnt\">";
            echo ($context["TOTAL_VOTES"] ?? null);
            echo "</span></dd>
\t\t\t\t</dl>

\t\t\t";
            // line 121
            if (($context["S_CAN_VOTE"] ?? null)) {
                // line 122
                echo "\t\t\t\t<dl style=\"border-top: none;\" class=\"poll_vote\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\"><input type=\"submit\" name=\"update\" value=\"";
                // line 124
                echo $this->extensions['phpbb\template\twig\extension']->lang("SUBMIT_VOTE");
                echo "\" class=\"button1\" /></dd>
\t\t\t\t</dl>
\t\t\t";
            }
            // line 127
            echo "
\t\t\t";
            // line 128
            if ( !($context["S_DISPLAY_RESULTS"] ?? null)) {
                // line 129
                echo "\t\t\t\t<dl style=\"border-top: none;\" class=\"poll_view_results\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\"><a href=\"";
                // line 131
                echo ($context["U_VIEW_RESULTS"] ?? null);
                echo "\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("VIEW_RESULTS");
                echo "</a></dd>
\t\t\t\t</dl>
\t\t\t";
            }
            // line 134
            echo "\t\t\t</fieldset>
\t\t\t<div class=\"vote-submitted hidden\">";
            // line 135
            echo $this->extensions['phpbb\template\twig\extension']->lang("VOTE_SUBMITTED");
            echo "</div>
\t\t</div>

\t\t</div>
\t\t";
            // line 139
            echo ($context["S_FORM_TOKEN"] ?? null);
            echo "
\t\t";
            // line 140
            echo ($context["S_HIDDEN_FIELDS"] ?? null);
            echo "
\t</div>

\t</form>
";
        }
        // line 145
        echo "
";
        // line 146
        // line 147
        echo "
";
        // line 148
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "postrow", [], "any", false, false, false, 148));
        foreach ($context['_seq'] as $context["_key"] => $context["postrow"]) {
            // line 149
            echo "\t";
            // line 150
            echo "\t";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_FIRST_UNREAD", [], "any", false, false, false, 150)) {
                // line 151
                echo "\t\t<a id=\"unread\" class=\"top-anchor\"";
                if (($context["S_UNREAD_VIEW"] ?? null)) {
                    echo " data-url=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_MINI_POST", [], "any", false, false, false, 151);
                    echo "\"";
                }
                echo "></a>
\t";
            }
            // line 153
            echo "\t<div id=\"p";
            echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ID", [], "any", false, false, false, 153);
            echo "\" class=\"post has-profile ";
            if ((twig_get_attribute($this->env, $this->source, $context["postrow"], "S_ROW_COUNT", [], "any", false, false, false, 153) % 2 == 1)) {
                echo "bg1";
            } else {
                echo "bg2";
            }
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_UNREAD_POST", [], "any", false, false, false, 153)) {
                echo " unreadpost";
            }
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_POST_REPORTED", [], "any", false, false, false, 153)) {
                echo " reported";
            }
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_POST_DELETED", [], "any", false, false, false, 153)) {
                echo " deleted";
            }
            if ((twig_get_attribute($this->env, $this->source, $context["postrow"], "S_ONLINE", [], "any", false, false, false, 153) &&  !twig_get_attribute($this->env, $this->source, $context["postrow"], "S_POST_HIDDEN", [], "any", false, false, false, 153))) {
                echo " online";
            }
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_WARNINGS", [], "any", false, false, false, 153)) {
                echo " warned";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t<dl class=\"postprofile\" id=\"profile";
            // line 156
            echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ID", [], "any", false, false, false, 156);
            echo "\"";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_POST_HIDDEN", [], "any", false, false, false, 156)) {
                echo " style=\"display: none;\"";
            }
            echo ">
\t\t\t<dt class=\"";
            // line 157
            if ((twig_get_attribute($this->env, $this->source, $context["postrow"], "RANK_TITLE", [], "any", false, false, false, 157) || twig_get_attribute($this->env, $this->source, $context["postrow"], "RANK_IMG", [], "any", false, false, false, 157))) {
                echo "has-profile-rank";
            } else {
                echo "no-profile-rank";
            }
            echo " ";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_AVATAR", [], "any", false, false, false, 157)) {
                echo "has-avatar";
            } else {
                echo "no-avatar";
            }
            echo "\">
\t\t\t\t<div class=\"avatar-container\">
\t\t\t\t\t";
            // line 159
            // line 160
            echo "\t\t\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_AVATAR", [], "any", false, false, false, 160)) {
                // line 161
                echo "\t\t\t\t\t\t";
                if (twig_get_attribute($this->env, $this->source, $context["postrow"], "U_POST_AUTHOR", [], "any", false, false, false, 161)) {
                    echo "<a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_POST_AUTHOR", [], "any", false, false, false, 161);
                    echo "\" class=\"avatar\">";
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_AVATAR", [], "any", false, false, false, 161);
                    echo "</a>";
                } else {
                    echo "<span class=\"avatar\">";
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_AVATAR", [], "any", false, false, false, 161);
                    echo "</span>";
                }
                // line 162
                echo "\t\t\t\t\t";
            }
            // line 163
            echo "\t\t\t\t\t";
            // line 164
            echo "\t\t\t\t</div>
\t\t\t\t";
            // line 165
            // line 166
            echo "\t\t\t\t";
            if ( !twig_get_attribute($this->env, $this->source, $context["postrow"], "U_POST_AUTHOR", [], "any", false, false, false, 166)) {
                echo "<strong>";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_AUTHOR_FULL", [], "any", false, false, false, 166);
                echo "</strong>";
            } else {
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_AUTHOR_FULL", [], "any", false, false, false, 166);
            }
            // line 167
            echo "\t\t\t\t";
            // line 168
            echo "\t\t\t</dt>

\t\t\t";
            // line 170
            // line 171
            echo "\t\t\t";
            if ((twig_get_attribute($this->env, $this->source, $context["postrow"], "RANK_TITLE", [], "any", false, false, false, 171) || twig_get_attribute($this->env, $this->source, $context["postrow"], "RANK_IMG", [], "any", false, false, false, 171))) {
                echo "<dd class=\"profile-rank\">";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "RANK_TITLE", [], "any", false, false, false, 171);
                if ((twig_get_attribute($this->env, $this->source, $context["postrow"], "RANK_TITLE", [], "any", false, false, false, 171) && twig_get_attribute($this->env, $this->source, $context["postrow"], "RANK_IMG", [], "any", false, false, false, 171))) {
                    echo "<br />";
                }
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "RANK_IMG", [], "any", false, false, false, 171);
                echo "</dd>";
            }
            // line 172
            echo "\t\t\t";
            // line 173
            echo "
\t\t";
            // line 174
            if ((twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_POSTS", [], "any", false, false, false, 174) != "")) {
                echo "<dd class=\"profile-posts\"><strong>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("POSTS");
                echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                echo "</strong> ";
                if ((twig_get_attribute($this->env, $this->source, $context["postrow"], "U_SEARCH", [], "any", false, false, false, 174) !== "")) {
                    echo "<a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_SEARCH", [], "any", false, false, false, 174);
                    echo "\">";
                }
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_POSTS", [], "any", false, false, false, 174);
                if ((twig_get_attribute($this->env, $this->source, $context["postrow"], "U_SEARCH", [], "any", false, false, false, 174) !== "")) {
                    echo "</a>";
                }
                echo "</dd>";
            }
            // line 175
            echo "\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_JOINED", [], "any", false, false, false, 175)) {
                echo "<dd class=\"profile-joined\"><strong>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("JOINED");
                echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                echo "</strong> ";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_JOINED", [], "any", false, false, false, 175);
                echo "</dd>";
            }
            // line 176
            echo "\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_WARNINGS", [], "any", false, false, false, 176)) {
                echo "<dd class=\"profile-warnings\"><strong>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("WARNINGS");
                echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                echo "</strong> ";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POSTER_WARNINGS", [], "any", false, false, false, 176);
                echo "</dd>";
            }
            // line 177
            echo "
\t\t";
            // line 178
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_PROFILE_FIELD1", [], "any", false, false, false, 178)) {
                // line 179
                echo "\t\t\t<!-- Use a construct like this to include admin defined profile fields. Replace FIELD1 with the name of your field. -->
\t\t\t<dd><strong>";
                // line 180
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "PROFILE_FIELD1_NAME", [], "any", false, false, false, 180);
                echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                echo "</strong> ";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "PROFILE_FIELD1_VALUE", [], "any", false, false, false, 180);
                echo "</dd>
\t\t";
            }
            // line 182
            echo "
\t\t";
            // line 183
            // line 184
            echo "\t\t";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["postrow"], "custom_fields", [], "any", false, false, false, 184));
            foreach ($context['_seq'] as $context["_key"] => $context["custom_fields"]) {
                // line 185
                echo "\t\t\t";
                if ( !twig_get_attribute($this->env, $this->source, $context["custom_fields"], "S_PROFILE_CONTACT", [], "any", false, false, false, 185)) {
                    // line 186
                    echo "\t\t\t\t<dd class=\"profile-custom-field profile-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_fields"], "PROFILE_FIELD_IDENT", [], "any", false, false, false, 186);
                    echo "\"><strong>";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_fields"], "PROFILE_FIELD_NAME", [], "any", false, false, false, 186);
                    echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                    echo "</strong> ";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_fields"], "PROFILE_FIELD_VALUE", [], "any", false, false, false, 186);
                    echo "</dd>
\t\t\t";
                }
                // line 188
                echo "\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_fields'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 189
            echo "\t\t";
            // line 190
            echo "
\t\t";
            // line 191
            // line 192
            echo "\t\t";
            if (( !($context["S_IS_BOT"] ?? null) && twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, $context["postrow"], "contact", [], "any", false, false, false, 192)))) {
                // line 193
                echo "\t\t\t<dd class=\"profile-contact\">
\t\t\t\t<strong>";
                // line 194
                echo $this->extensions['phpbb\template\twig\extension']->lang("CONTACT");
                echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                echo "</strong>
\t\t\t\t<div class=\"dropdown-container dropdown-";
                // line 195
                echo ($context["S_CONTENT_FLOW_END"] ?? null);
                echo " dropdown-down\">
\t\t\t\t\t<a href=\"#\" class=\"dropdown-trigger\" title=\"";
                // line 196
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "CONTACT_USER", [], "any", false, false, false, 196);
                echo "\">
\t\t\t\t\t\t<i class=\"icon fa-commenting-o fa-fw icon-lg\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 197
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "CONTACT_USER", [], "any", false, false, false, 197);
                echo "</span>
\t\t\t\t\t</a>
\t\t\t\t\t<div class=\"dropdown\">
\t\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t\t<div class=\"dropdown-contents contact-icons\">
\t\t\t\t\t\t\t";
                // line 202
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["postrow"], "contact", [], "any", false, false, false, 202));
                foreach ($context['_seq'] as $context["_key"] => $context["contact"]) {
                    // line 203
                    echo "\t\t\t\t\t\t\t\t";
                    $context["REMAINDER"] = (twig_get_attribute($this->env, $this->source, $context["contact"], "S_ROW_COUNT", [], "any", false, false, false, 203) % 4);
                    // line 204
                    echo "\t\t\t\t\t\t\t\t";
                    $value = ((($context["REMAINDER"] ?? null) == 3) || (twig_get_attribute($this->env, $this->source, $context["contact"], "S_LAST_ROW", [], "any", false, false, false, 204) && (twig_get_attribute($this->env, $this->source, $context["contact"], "S_NUM_ROWS", [], "any", false, false, false, 204) < 4)));
                    $context['definition']->set('S_LAST_CELL', $value);
                    // line 205
                    echo "\t\t\t\t\t\t\t\t";
                    if ((($context["REMAINDER"] ?? null) == 0)) {
                        // line 206
                        echo "\t\t\t\t\t\t\t\t\t<div>
\t\t\t\t\t\t\t\t";
                    }
                    // line 208
                    echo "\t\t\t\t\t\t\t\t\t<a href=\"";
                    if (twig_get_attribute($this->env, $this->source, $context["contact"], "U_CONTACT", [], "any", false, false, false, 208)) {
                        echo twig_get_attribute($this->env, $this->source, $context["contact"], "U_CONTACT", [], "any", false, false, false, 208);
                    } else {
                        echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_POST_AUTHOR", [], "any", false, false, false, 208);
                    }
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["contact"], "NAME", [], "any", false, false, false, 208);
                    echo "\"";
                    if (twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "S_LAST_CELL", [], "any", false, false, false, 208)) {
                        echo " class=\"last-cell\"";
                    }
                    if ((twig_get_attribute($this->env, $this->source, $context["contact"], "ID", [], "any", false, false, false, 208) == "jabber")) {
                        echo " onclick=\"popup(this.href, 750, 320); return false;\"";
                    }
                    echo ">
\t\t\t\t\t\t\t\t\t\t<span class=\"contact-icon ";
                    // line 209
                    echo twig_get_attribute($this->env, $this->source, $context["contact"], "ID", [], "any", false, false, false, 209);
                    echo "-icon\">";
                    echo twig_get_attribute($this->env, $this->source, $context["contact"], "NAME", [], "any", false, false, false, 209);
                    echo "</span>
\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t";
                    // line 211
                    if (((($context["REMAINDER"] ?? null) == 3) || twig_get_attribute($this->env, $this->source, $context["contact"], "S_LAST_ROW", [], "any", false, false, false, 211))) {
                        // line 212
                        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
                    }
                    // line 214
                    echo "\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['contact'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 215
                echo "\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</dd>
\t\t";
            }
            // line 220
            echo "\t\t";
            // line 221
            echo "
\t\t</dl>

\t\t<div class=\"postbody\">
\t\t\t";
            // line 225
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_POST_HIDDEN", [], "any", false, false, false, 225)) {
                // line 226
                echo "\t\t\t\t";
                if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_POST_DELETED", [], "any", false, false, false, 226)) {
                    // line 227
                    echo "\t\t\t\t\t<div class=\"ignore\" id=\"post_hidden";
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ID", [], "any", false, false, false, 227);
                    echo "\">
\t\t\t\t\t\t";
                    // line 228
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "L_POST_DELETED_MESSAGE", [], "any", false, false, false, 228);
                    echo "<br />
\t\t\t\t\t\t";
                    // line 229
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "L_POST_DISPLAY", [], "any", false, false, false, 229);
                    echo "
\t\t\t\t\t</div>
\t\t\t\t";
                } elseif (twig_get_attribute($this->env, $this->source,                 // line 231
$context["postrow"], "S_IGNORE_POST", [], "any", false, false, false, 231)) {
                    // line 232
                    echo "\t\t\t\t\t<div class=\"ignore\" id=\"post_hidden";
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ID", [], "any", false, false, false, 232);
                    echo "\">
\t\t\t\t\t\t";
                    // line 233
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "L_IGNORE_POST", [], "any", false, false, false, 233);
                    echo "<br />
\t\t\t\t\t\t";
                    // line 234
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "L_POST_DISPLAY", [], "any", false, false, false, 234);
                    echo "
\t\t\t\t\t</div>
\t\t\t\t";
                }
                // line 237
                echo "\t\t\t";
            }
            // line 238
            echo "\t\t\t<div id=\"post_content";
            echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ID", [], "any", false, false, false, 238);
            echo "\"";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_POST_HIDDEN", [], "any", false, false, false, 238)) {
                echo " style=\"display: none;\"";
            }
            echo ">

\t\t\t";
            // line 240
            // line 241
            echo "\t\t\t<h3 ";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_FIRST_ROW", [], "any", false, false, false, 241)) {
                echo "class=\"first\"";
            }
            echo ">";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ICON_IMG", [], "any", false, false, false, 241)) {
                echo "<img src=\"";
                echo ($context["T_ICONS_PATH"] ?? null);
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ICON_IMG", [], "any", false, false, false, 241);
                echo "\" width=\"";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ICON_IMG_WIDTH", [], "any", false, false, false, 241);
                echo "\" height=\"";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ICON_IMG_HEIGHT", [], "any", false, false, false, 241);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ICON_IMG_ALT", [], "any", false, false, false, 241);
                echo "\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ICON_IMG_ALT", [], "any", false, false, false, 241);
                echo "\" /> ";
            }
            echo "<a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_MINI_POST", [], "any", false, false, false, 241);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_SUBJECT", [], "any", false, false, false, 241);
            echo "</a></h3>

\t\t";
            // line 243
            $value = (((((twig_get_attribute($this->env, $this->source, $context["postrow"], "U_EDIT", [], "any", false, false, false, 243) || twig_get_attribute($this->env, $this->source, $context["postrow"], "U_DELETE", [], "any", false, false, false, 243)) || twig_get_attribute($this->env, $this->source, $context["postrow"], "U_REPORT", [], "any", false, false, false, 243)) || twig_get_attribute($this->env, $this->source, $context["postrow"], "U_WARN", [], "any", false, false, false, 243)) || twig_get_attribute($this->env, $this->source, $context["postrow"], "U_INFO", [], "any", false, false, false, 243)) || twig_get_attribute($this->env, $this->source, $context["postrow"], "U_QUOTE", [], "any", false, false, false, 243));
            $context['definition']->set('SHOW_POST_BUTTONS', $value);
            // line 244
            echo "\t\t";
            // line 245
            echo "\t\t";
            if ( !($context["S_IS_BOT"] ?? null)) {
                // line 246
                echo "\t\t\t";
                if (twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SHOW_POST_BUTTONS", [], "any", false, false, false, 246)) {
                    // line 247
                    echo "\t\t\t\t<ul class=\"post-buttons\">
\t\t\t\t\t";
                    // line 248
                    // line 249
                    echo "\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["postrow"], "U_EDIT", [], "any", false, false, false, 249)) {
                        // line 250
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 251
                        echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_EDIT", [], "any", false, false, false, 251);
                        echo "\" title=\"";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("EDIT_POST");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-pencil fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 252
                        echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_EDIT");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 256
                    echo "\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["postrow"], "U_DELETE", [], "any", false, false, false, 256)) {
                        // line 257
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 258
                        echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_DELETE", [], "any", false, false, false, 258);
                        echo "\" title=\"";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("DELETE_POST");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-times fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 259
                        echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_DELETE");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 263
                    echo "\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["postrow"], "U_REPORT", [], "any", false, false, false, 263)) {
                        // line 264
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 265
                        echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_REPORT", [], "any", false, false, false, 265);
                        echo "\" title=\"";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("REPORT_POST");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-exclamation fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 266
                        echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_REPORT");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 270
                    echo "\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["postrow"], "U_WARN", [], "any", false, false, false, 270)) {
                        // line 271
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 272
                        echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_WARN", [], "any", false, false, false, 272);
                        echo "\" title=\"";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("WARN_USER");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-exclamation-triangle fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 273
                        echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_WARN");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 277
                    echo "\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["postrow"], "U_INFO", [], "any", false, false, false, 277)) {
                        // line 278
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 279
                        echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_INFO", [], "any", false, false, false, 279);
                        echo "\" title=\"";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("INFORMATION");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-info fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 280
                        echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_INFORMATION");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 284
                    echo "\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["postrow"], "U_QUOTE", [], "any", false, false, false, 284)) {
                        // line 285
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 286
                        echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_QUOTE", [], "any", false, false, false, 286);
                        echo "\" title=\"";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("REPLY_WITH_QUOTE");
                        echo "\" class=\"button button-icon-only\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-quote-left fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 287
                        echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_QUOTE");
                        echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 291
                    echo "\t\t\t\t\t";
                    // line 292
                    echo "\t\t\t\t</ul>
\t\t\t";
                }
                // line 294
                echo "\t\t";
            }
            // line 295
            echo "\t\t";
            // line 296
            echo "
\t\t\t";
            // line 297
            // line 298
            echo "\t\t\t<p class=\"author\">
\t\t\t\t";
            // line 299
            if (($context["S_IS_BOT"] ?? null)) {
                // line 300
                echo "\t\t\t\t\t<span><i class=\"icon fa-file fa-fw ";
                if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_UNREAD_POST", [], "any", false, false, false, 300)) {
                    echo "icon-red";
                } else {
                    echo "icon-lightgray";
                }
                echo " icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "MINI_POST", [], "any", false, false, false, 300);
                echo "</span></span>
\t\t\t\t";
            } else {
                // line 302
                echo "\t\t\t\t\t<a class=\"unread\" href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_MINI_POST", [], "any", false, false, false, 302);
                echo "\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "MINI_POST", [], "any", false, false, false, 302);
                echo "\">
\t\t\t\t\t\t<i class=\"icon fa-file fa-fw ";
                // line 303
                if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_UNREAD_POST", [], "any", false, false, false, 303)) {
                    echo "icon-red";
                } else {
                    echo "icon-lightgray";
                }
                echo " icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "MINI_POST", [], "any", false, false, false, 303);
                echo "</span>
\t\t\t\t\t</a>
\t\t\t\t";
            }
            // line 306
            echo "\t\t\t\t<span class=\"responsive-hide\">";
            echo $this->extensions['phpbb\template\twig\extension']->lang("POST_BY_AUTHOR");
            echo " <strong>";
            echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_AUTHOR_FULL", [], "any", false, false, false, 306);
            echo "</strong> &raquo; </span><time datetime=\"";
            echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_DATE_RFC3339", [], "any", false, false, false, 306);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_DATE", [], "any", false, false, false, 306);
            echo "</time>
\t\t\t</p>
\t\t\t";
            // line 308
            // line 309
            echo "
\t\t\t";
            // line 310
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_POST_UNAPPROVED", [], "any", false, false, false, 310)) {
                // line 311
                echo "\t\t\t";
                if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_CAN_APPROVE", [], "any", false, false, false, 311)) {
                    // line 312
                    echo "\t\t\t<form method=\"post\" class=\"mcp_approve\" action=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_APPROVE_ACTION", [], "any", false, false, false, 312);
                    echo "\">
\t\t\t\t<p class=\"post-notice unapproved\">
\t\t\t\t\t<strong>";
                    // line 314
                    echo $this->extensions['phpbb\template\twig\extension']->lang("POST_UNAPPROVED_ACTION");
                    echo "</strong>
\t\t\t\t\t<input class=\"button2\" type=\"submit\" value=\"";
                    // line 315
                    echo $this->extensions['phpbb\template\twig\extension']->lang("DISAPPROVE");
                    echo "\" name=\"action[disapprove]\" />
\t\t\t\t\t<input class=\"button1\" type=\"submit\" value=\"";
                    // line 316
                    echo $this->extensions['phpbb\template\twig\extension']->lang("APPROVE");
                    echo "\" name=\"action[approve]\" />
\t\t\t\t\t<input type=\"hidden\" name=\"post_id_list[]\" value=\"";
                    // line 317
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ID", [], "any", false, false, false, 317);
                    echo "\" />
\t\t\t\t\t";
                    // line 318
                    echo ($context["S_FORM_TOKEN"] ?? null);
                    echo "
\t\t\t\t</p>
\t\t\t</form>
\t\t\t";
                } else {
                    // line 322
                    echo "\t\t\t\t<p class=\"post-notice unapproved\">
\t\t\t\t\t<span><i class=\"icon fa-exclamation icon-red fa-fw\" aria-hidden=\"true\"></i></span>
\t\t\t\t\t<strong>";
                    // line 324
                    echo $this->extensions['phpbb\template\twig\extension']->lang("POST_UNAPPROVED_EXPLAIN");
                    echo "</strong>
\t\t\t\t</p>
\t\t\t";
                }
                // line 327
                echo "\t\t\t";
            } elseif (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_POST_DELETED", [], "any", false, false, false, 327)) {
                // line 328
                echo "\t\t\t<form method=\"post\" class=\"mcp_approve\" action=\"";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_APPROVE_ACTION", [], "any", false, false, false, 328);
                echo "\">
\t\t\t\t<p class=\"post-notice deleted\">
\t\t\t\t\t<strong>";
                // line 330
                echo $this->extensions['phpbb\template\twig\extension']->lang("POST_DELETED_ACTION");
                echo "</strong>
\t\t\t\t\t";
                // line 331
                if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_DELETE_PERMANENT", [], "any", false, false, false, 331)) {
                    // line 332
                    echo "\t\t\t\t\t\t<input class=\"button2\" type=\"submit\" value=\"";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("DELETE");
                    echo "\" name=\"action[delete]\" />
\t\t\t\t\t";
                }
                // line 334
                echo "\t\t\t\t\t<input class=\"button1\" type=\"submit\" value=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("RESTORE");
                echo "\" name=\"action[restore]\" />
\t\t\t\t\t<input type=\"hidden\" name=\"post_id_list[]\" value=\"";
                // line 335
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ID", [], "any", false, false, false, 335);
                echo "\" />
\t\t\t\t\t";
                // line 336
                echo ($context["S_FORM_TOKEN"] ?? null);
                echo "
\t\t\t\t</p>
\t\t\t</form>
\t\t\t";
            }
            // line 340
            echo "
\t\t\t";
            // line 341
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_POST_REPORTED", [], "any", false, false, false, 341)) {
                // line 342
                echo "\t\t\t<p class=\"post-notice reported\">
\t\t\t\t<a href=\"";
                // line 343
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "U_MCP_REPORT", [], "any", false, false, false, 343);
                echo "\"><i class=\"icon fa-exclamation fa-fw icon-red\" aria-hidden=\"true\"></i><strong>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("POST_REPORTED");
                echo "</strong></a>
\t\t\t</p>
\t\t\t";
            }
            // line 346
            echo "
\t\t\t<div class=\"content\">";
            // line 347
            echo twig_get_attribute($this->env, $this->source, $context["postrow"], "MESSAGE", [], "any", false, false, false, 347);
            echo "</div>

\t\t\t";
            // line 349
            // line 350
            echo "
\t\t\t";
            // line 351
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_HAS_ATTACHMENTS", [], "any", false, false, false, 351)) {
                // line 352
                echo "\t\t\t\t<dl class=\"attachbox\">
\t\t\t\t\t<dt>
\t\t\t\t\t\t";
                // line 354
                echo $this->extensions['phpbb\template\twig\extension']->lang("ATTACHMENTS");
                echo "
\t\t\t\t\t</dt>
\t\t\t\t\t";
                // line 356
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["postrow"], "attachment", [], "any", false, false, false, 356));
                foreach ($context['_seq'] as $context["_key"] => $context["attachment"]) {
                    // line 357
                    echo "\t\t\t\t\t\t<dd>";
                    echo twig_get_attribute($this->env, $this->source, $context["attachment"], "DISPLAY_ATTACHMENT", [], "any", false, false, false, 357);
                    echo "</dd>
\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attachment'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 359
                echo "\t\t\t\t</dl>
\t\t\t";
            }
            // line 361
            echo "
\t\t\t";
            // line 362
            // line 363
            echo "\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "S_DISPLAY_NOTICE", [], "any", false, false, false, 363)) {
                echo "<div class=\"rules\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("DOWNLOAD_NOTICE");
                echo "</div>";
            }
            // line 364
            echo "\t\t\t";
            if ((twig_get_attribute($this->env, $this->source, $context["postrow"], "DELETED_MESSAGE", [], "any", false, false, false, 364) || twig_get_attribute($this->env, $this->source, $context["postrow"], "DELETE_REASON", [], "any", false, false, false, 364))) {
                // line 365
                echo "\t\t\t\t<div class=\"notice post_deleted_msg\">
\t\t\t\t\t";
                // line 366
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "DELETED_MESSAGE", [], "any", false, false, false, 366);
                echo "
\t\t\t\t\t";
                // line 367
                if (twig_get_attribute($this->env, $this->source, $context["postrow"], "DELETE_REASON", [], "any", false, false, false, 367)) {
                    echo "<br /><strong>";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("REASON");
                    echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                    echo "</strong> <em>";
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "DELETE_REASON", [], "any", false, false, false, 367);
                    echo "</em>";
                }
                // line 368
                echo "\t\t\t\t</div>
\t\t\t";
            } elseif ((twig_get_attribute($this->env, $this->source,             // line 369
$context["postrow"], "EDITED_MESSAGE", [], "any", false, false, false, 369) || twig_get_attribute($this->env, $this->source, $context["postrow"], "EDIT_REASON", [], "any", false, false, false, 369))) {
                // line 370
                echo "\t\t\t\t<div class=\"notice\">
\t\t\t\t\t";
                // line 371
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "EDITED_MESSAGE", [], "any", false, false, false, 371);
                echo "
\t\t\t\t\t";
                // line 372
                if (twig_get_attribute($this->env, $this->source, $context["postrow"], "EDIT_REASON", [], "any", false, false, false, 372)) {
                    echo "<br /><strong>";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("REASON");
                    echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                    echo "</strong> <em>";
                    echo twig_get_attribute($this->env, $this->source, $context["postrow"], "EDIT_REASON", [], "any", false, false, false, 372);
                    echo "</em>";
                }
                // line 373
                echo "\t\t\t\t</div>
\t\t\t";
            }
            // line 375
            echo "
\t\t\t";
            // line 376
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "BUMPED_MESSAGE", [], "any", false, false, false, 376)) {
                echo "<div class=\"notice\"><br /><br />";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "BUMPED_MESSAGE", [], "any", false, false, false, 376);
                echo "</div>";
            }
            // line 377
            echo "\t\t\t";
            // line 378
            echo "\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["postrow"], "SIGNATURE", [], "any", false, false, false, 378)) {
                echo "<div id=\"sig";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "POST_ID", [], "any", false, false, false, 378);
                echo "\" class=\"signature\">";
                echo twig_get_attribute($this->env, $this->source, $context["postrow"], "SIGNATURE", [], "any", false, false, false, 378);
                echo "</div>";
            }
            // line 379
            echo "
\t\t\t";
            // line 380
            // line 381
            echo "\t\t\t</div>

\t\t</div>

\t\t</div>
\t\t";
            // line 386
            // line 387
            echo "\t\t<div class=\"back2top\">
\t\t\t";
            // line 388
            // line 389
            echo "\t\t\t<a href=\"#top\" class=\"top\" title=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("BACK_TO_TOP");
            echo "\">
\t\t\t\t<i class=\"icon fa-chevron-circle-up fa-fw icon-gray\" aria-hidden=\"true\"></i>
\t\t\t\t<span class=\"sr-only\">";
            // line 391
            echo $this->extensions['phpbb\template\twig\extension']->lang("BACK_TO_TOP");
            echo "</span>
\t\t\t</a>
\t\t\t";
            // line 393
            // line 394
            echo "\t\t</div>
\t\t";
            // line 395
            // line 396
            echo "\t</div>

\t";
            // line 398
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['postrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 400
        echo "
";
        // line 401
        if (($context["S_QUICK_REPLY"] ?? null)) {
            // line 402
            echo "\t";
            $location = "quickreply_editor.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("quickreply_editor.html", "viewtopic_body.html", 402)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 404
        echo "
";
        // line 405
        // line 406
        echo "\t<div class=\"action-bar bar-bottom\">
\t";
        // line 407
        // line 408
        echo "
\t";
        // line 409
        if (( !($context["S_IS_BOT"] ?? null) && ($context["S_DISPLAY_REPLY_INFO"] ?? null))) {
            // line 410
            echo "\t\t<a href=\"";
            echo ($context["U_POST_REPLY_TOPIC"] ?? null);
            echo "\" class=\"button\" title=\"";
            if (($context["S_IS_LOCKED"] ?? null)) {
                echo $this->extensions['phpbb\template\twig\extension']->lang("TOPIC_LOCKED");
            } else {
                echo $this->extensions['phpbb\template\twig\extension']->lang("POST_REPLY");
            }
            echo "\">
\t\t\t";
            // line 411
            if (($context["S_IS_LOCKED"] ?? null)) {
                // line 412
                echo "\t\t\t\t<span>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_TOPIC_LOCKED");
                echo "</span> <i class=\"icon fa-lock fa-fw\" aria-hidden=\"true\"></i>
\t\t\t";
            } else {
                // line 414
                echo "\t\t\t\t<span>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_POST_REPLY");
                echo "</span> <i class=\"icon fa-reply fa-fw\" aria-hidden=\"true\"></i>
\t\t\t";
            }
            // line 416
            echo "\t\t</a>
\t";
        }
        // line 418
        echo "\t";
        // line 419
        echo "
\t";
        // line 420
        $location = "viewtopic_topic_tools.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("viewtopic_topic_tools.html", "viewtopic_body.html", 420)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 421
        echo "
\t";
        // line 422
        if ((((($context["S_NUM_POSTS"] ?? null) > 1) || twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "pagination", [], "any", false, false, false, 422))) &&  !($context["S_IS_BOT"] ?? null))) {
            // line 423
            echo "\t\t<form method=\"post\" action=\"";
            echo ($context["S_TOPIC_ACTION"] ?? null);
            echo "\">
\t\t";
            // line 424
            $location = "display_options.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("display_options.html", "viewtopic_body.html", 424)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
            // line 425
            echo "\t\t</form>
\t";
        }
        // line 427
        echo "
\t";
        // line 428
        if (twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "quickmod", [], "any", false, false, false, 428))) {
            // line 429
            echo "\t<div class=\"quickmod dropdown-container dropdown-container-left dropdown-up dropdown-";
            echo ($context["S_CONTENT_FLOW_END"] ?? null);
            echo " dropdown-button-control\" id=\"quickmod\">
\t\t<span title=\"";
            // line 430
            echo $this->extensions['phpbb\template\twig\extension']->lang("QUICK_MOD");
            echo "\" class=\"button button-secondary dropdown-trigger dropdown-select\">
\t\t\t<i class=\"icon fa-gavel fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
            // line 431
            echo $this->extensions['phpbb\template\twig\extension']->lang("QUICK_MOD");
            echo "</span>
\t\t\t<span class=\"caret\"><i class=\"icon fa-sort-down fa-fw\" aria-hidden=\"true\"></i></span>
\t\t</span>
\t\t<div class=\"dropdown\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t";
            // line 437
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "quickmod", [], "any", false, false, false, 437));
            foreach ($context['_seq'] as $context["_key"] => $context["quickmod"]) {
                // line 438
                echo "\t\t\t\t\t";
                $value = twig_in_filter(twig_get_attribute($this->env, $this->source, $context["quickmod"], "VALUE", [], "any", false, false, false, 438), [0 => "lock", 1 => "unlock", 2 => "delete_topic", 3 => "restore_topic", 4 => "make_normal", 5 => "make_sticky", 6 => "make_announce", 7 => "make_global"]);
                $context['definition']->set('QUICKMOD_AJAX', $value);
                // line 439
                echo "\t\t\t\t\t<li><a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["quickmod"], "LINK", [], "any", false, false, false, 439);
                echo "\"";
                if (twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "QUICKMOD_AJAX", [], "any", false, false, false, 439)) {
                    echo " data-ajax=\"true\" data-refresh=\"true\"";
                }
                echo ">";
                echo twig_get_attribute($this->env, $this->source, $context["quickmod"], "TITLE", [], "any", false, false, false, 439);
                echo "</a></li>
\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['quickmod'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 441
            echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t</div>
\t";
        }
        // line 445
        echo "
\t";
        // line 446
        // line 447
        echo "
\t";
        // line 448
        if ((twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "pagination", [], "any", false, false, false, 448)) || ($context["TOTAL_POSTS"] ?? null))) {
            // line 449
            echo "\t\t<div class=\"pagination\">
\t\t\t";
            // line 450
            echo ($context["TOTAL_POSTS"] ?? null);
            echo "
\t\t\t";
            // line 451
            if (twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "pagination", [], "any", false, false, false, 451))) {
                // line 452
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewtopic_body.html", 452)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 453
                echo "\t\t\t";
            } else {
                // line 454
                echo "\t\t\t\t&bull; ";
                echo ($context["PAGE_NUMBER"] ?? null);
                echo "
\t\t\t";
            }
            // line 456
            echo "\t\t</div>
\t";
        }
        // line 458
        echo "</div>

";
        // line 460
        // line 461
        $location = "jumpbox.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("jumpbox.html", "viewtopic_body.html", 461)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 462
        echo "
";
        // line 463
        if ((($context["S_DISPLAY_ONLINE_LIST"] ?? null) && ($context["U_VIEWONLINE"] ?? null))) {
            // line 464
            echo "\t<div class=\"stat-block online-list\">
\t\t<h3><a href=\"";
            // line 465
            echo ($context["U_VIEWONLINE"] ?? null);
            echo "\">";
            echo $this->extensions['phpbb\template\twig\extension']->lang("WHO_IS_ONLINE");
            echo "</a></h3>
\t\t<p>";
            // line 466
            echo ($context["LOGGED_IN_USER_LIST"] ?? null);
            echo "</p>
\t</div>
";
        }
        // line 469
        echo "
";
        // line 470
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "viewtopic_body.html", 470)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "viewtopic_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  1642 => 470,  1639 => 469,  1633 => 466,  1627 => 465,  1624 => 464,  1622 => 463,  1619 => 462,  1607 => 461,  1606 => 460,  1602 => 458,  1598 => 456,  1592 => 454,  1589 => 453,  1576 => 452,  1574 => 451,  1570 => 450,  1567 => 449,  1565 => 448,  1562 => 447,  1561 => 446,  1558 => 445,  1552 => 441,  1537 => 439,  1533 => 438,  1529 => 437,  1520 => 431,  1516 => 430,  1511 => 429,  1509 => 428,  1506 => 427,  1502 => 425,  1490 => 424,  1485 => 423,  1483 => 422,  1480 => 421,  1468 => 420,  1465 => 419,  1463 => 418,  1459 => 416,  1453 => 414,  1447 => 412,  1445 => 411,  1434 => 410,  1432 => 409,  1429 => 408,  1428 => 407,  1425 => 406,  1424 => 405,  1421 => 404,  1407 => 402,  1405 => 401,  1402 => 400,  1397 => 398,  1393 => 396,  1392 => 395,  1389 => 394,  1388 => 393,  1383 => 391,  1377 => 389,  1376 => 388,  1373 => 387,  1372 => 386,  1365 => 381,  1364 => 380,  1361 => 379,  1352 => 378,  1350 => 377,  1344 => 376,  1341 => 375,  1337 => 373,  1328 => 372,  1324 => 371,  1321 => 370,  1319 => 369,  1316 => 368,  1307 => 367,  1303 => 366,  1300 => 365,  1297 => 364,  1290 => 363,  1289 => 362,  1286 => 361,  1282 => 359,  1273 => 357,  1269 => 356,  1264 => 354,  1260 => 352,  1258 => 351,  1255 => 350,  1254 => 349,  1249 => 347,  1246 => 346,  1238 => 343,  1235 => 342,  1233 => 341,  1230 => 340,  1223 => 336,  1219 => 335,  1214 => 334,  1208 => 332,  1206 => 331,  1202 => 330,  1196 => 328,  1193 => 327,  1187 => 324,  1183 => 322,  1176 => 318,  1172 => 317,  1168 => 316,  1164 => 315,  1160 => 314,  1154 => 312,  1151 => 311,  1149 => 310,  1146 => 309,  1145 => 308,  1133 => 306,  1121 => 303,  1114 => 302,  1102 => 300,  1100 => 299,  1097 => 298,  1096 => 297,  1093 => 296,  1091 => 295,  1088 => 294,  1084 => 292,  1082 => 291,  1075 => 287,  1069 => 286,  1066 => 285,  1063 => 284,  1056 => 280,  1050 => 279,  1047 => 278,  1044 => 277,  1037 => 273,  1031 => 272,  1028 => 271,  1025 => 270,  1018 => 266,  1012 => 265,  1009 => 264,  1006 => 263,  999 => 259,  993 => 258,  990 => 257,  987 => 256,  980 => 252,  974 => 251,  971 => 250,  968 => 249,  967 => 248,  964 => 247,  961 => 246,  958 => 245,  956 => 244,  953 => 243,  926 => 241,  925 => 240,  915 => 238,  912 => 237,  906 => 234,  902 => 233,  897 => 232,  895 => 231,  890 => 229,  886 => 228,  881 => 227,  878 => 226,  876 => 225,  870 => 221,  868 => 220,  861 => 215,  855 => 214,  851 => 212,  849 => 211,  842 => 209,  824 => 208,  820 => 206,  817 => 205,  813 => 204,  810 => 203,  806 => 202,  798 => 197,  794 => 196,  790 => 195,  785 => 194,  782 => 193,  779 => 192,  778 => 191,  775 => 190,  773 => 189,  767 => 188,  756 => 186,  753 => 185,  748 => 184,  747 => 183,  744 => 182,  736 => 180,  733 => 179,  731 => 178,  728 => 177,  718 => 176,  708 => 175,  691 => 174,  688 => 173,  686 => 172,  675 => 171,  674 => 170,  670 => 168,  668 => 167,  659 => 166,  658 => 165,  655 => 164,  653 => 163,  650 => 162,  637 => 161,  634 => 160,  633 => 159,  618 => 157,  610 => 156,  582 => 153,  572 => 151,  569 => 150,  567 => 149,  563 => 148,  560 => 147,  559 => 146,  556 => 145,  548 => 140,  544 => 139,  537 => 135,  534 => 134,  526 => 131,  522 => 129,  520 => 128,  517 => 127,  511 => 124,  507 => 122,  505 => 121,  496 => 118,  489 => 116,  486 => 115,  480 => 114,  479 => 113,  466 => 111,  443 => 110,  417 => 109,  405 => 108,  385 => 107,  383 => 106,  379 => 105,  365 => 102,  361 => 101,  351 => 95,  349 => 94,  346 => 93,  345 => 92,  341 => 90,  339 => 89,  335 => 87,  329 => 85,  326 => 84,  313 => 83,  311 => 82,  300 => 81,  297 => 80,  295 => 79,  292 => 78,  284 => 73,  279 => 71,  273 => 70,  268 => 68,  264 => 67,  260 => 66,  255 => 64,  252 => 63,  250 => 62,  247 => 61,  245 => 60,  232 => 59,  231 => 58,  228 => 57,  224 => 55,  218 => 53,  212 => 51,  210 => 50,  199 => 49,  197 => 48,  194 => 47,  193 => 46,  189 => 44,  183 => 40,  178 => 38,  173 => 37,  165 => 35,  163 => 34,  154 => 31,  152 => 30,  149 => 29,  136 => 26,  133 => 25,  131 => 24,  128 => 23,  122 => 22,  119 => 21,  118 => 20,  109 => 19,  108 => 18,  105 => 17,  93 => 16,  87 => 13,  74 => 9,  58 => 8,  55 => 7,  52 => 6,  44 => 4,  41 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "viewtopic_body.html", "");
    }
}

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

/* viewforum_body.html */
class __TwigTemplate_445800fdf75c841ccbae20c3e6aeb5709a88cccb3f3f65a79ccfba7067d95d7c extends \Twig\Template
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
        echo "\t";
        if ((($context["S_HAS_SUBFORUM"] ?? null) && ($context["U_MARK_FORUMS"] ?? null))) {
            // line 3
            echo "\t\t<li class=\"small-icon icon-mark\"><a href=\"";
            echo ($context["U_MARK_FORUMS"] ?? null);
            echo "\" data-ajax=\"mark_forums_read\">";
            echo $this->extensions['phpbb\template\twig\extension']->lang("MARK_SUBFORUMS_READ");
            echo "</a></li>
\t";
        }
        // line 5
        echo "\t";
        if ((( !($context["S_IS_BOT"] ?? null) && ($context["U_MARK_TOPICS"] ?? null)) && twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "topicrow", [], "any", false, false, false, 5)))) {
            // line 6
            echo "\t\t<li class=\"small-icon icon-mark\"><a href=\"";
            echo ($context["U_MARK_TOPICS"] ?? null);
            echo "\" accesskey=\"m\" data-ajax=\"mark_topics_read\">";
            echo $this->extensions['phpbb\template\twig\extension']->lang("MARK_TOPICS_READ");
            echo "</a></li>
\t";
        }
        // line 8
        $value = 1;
        $context['definition']->set('NAVLINKS_SHOW_DEFAULT', $value);
        $value = ('' === $value = ob_get_clean()) ? '' : new \Twig_Markup($value, $this->env->getCharset());
        $context['definition']->set('NAVLINKS', $value);
        // line 10
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "viewforum_body.html", 10)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 11
        // line 12
        echo "<h2 class=\"forum-title\">";
        echo "<a href=\"";
        echo ($context["U_VIEW_FORUM"] ?? null);
        echo "\">";
        echo ($context["FORUM_NAME"] ?? null);
        echo "</a>";
        echo "</h2>
";
        // line 13
        // line 14
        if (((($context["FORUM_DESC"] ?? null) || ($context["MODERATORS"] ?? null)) || ($context["U_MCP"] ?? null))) {
            // line 15
            echo "<div>
\t<!-- NOTE: remove the style=\"display: none\" when you want to have the forum description on the forum body -->
\t";
            // line 17
            if (($context["FORUM_DESC"] ?? null)) {
                echo "<div style=\"display: none !important;\">";
                echo ($context["FORUM_DESC"] ?? null);
                echo "<br /></div>";
            }
            // line 18
            echo "\t";
            if (($context["MODERATORS"] ?? null)) {
                echo "<p><strong>";
                if (($context["S_SINGLE_MODERATOR"] ?? null)) {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("MODERATOR");
                } else {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("MODERATORS");
                }
                echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                echo "</strong> ";
                echo ($context["MODERATORS"] ?? null);
                echo "</p>";
            }
            // line 19
            echo "</div>
";
        }
        // line 21
        echo "
";
        // line 22
        if (($context["S_FORUM_RULES"] ?? null)) {
            // line 23
            echo "\t<div class=\"rules";
            if (($context["U_FORUM_RULES"] ?? null)) {
                echo " rules-link";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t";
            // line 26
            if (($context["U_FORUM_RULES"] ?? null)) {
                // line 27
                echo "\t\t\t<a href=\"";
                echo ($context["U_FORUM_RULES"] ?? null);
                echo "\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FORUM_RULES");
                echo "</a>
\t\t";
            } else {
                // line 29
                echo "\t\t\t<strong>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FORUM_RULES");
                echo "</strong><br />
\t\t\t";
                // line 30
                echo ($context["FORUM_RULES"] ?? null);
                echo "
\t\t";
            }
            // line 32
            echo "
\t\t</div>
\t</div>
";
        }
        // line 36
        echo "
";
        // line 37
        if (($context["S_HAS_SUBFORUM"] ?? null)) {
            // line 38
            echo "\t";
            $location = "forumlist_body.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("forumlist_body.html", "viewforum_body.html", 38)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 40
        echo "
";
        // line 41
        if ((((($context["S_DISPLAY_POST_INFO"] ?? null) || twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "pagination", [], "any", false, false, false, 41))) || ($context["TOTAL_POSTS"] ?? null)) || ($context["TOTAL_TOPICS"] ?? null))) {
            // line 42
            echo "\t<div class=\"action-bar bar-top\">

\t";
            // line 44
            if (( !($context["S_IS_BOT"] ?? null) && ($context["S_DISPLAY_POST_INFO"] ?? null))) {
                // line 45
                echo "\t\t\t";
                // line 46
                echo "
\t\t<a href=\"";
                // line 47
                echo ($context["U_POST_NEW_TOPIC"] ?? null);
                echo "\" class=\"button\" title=\"";
                if (($context["S_IS_LOCKED"] ?? null)) {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("FORUM_LOCKED");
                } else {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("POST_TOPIC");
                }
                echo "\">
\t\t\t";
                // line 48
                if (($context["S_IS_LOCKED"] ?? null)) {
                    // line 49
                    echo "\t\t\t\t<span>";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_FORUM_LOCKED");
                    echo "</span> <i class=\"icon fa-lock fa-fw\" aria-hidden=\"true\"></i>
\t\t\t";
                } else {
                    // line 51
                    echo "\t\t\t\t<span>";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_NEW_TOPIC");
                    echo "</span> <i class=\"icon fa-pencil fa-fw\" aria-hidden=\"true\"></i>
\t\t\t";
                }
                // line 53
                echo "\t\t</a>
\t\t\t";
                // line 54
                // line 55
                echo "
\t";
            }
            // line 57
            echo "
\t";
            // line 58
            if (($context["S_DISPLAY_SEARCHBOX"] ?? null)) {
                // line 59
                echo "\t\t<div class=\"search-box\" role=\"search\">
\t\t\t<form method=\"get\" id=\"forum-search\" action=\"";
                // line 60
                echo ($context["S_SEARCHBOX_ACTION"] ?? null);
                echo "\">
\t\t\t<fieldset>
\t\t\t\t<input class=\"inputbox search tiny\" type=\"search\" name=\"keywords\" id=\"search_keywords\" size=\"20\" placeholder=\"";
                // line 62
                echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_FORUM");
                echo "\" />
\t\t\t\t<button class=\"button button-search\" type=\"submit\" title=\"";
                // line 63
                echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH");
                echo "\">
\t\t\t\t\t<i class=\"icon fa-search fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 64
                echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH");
                echo "</span>
\t\t\t\t</button>
\t\t\t\t<a href=\"";
                // line 66
                echo ($context["U_SEARCH"] ?? null);
                echo "\" class=\"button button-search-end\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_ADV");
                echo "\">
\t\t\t\t\t<i class=\"icon fa-cog fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 67
                echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_ADV");
                echo "</span>
\t\t\t\t</a>
\t\t\t\t";
                // line 69
                echo ($context["S_SEARCH_LOCAL_HIDDEN_FIELDS"] ?? null);
                echo "
\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>
\t";
            }
            // line 74
            echo "
\t<div class=\"pagination\">
\t\t";
            // line 76
            if ((( !($context["S_IS_BOT"] ?? null) && ($context["U_MARK_TOPICS"] ?? null)) && twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "topicrow", [], "any", false, false, false, 76)))) {
                echo "<a href=\"";
                echo ($context["U_MARK_TOPICS"] ?? null);
                echo "\" class=\"mark\" accesskey=\"m\" data-ajax=\"mark_topics_read\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("MARK_TOPICS_READ");
                echo "</a> &bull; ";
            }
            // line 77
            echo "\t\t";
            echo ($context["TOTAL_TOPICS"] ?? null);
            echo "
\t\t";
            // line 78
            if (twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "pagination", [], "any", false, false, false, 78))) {
                // line 79
                echo "\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewforum_body.html", 79)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 80
                echo "\t\t";
            } else {
                // line 81
                echo "\t\t\t&bull; ";
                echo ($context["PAGE_NUMBER"] ?? null);
                echo "
\t\t";
            }
            // line 83
            echo "\t</div>

\t</div>
";
        }
        // line 87
        echo "
";
        // line 88
        if (($context["S_NO_READ_ACCESS"] ?? null)) {
            // line 89
            echo "
\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t<strong>";
            // line 92
            echo $this->extensions['phpbb\template\twig\extension']->lang("NO_READ_ACCESS");
            echo "</strong>
\t\t</div>
\t</div>

\t";
            // line 96
            if (( !($context["S_USER_LOGGED_IN"] ?? null) &&  !($context["S_IS_BOT"] ?? null))) {
                // line 97
                echo "
\t\t<form action=\"";
                // line 98
                echo ($context["S_LOGIN_ACTION"] ?? null);
                echo "\" method=\"post\">

\t\t<div class=\"panel\">
\t\t\t<div class=\"inner\">

\t\t\t<div class=\"content\">
\t\t\t\t<h3><a href=\"";
                // line 104
                echo ($context["U_LOGIN_LOGOUT"] ?? null);
                echo "\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("LOGIN_LOGOUT");
                echo "</a>";
                if (($context["S_REGISTER_ENABLED"] ?? null)) {
                    echo "&nbsp; &bull; &nbsp;<a href=\"";
                    echo ($context["U_REGISTER"] ?? null);
                    echo "\">";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("REGISTER");
                    echo "</a>";
                }
                echo "</h3>

\t\t\t\t<fieldset class=\"fields1\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"username\">";
                // line 108
                echo $this->extensions['phpbb\template\twig\extension']->lang("USERNAME");
                echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                echo "</label></dt>
\t\t\t\t\t<dd><input type=\"text\" tabindex=\"1\" name=\"username\" id=\"username\" size=\"25\" value=\"";
                // line 109
                echo ($context["USERNAME"] ?? null);
                echo "\" class=\"inputbox autowidth\" /></dd>
\t\t\t\t</dl>
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"password\">";
                // line 112
                echo $this->extensions['phpbb\template\twig\extension']->lang("PASSWORD");
                echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                echo "</label></dt>
\t\t\t\t\t<dd><input type=\"password\" tabindex=\"2\" id=\"password\" name=\"password\" size=\"25\" class=\"inputbox autowidth\" autocomplete=\"off\" /></dd>
\t\t\t\t\t";
                // line 114
                if (($context["S_AUTOLOGIN_ENABLED"] ?? null)) {
                    echo "<dd><label for=\"autologin\"><input type=\"checkbox\" name=\"autologin\" id=\"autologin\" tabindex=\"3\" /> ";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("LOG_ME_IN");
                    echo "</label></dd>";
                }
                // line 115
                echo "\t\t\t\t\t<dd><label for=\"viewonline\"><input type=\"checkbox\" name=\"viewonline\" id=\"viewonline\" tabindex=\"4\" /> ";
                echo $this->extensions['phpbb\template\twig\extension']->lang("HIDE_ME");
                echo "</label></dd>
\t\t\t\t</dl>
\t\t\t\t<dl>
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd><input type=\"submit\" name=\"login\" tabindex=\"5\" value=\"";
                // line 119
                echo $this->extensions['phpbb\template\twig\extension']->lang("LOGIN");
                echo "\" class=\"button1\" /></dd>
\t\t\t\t</dl>
\t\t\t\t";
                // line 121
                echo ($context["S_LOGIN_REDIRECT"] ?? null);
                echo "
\t\t\t\t";
                // line 122
                echo ($context["S_FORM_TOKEN_LOGIN"] ?? null);
                echo "
\t\t\t\t</fieldset>
\t\t\t</div>

\t\t\t</div>
\t\t</div>

\t\t</form>

\t";
            }
            // line 132
            echo "
";
        }
        // line 134
        echo "
";
        // line 135
        // line 136
        echo "
";
        // line 137
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "topicrow", [], "any", false, false, false, 137));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["topicrow"]) {
            // line 138
            echo "
\t";
            // line 139
            if (( !twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_TOPIC_TYPE_SWITCH", [], "any", false, false, false, 139) &&  !twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_FIRST_ROW", [], "any", false, false, false, 139))) {
                // line 140
                echo "\t\t</ul>
\t\t</div>
\t</div>
\t";
            }
            // line 144
            echo "
\t";
            // line 145
            if ((twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_FIRST_ROW", [], "any", false, false, false, 145) ||  !twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_TOPIC_TYPE_SWITCH", [], "any", false, false, false, 145))) {
                // line 146
                echo "\t\t<div class=\"forumbg";
                if ((twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_TOPIC_TYPE_SWITCH", [], "any", false, false, false, 146) && (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POST_ANNOUNCE", [], "any", false, false, false, 146) || twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POST_GLOBAL", [], "any", false, false, false, 146)))) {
                    echo " announcement";
                }
                echo "\">
\t\t<div class=\"inner\">
\t\t<ul class=\"topiclist\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl class=\"row-item\">
\t\t\t\t\t<dt";
                // line 151
                if (($context["S_DISPLAY_ACTIVE"] ?? null)) {
                    echo " id=\"active_topics\"";
                }
                echo "><div class=\"list-inner\">";
                if (($context["S_DISPLAY_ACTIVE"] ?? null)) {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("ACTIVE_TOPICS");
                } elseif ((twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_TOPIC_TYPE_SWITCH", [], "any", false, false, false, 151) && (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POST_ANNOUNCE", [], "any", false, false, false, 151) || twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POST_GLOBAL", [], "any", false, false, false, 151)))) {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("ANNOUNCEMENTS");
                } else {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("TOPICS");
                }
                echo "</div></dt>
\t\t\t\t\t<dd class=\"posts\">";
                // line 152
                echo $this->extensions['phpbb\template\twig\extension']->lang("REPLIES");
                echo "</dd>
\t\t\t\t\t<dd class=\"views\">";
                // line 153
                echo $this->extensions['phpbb\template\twig\extension']->lang("VIEWS");
                echo "</dd>
\t\t\t\t\t<dd class=\"lastpost\"><span>";
                // line 154
                echo $this->extensions['phpbb\template\twig\extension']->lang("LAST_POST");
                echo "</span></dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist topics\">
\t";
            }
            // line 160
            echo "
\t\t";
            // line 161
            // line 162
            echo "\t\t<li class=\"row";
            if ((twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_ROW_COUNT", [], "any", false, false, false, 162) % 2 == 0)) {
                echo " bg1";
            } else {
                echo " bg2";
            }
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POST_GLOBAL", [], "any", false, false, false, 162)) {
                echo " global-announce";
            }
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POST_ANNOUNCE", [], "any", false, false, false, 162)) {
                echo " announce";
            }
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POST_STICKY", [], "any", false, false, false, 162)) {
                echo " sticky";
            }
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_TOPIC_REPORTED", [], "any", false, false, false, 162)) {
                echo " reported";
            }
            echo "\">
\t\t\t";
            // line 163
            // line 164
            echo "\t\t\t<dl class=\"row-item ";
            echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "TOPIC_IMG_STYLE", [], "any", false, false, false, 164);
            echo "\">
\t\t\t\t<dt";
            // line 165
            if ((twig_get_attribute($this->env, $this->source, $context["topicrow"], "TOPIC_ICON_IMG", [], "any", false, false, false, 165) && ($context["S_TOPIC_ICONS"] ?? null))) {
                echo " style=\"background-image: url('";
                echo ($context["T_ICONS_PATH"] ?? null);
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "TOPIC_ICON_IMG", [], "any", false, false, false, 165);
                echo "'); background-repeat: no-repeat;\"";
            }
            echo " title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "TOPIC_FOLDER_IMG_ALT", [], "any", false, false, false, 165);
            echo "\">
\t\t\t\t\t";
            // line 166
            if ((twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_UNREAD_TOPIC", [], "any", false, false, false, 166) &&  !($context["S_IS_BOT"] ?? null))) {
                echo "<a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_NEWEST_POST", [], "any", false, false, false, 166);
                echo "\" class=\"row-item-link\"></a>";
            }
            // line 167
            echo "\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t";
            // line 168
            // line 169
            echo "\t\t\t\t\t\t";
            if ((twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_UNREAD_TOPIC", [], "any", false, false, false, 169) &&  !($context["S_IS_BOT"] ?? null))) {
                // line 170
                echo "\t\t\t\t\t\t\t<a class=\"unread\" href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_NEWEST_POST", [], "any", false, false, false, 170);
                echo "\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-file fa-fw icon-red icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 171
                echo ($context["NEW_POST"] ?? null);
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
            }
            // line 174
            echo "\t\t\t\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_VIEW_TOPIC", [], "any", false, false, false, 174)) {
                echo "<a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_VIEW_TOPIC", [], "any", false, false, false, 174);
                echo "\" class=\"topictitle\">";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "TOPIC_TITLE", [], "any", false, false, false, 174);
                echo "</a>";
            } else {
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "TOPIC_TITLE", [], "any", false, false, false, 174);
            }
            // line 175
            echo "\t\t\t\t\t\t";
            if ((twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_TOPIC_UNAPPROVED", [], "any", false, false, false, 175) || twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POSTS_UNAPPROVED", [], "any", false, false, false, 175))) {
                // line 176
                echo "\t\t\t\t\t\t\t<a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_MCP_QUEUE", [], "any", false, false, false, 176);
                echo "\" title=\"";
                if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_TOPIC_UNAPPROVED", [], "any", false, false, false, 176)) {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("TOPIC_UNAPPROVED");
                } else {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("POSTS_UNAPPROVED");
                }
                echo "\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-question fa-fw icon-blue\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 177
                if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_TOPIC_UNAPPROVED", [], "any", false, false, false, 177)) {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("TOPIC_UNAPPROVED");
                } else {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("POSTS_UNAPPROVED");
                }
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
            }
            // line 180
            echo "\t\t\t\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_TOPIC_DELETED", [], "any", false, false, false, 180)) {
                // line 181
                echo "\t\t\t\t\t\t\t<a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_MCP_QUEUE", [], "any", false, false, false, 181);
                echo "\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("TOPIC_DELETED");
                echo "\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-recycle fa-fw icon-green\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 182
                echo $this->extensions['phpbb\template\twig\extension']->lang("TOPIC_DELETED");
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
            }
            // line 185
            echo "\t\t\t\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_TOPIC_REPORTED", [], "any", false, false, false, 185)) {
                // line 186
                echo "\t\t\t\t\t\t\t<a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_MCP_REPORT", [], "any", false, false, false, 186);
                echo "\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("TOPIC_REPORTED");
                echo "\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-exclamation fa-fw icon-red\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 187
                echo $this->extensions['phpbb\template\twig\extension']->lang("TOPIC_REPORTED");
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
            }
            // line 190
            echo "\t\t\t\t\t\t<br />
\t\t\t\t\t\t";
            // line 191
            // line 192
            echo "\t\t\t\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POST_STICKY", [], "any", false, false, false, 192)) {
                echo "<i class=\"topic-status sticky fa fa-thumb-tack\"></i>";
            }
            // line 193
            echo "
\t\t\t\t\t\t";
            // line 194
            if ( !($context["S_IS_BOT"] ?? null)) {
                // line 195
                echo "\t\t\t\t\t\t<div class=\"responsive-show\" style=\"display: none;\">
\t\t\t\t\t\t\t";
                // line 196
                echo $this->extensions['phpbb\template\twig\extension']->lang("LAST_POST");
                echo " ";
                echo $this->extensions['phpbb\template\twig\extension']->lang("POST_BY_AUTHOR");
                echo " ";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "LAST_POST_AUTHOR_FULL", [], "any", false, false, false, 196);
                echo " &laquo; <a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_LAST_POST", [], "any", false, false, false, 196);
                echo "\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("GOTO_LAST_POST");
                echo "\"><time datetime=\"";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "LAST_POST_TIME_RFC3339", [], "any", false, false, false, 196);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "LAST_POST_TIME", [], "any", false, false, false, 196);
                echo "</time></a>
\t\t\t\t\t\t\t";
                // line 197
                if ((twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POST_GLOBAL", [], "any", false, false, false, 197) && (($context["FORUM_ID"] ?? null) != twig_get_attribute($this->env, $this->source, $context["topicrow"], "FORUM_ID", [], "any", false, false, false, 197)))) {
                    echo "<br />";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("POSTED");
                    echo " ";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("IN");
                    echo " <a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_VIEW_FORUM", [], "any", false, false, false, 197);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "FORUM_NAME", [], "any", false, false, false, 197);
                    echo "</a>";
                }
                // line 198
                echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t";
                // line 199
                if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "REPLIES", [], "any", false, false, false, 199)) {
                    // line 200
                    echo "\t\t\t\t\t\t\t<span class=\"responsive-show left-box\" style=\"display: none;\">";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("REPLIES");
                    echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                    echo " <strong>";
                    echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "REPLIES", [], "any", false, false, false, 200);
                    echo "</strong></span>
\t\t\t\t\t\t\t";
                }
                // line 202
                echo "\t\t\t\t\t\t";
            }
            // line 203
            echo "
\t\t\t\t\t\t<div class=\"topic-poster responsive-hide left-box\">
\t\t\t\t\t\t\t";
            // line 205
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_HAS_POLL", [], "any", false, false, false, 205)) {
                echo "<i class=\"icon fa-bar-chart fa-fw\" aria-hidden=\"true\"></i>";
            }
            // line 206
            echo "\t\t\t\t\t\t\t";
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "ATTACH_ICON_IMG", [], "any", false, false, false, 206)) {
                echo "<i class=\"icon fa-paperclip fa-fw\" aria-hidden=\"true\"></i>";
            }
            // line 207
            echo "\t\t\t\t\t\t\t";
            // line 208
            echo "\t\t\t\t\t\t\t";
            echo $this->extensions['phpbb\template\twig\extension']->lang("POST_BY_AUTHOR");
            echo " ";
            echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "TOPIC_AUTHOR_FULL", [], "any", false, false, false, 208);
            echo " &raquo; <time datetime=\"";
            echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "FIRST_POST_TIME_RFC3339", [], "any", false, false, false, 208);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "FIRST_POST_TIME", [], "any", false, false, false, 208);
            echo "</time>
\t\t\t\t\t\t\t";
            // line 209
            // line 210
            echo "\t\t\t\t\t\t\t";
            if ((twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_POST_GLOBAL", [], "any", false, false, false, 210) && (($context["FORUM_ID"] ?? null) != twig_get_attribute($this->env, $this->source, $context["topicrow"], "FORUM_ID", [], "any", false, false, false, 210)))) {
                echo " &raquo; ";
                echo $this->extensions['phpbb\template\twig\extension']->lang("IN");
                echo " <a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_VIEW_FORUM", [], "any", false, false, false, 210);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "FORUM_NAME", [], "any", false, false, false, 210);
                echo "</a>";
            }
            // line 211
            echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
            // line 212
            if (twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, $context["topicrow"], "pagination", [], "any", false, false, false, 212))) {
                // line 213
                echo "\t\t\t\t\t\t<div class=\"pagination\">
\t\t\t\t\t\t\t<span><i class=\"icon fa-clone fa-fw\" aria-hidden=\"true\"></i></span>
\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t";
                // line 216
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["topicrow"], "pagination", [], "any", false, false, false, 216));
                foreach ($context['_seq'] as $context["_key"] => $context["pagination"]) {
                    // line 217
                    echo "\t\t\t\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["pagination"], "S_IS_PREV", [], "any", false, false, false, 217)) {
                        // line 218
                        echo "\t\t\t\t\t\t\t\t";
                    } elseif (twig_get_attribute($this->env, $this->source, $context["pagination"], "S_IS_CURRENT", [], "any", false, false, false, 218)) {
                        echo "<li class=\"active\"><span>";
                        echo twig_get_attribute($this->env, $this->source, $context["pagination"], "PAGE_NUMBER", [], "any", false, false, false, 218);
                        echo "</span></li>
\t\t\t\t\t\t\t\t";
                    } elseif (twig_get_attribute($this->env, $this->source,                     // line 219
$context["pagination"], "S_IS_ELLIPSIS", [], "any", false, false, false, 219)) {
                        echo "<li class=\"ellipsis\"><span>";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("ELLIPSIS");
                        echo "</span></li>
\t\t\t\t\t\t\t\t";
                    } elseif (twig_get_attribute($this->env, $this->source,                     // line 220
$context["pagination"], "S_IS_NEXT", [], "any", false, false, false, 220)) {
                        // line 221
                        echo "\t\t\t\t\t\t\t\t";
                    } else {
                        echo "<li><a class=\"button\" href=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["pagination"], "PAGE_URL", [], "any", false, false, false, 221);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["pagination"], "PAGE_NUMBER", [], "any", false, false, false, 221);
                        echo "</a></li>
\t\t\t\t\t\t\t\t";
                    }
                    // line 223
                    echo "\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pagination'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 224
                echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
            }
            // line 227
            echo "
\t\t\t\t\t\t";
            // line 228
            // line 229
            echo "\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"posts\">";
            // line 231
            echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "REPLIES", [], "any", false, false, false, 231);
            echo " <dfn>";
            echo $this->extensions['phpbb\template\twig\extension']->lang("REPLIES");
            echo "</dfn></dd>
\t\t\t\t<dd class=\"views\">";
            // line 232
            echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "VIEWS", [], "any", false, false, false, 232);
            echo " <dfn>";
            echo $this->extensions['phpbb\template\twig\extension']->lang("VIEWS");
            echo "</dfn></dd>
\t\t\t\t<dd class=\"lastpost\">
\t\t\t\t\t<span><dfn>";
            // line 234
            echo $this->extensions['phpbb\template\twig\extension']->lang("LAST_POST");
            echo " </dfn>";
            echo $this->extensions['phpbb\template\twig\extension']->lang("POST_BY_AUTHOR");
            echo " ";
            echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "LAST_POST_AUTHOR_FULL", [], "any", false, false, false, 234);
            // line 235
            echo "\t\t\t\t\t\t";
            if (( !($context["S_IS_BOT"] ?? null) && twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_LAST_POST", [], "any", false, false, false, 235))) {
                // line 236
                echo "\t\t\t\t\t\t\t<a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "U_LAST_POST", [], "any", false, false, false, 236);
                echo "\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("GOTO_LAST_POST");
                echo "\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-external-link-square fa-fw icon-lightgray icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                // line 237
                echo ($context["VIEW_LATEST_POST"] ?? null);
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
            }
            // line 240
            echo "\t\t\t\t\t\t<br /><time datetime=\"";
            echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "LAST_POST_TIME_RFC3339", [], "any", false, false, false, 240);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["topicrow"], "LAST_POST_TIME", [], "any", false, false, false, 240);
            echo "</time>
\t\t\t\t\t</span>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t";
            // line 244
            // line 245
            echo "\t\t</li>
\t\t";
            // line 246
            // line 247
            echo "
\t";
            // line 248
            if (twig_get_attribute($this->env, $this->source, $context["topicrow"], "S_LAST_ROW", [], "any", false, false, false, 248)) {
                // line 249
                echo "\t\t\t</ul>
\t\t</div>
\t</div>
\t";
            }
            // line 253
            echo "
";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 255
            echo "\t";
            if (($context["S_IS_POSTABLE"] ?? null)) {
                // line 256
                echo "\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t<strong>";
                // line 258
                echo $this->extensions['phpbb\template\twig\extension']->lang("NO_TOPICS");
                echo "</strong>
\t\t</div>
\t</div>
\t";
            } elseif ( !            // line 261
($context["S_HAS_SUBFORUM"] ?? null)) {
                // line 262
                echo "\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t\t<strong>";
                // line 264
                echo $this->extensions['phpbb\template\twig\extension']->lang("NO_FORUMS_IN_CATEGORY");
                echo "</strong>
\t\t</div>
\t</div>
\t";
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topicrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 269
        echo "
";
        // line 270
        if ((twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "topicrow", [], "any", false, false, false, 270)) &&  !($context["S_DISPLAY_ACTIVE"] ?? null))) {
            // line 271
            echo "\t<div class=\"action-bar bar-bottom\">
\t\t";
            // line 272
            if (( !($context["S_IS_BOT"] ?? null) && ($context["S_DISPLAY_POST_INFO"] ?? null))) {
                // line 273
                echo "\t\t\t";
                // line 274
                echo "\t\t\t<a href=\"";
                echo ($context["U_POST_NEW_TOPIC"] ?? null);
                echo "\" class=\"button\" title=\"";
                if (($context["S_IS_LOCKED"] ?? null)) {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("FORUM_LOCKED");
                } else {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("POST_TOPIC");
                }
                echo "\">
\t\t\t";
                // line 275
                if (($context["S_IS_LOCKED"] ?? null)) {
                    // line 276
                    echo "\t\t\t\t<span>";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_FORUM_LOCKED");
                    echo "</span> <i class=\"icon fa-lock fa-fw\" aria-hidden=\"true\"></i>
\t\t\t";
                } else {
                    // line 278
                    echo "\t\t\t\t<span>";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("BUTTON_NEW_TOPIC");
                    echo "</span> <i class=\"icon fa-pencil fa-fw\" aria-hidden=\"true\"></i>
\t\t\t";
                }
                // line 280
                echo "\t\t\t</a>

\t\t\t";
                // line 282
                // line 283
                echo "\t\t";
            }
            // line 284
            echo "
\t\t";
            // line 285
            if ((($context["S_SELECT_SORT_DAYS"] ?? null) &&  !($context["S_IS_BOT"] ?? null))) {
                // line 286
                echo "\t\t\t<form method=\"post\" action=\"";
                echo ($context["S_FORUM_ACTION"] ?? null);
                echo "\">
\t\t\t";
                // line 287
                $location = "display_options.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("display_options.html", "viewforum_body.html", 287)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 288
                echo "\t\t\t</form>
\t\t";
            }
            // line 290
            echo "
\t\t<div class=\"pagination\">
\t\t\t";
            // line 292
            if ((( !($context["S_IS_BOT"] ?? null) && ($context["U_MARK_TOPICS"] ?? null)) && twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "topicrow", [], "any", false, false, false, 292)))) {
                echo "<a href=\"";
                echo ($context["U_MARK_TOPICS"] ?? null);
                echo "\" data-ajax=\"mark_topics_read\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("MARK_TOPICS_READ");
                echo "</a> &bull; ";
            }
            // line 293
            echo "\t\t\t";
            echo ($context["TOTAL_TOPICS"] ?? null);
            echo "
\t\t\t";
            // line 294
            if (twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "pagination", [], "any", false, false, false, 294))) {
                // line 295
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewforum_body.html", 295)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 296
                echo "\t\t\t";
            } else {
                // line 297
                echo "\t\t\t\t &bull; ";
                echo ($context["PAGE_NUMBER"] ?? null);
                echo "
\t\t\t";
            }
            // line 299
            echo "\t\t</div>
\t</div>
";
        }
        // line 302
        echo "
";
        // line 303
        $location = "jumpbox.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("jumpbox.html", "viewforum_body.html", 303)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 304
        echo "
";
        // line 305
        if ((($context["S_DISPLAY_ONLINE_LIST"] ?? null) && ($context["U_VIEWONLINE"] ?? null))) {
            // line 306
            echo "\t<div class=\"stat-block online-list\">
\t\t<h3><a href=\"";
            // line 307
            echo ($context["U_VIEWONLINE"] ?? null);
            echo "\">";
            echo $this->extensions['phpbb\template\twig\extension']->lang("WHO_IS_ONLINE");
            echo "</a></h3>
\t\t<p>";
            // line 308
            echo ($context["LOGGED_IN_USER_LIST"] ?? null);
            echo "</p>
\t</div>
";
        }
        // line 311
        echo "
";
        // line 312
        if (($context["S_DISPLAY_POST_INFO"] ?? null)) {
            // line 313
            echo "\t<div class=\"stat-block permissions\">
\t\t<h3>";
            // line 314
            echo $this->extensions['phpbb\template\twig\extension']->lang("FORUM_PERMISSIONS");
            echo "</h3>
\t\t<p>";
            // line 315
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "rules", [], "any", false, false, false, 315));
            foreach ($context['_seq'] as $context["_key"] => $context["rules"]) {
                echo twig_get_attribute($this->env, $this->source, $context["rules"], "RULE", [], "any", false, false, false, 315);
                echo "<br />";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['rules'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "</p>
\t</div>
";
        }
        // line 318
        echo "
";
        // line 319
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "viewforum_body.html", 319)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "viewforum_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  1065 => 319,  1062 => 318,  1048 => 315,  1044 => 314,  1041 => 313,  1039 => 312,  1036 => 311,  1030 => 308,  1024 => 307,  1021 => 306,  1019 => 305,  1016 => 304,  1004 => 303,  1001 => 302,  996 => 299,  990 => 297,  987 => 296,  974 => 295,  972 => 294,  967 => 293,  959 => 292,  955 => 290,  951 => 288,  939 => 287,  934 => 286,  932 => 285,  929 => 284,  926 => 283,  925 => 282,  921 => 280,  915 => 278,  909 => 276,  907 => 275,  896 => 274,  894 => 273,  892 => 272,  889 => 271,  887 => 270,  884 => 269,  873 => 264,  869 => 262,  867 => 261,  861 => 258,  857 => 256,  854 => 255,  848 => 253,  842 => 249,  840 => 248,  837 => 247,  836 => 246,  833 => 245,  832 => 244,  822 => 240,  816 => 237,  809 => 236,  806 => 235,  800 => 234,  793 => 232,  787 => 231,  783 => 229,  782 => 228,  779 => 227,  774 => 224,  768 => 223,  758 => 221,  756 => 220,  750 => 219,  743 => 218,  740 => 217,  736 => 216,  731 => 213,  729 => 212,  726 => 211,  715 => 210,  714 => 209,  703 => 208,  701 => 207,  696 => 206,  692 => 205,  688 => 203,  685 => 202,  676 => 200,  674 => 199,  671 => 198,  659 => 197,  643 => 196,  640 => 195,  638 => 194,  635 => 193,  630 => 192,  629 => 191,  626 => 190,  620 => 187,  613 => 186,  610 => 185,  604 => 182,  597 => 181,  594 => 180,  584 => 177,  573 => 176,  570 => 175,  559 => 174,  553 => 171,  548 => 170,  545 => 169,  544 => 168,  541 => 167,  535 => 166,  524 => 165,  519 => 164,  518 => 163,  497 => 162,  496 => 161,  493 => 160,  484 => 154,  480 => 153,  476 => 152,  462 => 151,  451 => 146,  449 => 145,  446 => 144,  440 => 140,  438 => 139,  435 => 138,  430 => 137,  427 => 136,  426 => 135,  423 => 134,  419 => 132,  406 => 122,  402 => 121,  397 => 119,  389 => 115,  383 => 114,  377 => 112,  371 => 109,  366 => 108,  349 => 104,  340 => 98,  337 => 97,  335 => 96,  328 => 92,  323 => 89,  321 => 88,  318 => 87,  312 => 83,  306 => 81,  303 => 80,  290 => 79,  288 => 78,  283 => 77,  275 => 76,  271 => 74,  263 => 69,  258 => 67,  252 => 66,  247 => 64,  243 => 63,  239 => 62,  234 => 60,  231 => 59,  229 => 58,  226 => 57,  222 => 55,  221 => 54,  218 => 53,  212 => 51,  206 => 49,  204 => 48,  194 => 47,  191 => 46,  189 => 45,  187 => 44,  183 => 42,  181 => 41,  178 => 40,  164 => 38,  162 => 37,  159 => 36,  153 => 32,  148 => 30,  143 => 29,  135 => 27,  133 => 26,  124 => 23,  122 => 22,  119 => 21,  115 => 19,  101 => 18,  95 => 17,  91 => 15,  89 => 14,  88 => 13,  79 => 12,  78 => 11,  66 => 10,  61 => 8,  53 => 6,  50 => 5,  42 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "viewforum_body.html", "");
    }
}

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

/* navbar_header.html */
class __TwigTemplate_c37453094b78363b220449024ec5ca262409c1999bd52554521d872c56bb6c34 extends \Twig\Template
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
        ob_start(function () { return ''; });
        // line 2
        echo "\t";
        // line 3
        echo "
\t";
        // line 4
        if (($context["S_DISPLAY_SEARCH"] ?? null)) {
            // line 5
            echo "\t\t<li class=\"separator\"></li>
\t\t";
            // line 6
            if (($context["S_REGISTERED_USER"] ?? null)) {
                // line 7
                echo "\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
                // line 8
                echo ($context["U_SEARCH_SELF"] ?? null);
                echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-file-o fa-fw icon-gray\" aria-hidden=\"true\"></i><span>";
                // line 9
                echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_SELF");
                echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t";
            }
            // line 13
            echo "\t\t";
            if (($context["S_USER_LOGGED_IN"] ?? null)) {
                // line 14
                echo "\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
                // line 15
                echo ($context["U_SEARCH_NEW"] ?? null);
                echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-file-o fa-fw icon-red\" aria-hidden=\"true\"></i><span>";
                // line 16
                echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_NEW");
                echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t";
            }
            // line 20
            echo "\t\t";
            if (($context["S_LOAD_UNREADS"] ?? null)) {
                // line 21
                echo "\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
                // line 22
                echo ($context["U_SEARCH_UNREAD"] ?? null);
                echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-file-o fa-fw icon-red\" aria-hidden=\"true\"></i><span>";
                // line 23
                echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_UNREAD");
                echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t";
            }
            // line 27
            echo "\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
            // line 28
            echo ($context["U_SEARCH_UNANSWERED"] ?? null);
            echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-file-o fa-fw icon-gray\" aria-hidden=\"true\"></i><span>";
            // line 29
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_UNANSWERED");
            echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
            // line 33
            echo ($context["U_SEARCH_ACTIVE_TOPICS"] ?? null);
            echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-file-o fa-fw icon-blue\" aria-hidden=\"true\"></i><span>";
            // line 34
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_ACTIVE_TOPICS");
            echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
            // line 39
            echo ($context["U_SEARCH"] ?? null);
            echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-search fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 40
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH");
            echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>\t
\t";
        }
        $context["quick_links_first_block"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 45
        echo "
";
        // line 46
        ob_start(function () { return ''; });
        // line 47
        echo "\t";
        $context["quick_links_last_block"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 49
        echo "
";
        // line 50
        ob_start(function () { return ''; });
        echo twig_trim_filter(($context["quick_links_first_block"] ?? null));
        echo twig_trim_filter(($context["quick_links_last_block"] ?? null));
        $context["quick_links_all"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 51
        echo "
<div class=\"navbar tabbed not-static\" role=\"navigation\">
\t<div class=\"inner page-width\">
\t\t<div class=\"nav-tabs\" data-current-page=\"";
        // line 54
        if (twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "NAV_SECTION", [], "any", false, false, false, 54)) {
            echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "NAV_SECTION", [], "any", false, false, false, 54);
        } else {
            echo ($context["SCRIPT_NAME"] ?? null);
        }
        echo "\">
\t\t\t<ul class=\"leftside\">
\t\t\t\t<li id=\"quick-links\" class=\"quick-links tab responsive-menu dropdown-container";
        // line 56
        if ((($context["quick_links_all"] ?? null) == "")) {
            echo " empty";
        }
        echo "\">
\t\t\t\t\t<a href=\"#\" class=\"nav-link dropdown-trigger\">";
        // line 57
        echo $this->extensions['phpbb\template\twig\extension']->lang("QUICK_LINKS");
        echo "</a>
\t\t\t\t\t<div class=\"dropdown\">
\t\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t\t<ul class=\"dropdown-contents\" role=\"menu\">
\t\t\t\t\t\t\t";
        // line 61
        echo ($context["quick_links_first_block"] ?? null);
        echo "
\t\t\t\t\t\t\t";
        // line 62
        if (twig_trim_filter(($context["quick_links_last_block"] ?? null))) {
            // line 63
            echo "\t\t\t\t\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t\t\t";
            // line 64
            echo ($context["quick_links_last_block"] ?? null);
            echo "
\t\t\t\t\t\t\t";
        }
        // line 66
        echo "\t\t\t\t\t\t</ul>
\t\t\t\t\t</div>
\t\t\t\t</li>
\t\t\t\t";
        // line 69
        // line 70
        echo "\t\t\t\t";
        if (($context["U_SITE_HOME"] ?? null)) {
            // line 71
            echo "\t\t\t\t\t<li class=\"tab home\" data-responsive-class=\"small-icon icon-home\">
\t\t\t\t\t\t<a class=\"nav-link\" href=\"";
            // line 72
            echo ($context["U_SITE_HOME"] ?? null);
            echo "\" data-navbar-reference=\"home\">";
            echo $this->extensions['phpbb\template\twig\extension']->lang("SITE_HOME");
            echo "</a>
\t\t\t\t\t</li>
\t\t\t\t";
        }
        // line 75
        echo "\t\t\t\t<li class=\"tab forums selected\" data-responsive-class=\"small-icon icon-forums\">
\t\t\t\t\t<a class=\"nav-link\" href=\"";
        // line 76
        echo ($context["U_INDEX"] ?? null);
        echo "\">";
        echo $this->extensions['phpbb\template\twig\extension']->lang("FORUMS");
        echo "</a>
\t\t\t\t</li>
\t\t\t\t";
        // line 78
        if (( !($context["S_IS_BOT"] ?? null) && (($context["S_DISPLAY_MEMBERLIST"] ?? null) || ($context["U_TEAM"] ?? null)))) {
            // line 79
            echo "\t\t\t\t\t<li class=\"tab members dropdown-container\" data-select-match=\"member\" data-responsive-class=\"small-icon icon-members\">
\t\t\t\t\t\t<a class=\"nav-link dropdown-trigger\" href=\"";
            // line 80
            echo ($context["U_MEMBERLIST"] ?? null);
            echo "\">";
            echo $this->extensions['phpbb\template\twig\extension']->lang("MEMBERLIST");
            echo "</a>
\t\t\t\t\t\t<div class=\"dropdown\">
\t\t\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t\t\t<ul class=\"dropdown-contents\" role=\"menu\">
\t\t\t\t\t\t\t\t";
            // line 84
            if (($context["S_DISPLAY_MEMBERLIST"] ?? null)) {
                // line 85
                echo "\t\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t\t<a href=\"";
                // line 86
                echo ($context["U_MEMBERLIST"] ?? null);
                echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t\t\t<i class=\"icon fa-group fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 87
                echo $this->extensions['phpbb\template\twig\extension']->lang("MEMBERLIST");
                echo "</span>
\t\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t";
            }
            // line 91
            echo "\t\t\t\t\t\t\t\t";
            if (($context["U_TEAM"] ?? null)) {
                // line 92
                echo "\t\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t\t<a href=\"";
                // line 93
                echo ($context["U_TEAM"] ?? null);
                echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t\t\t<i class=\"icon fa-shield fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 94
                echo $this->extensions['phpbb\template\twig\extension']->lang("THE_TEAM");
                echo "</span>
\t\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t";
            }
            // line 98
            echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t</li>
\t\t\t\t";
        }
        // line 102
        echo "\t\t\t\t";
        // line 103
        echo "\t\t\t</ul>
\t\t\t<ul class=\"rightside\" role=\"menu\">
\t\t\t\t";
        // line 105
        // line 106
        echo "\t\t\t\t<li class=\"tab faq\" data-select-match=\"faq\" data-responsive-class=\"small-icon icon-faq\">
\t\t\t\t\t<a class=\"nav-link\" href=\"";
        // line 107
        echo ($context["U_FAQ"] ?? null);
        echo "\" rel=\"help\" title=\"";
        echo $this->extensions['phpbb\template\twig\extension']->lang("FAQ_EXPLAIN");
        echo "\" role=\"menuitem\">
\t\t\t\t\t\t<i class=\"icon fa-question-circle fa-fw\" aria-hidden=\"true\"></i><span>";
        // line 108
        echo $this->extensions['phpbb\template\twig\extension']->lang("FAQ");
        echo "</span>
\t\t\t\t\t</a>
\t\t\t\t</li>
\t\t\t\t";
        // line 111
        // line 112
        echo "\t\t\t\t";
        if (($context["U_ACP"] ?? null)) {
            // line 113
            echo "\t\t\t\t\t<li class=\"tab acp\" data-last-responsive=\"true\">
\t\t\t\t\t\t<a class=\"nav-link\" href=\"";
            // line 114
            echo ($context["U_ACP"] ?? null);
            echo "\" title=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("ACP");
            echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t<i class=\"icon fa-cogs fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 115
            echo $this->extensions['phpbb\template\twig\extension']->lang("ACP_SHORT");
            echo "</span>
\t\t\t\t\t\t</a>
\t\t\t\t\t</li>
\t\t\t\t";
        }
        // line 119
        echo "\t\t\t\t";
        if (($context["U_MCP"] ?? null)) {
            // line 120
            echo "\t\t\t\t\t<li class=\"tab mcp\" data-last-responsive=\"true\" data-select-match=\"mcp\">
\t\t\t\t\t\t<a class=\"nav-link\" href=\"";
            // line 121
            echo ($context["U_MCP"] ?? null);
            echo "\" title=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("MCP");
            echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t<i class=\"icon fa-gavel fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 122
            echo $this->extensions['phpbb\template\twig\extension']->lang("MCP_SHORT");
            echo "</span>
\t\t\t\t\t\t</a>
\t\t\t\t\t</li>
\t\t\t\t";
        }
        // line 126
        echo "\t\t\t\t";
        if (($context["S_REGISTERED_USER"] ?? null)) {
            // line 127
            echo "\t\t\t\t\t";
            // line 128
            echo "\t\t\t\t\t<li id=\"username_logged_in\" class=\"tab account dropdown-container\" data-skip-responsive=\"true\" data-select-match=\"ucp\">
\t\t\t\t\t\t";
            // line 129
            echo "\t\t\t\t\t\t<a href=\"";
            echo ($context["U_PROFILE"] ?? null);
            echo "\" class=\"nav-link dropdown-trigger\">";
            echo ($context["CURRENT_USERNAME_SIMPLE"] ?? null);
            echo "</a>
\t\t\t\t\t\t<div class=\"dropdown\">
\t\t\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t\t\t<ul class=\"dropdown-contents\" role=\"menu\">
\t\t\t\t\t\t\t\t";
            // line 133
            if (($context["U_RESTORE_PERMISSIONS"] ?? null)) {
                // line 134
                echo "\t\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t\t<a href=\"";
                // line 135
                echo ($context["U_RESTORE_PERMISSIONS"] ?? null);
                echo "\">
\t\t\t\t\t\t\t\t\t\t\t<i class=\"icon fa-refresh fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 136
                echo $this->extensions['phpbb\template\twig\extension']->lang("RESTORE_PERMISSIONS");
                echo "</span>
\t\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t\t";
            }
            // line 140
            echo "
\t\t\t\t\t\t\t\t";
            // line 141
            // line 142
            echo "
\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
            // line 144
            echo ($context["U_PROFILE"] ?? null);
            echo "\" title=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("PROFILE");
            echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-sliders fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 145
            echo $this->extensions['phpbb\template\twig\extension']->lang("PROFILE");
            echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t</li>
\t\t\t\t\t\t";
            // line 148
            if (($context["U_USER_PROFILE"] ?? null)) {
                // line 149
                echo "\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t<a href=\"";
                // line 150
                echo ($context["U_USER_PROFILE"] ?? null);
                echo "\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("READ_PROFILE");
                echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-user fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 151
                echo $this->extensions['phpbb\template\twig\extension']->lang("READ_PROFILE");
                echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t";
            }
            // line 155
            echo "
\t\t\t\t\t\t\t\t";
            // line 156
            // line 157
            echo "\t\t\t
\t\t\t\t\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t\t<a href=\"";
            // line 160
            echo ($context["U_LOGIN_LOGOUT"] ?? null);
            echo "\" title=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("LOGIN_LOGOUT");
            echo "\" accesskey=\"x\" role=\"menuitem\">
\t\t\t\t\t\t\t\t\t\t<i class=\"icon fa-power-off fa-fw\" aria-hidden=\"true\"></i><span>";
            // line 161
            echo $this->extensions['phpbb\template\twig\extension']->lang("LOGIN_LOGOUT");
            echo "</span>
\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t</li>

\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
            // line 167
            // line 168
            echo "\t\t\t\t\t</li>
\t\t\t\t\t";
            // line 169
            if (($context["S_DISPLAY_PM"] ?? null)) {
                // line 170
                echo "\t\t\t\t\t\t<li class=\"tab pm";
                if ((($context["PRIVATE_MESSAGE_COUNT"] ?? null) > 0)) {
                    echo " non-zero";
                }
                echo "\" data-skip-responsive=\"true\" data-select-match=\"pm\">
\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"";
                // line 171
                echo ($context["U_PRIVATEMSGS"] ?? null);
                echo "\" role=\"menuitem\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-inbox fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 172
                echo $this->extensions['phpbb\template\twig\extension']->lang("PRIVATE_MESSAGES");
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t<strong>
\t\t\t\t\t\t\t\t<span class=\"counter\">";
                // line 175
                echo ($context["PRIVATE_MESSAGE_COUNT"] ?? null);
                echo "</span>
\t\t\t\t\t\t\t\t<span class=\"arrow\"></span>
\t\t\t\t\t\t\t</strong>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
            }
            // line 180
            echo "\t\t\t\t\t";
            if (($context["S_NOTIFICATIONS_DISPLAY"] ?? null)) {
                // line 181
                echo "\t\t\t\t\t\t<li class=\"tab notifications dropdown-container";
                if ((($context["NOTIFICATIONS_COUNT"] ?? null) > 0)) {
                    echo " non-zero";
                }
                echo "\" data-skip-responsive=\"true\" data-select-match=\"notifications\">
\t\t\t\t\t\t\t<a href=\"";
                // line 182
                echo ($context["U_VIEW_ALL_NOTIFICATIONS"] ?? null);
                echo "\" id=\"notification_list_button\" class=\"nav-link dropdown-trigger\">
\t\t\t\t\t\t\t\t<i class=\"icon fa-bell fa-fw\" aria-hidden=\"true\"></i><span>";
                // line 183
                echo $this->extensions['phpbb\template\twig\extension']->lang("NOTIFICATIONS");
                echo "</span>
\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t<strong>
\t\t\t\t\t\t\t\t<span class=\"counter\">";
                // line 186
                echo ($context["NOTIFICATIONS_COUNT"] ?? null);
                echo "</span>
\t\t\t\t\t\t\t\t<span class=\"arrow\"></span>
\t\t\t\t\t\t\t</strong>
\t\t\t\t\t\t\t";
                // line 189
                $location = "notification_dropdown.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("notification_dropdown.html", "navbar_header.html", 189)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 190
                echo "\t\t\t\t\t\t</li>
\t\t\t\t\t";
            }
            // line 192
            echo "\t\t\t\t\t";
            // line 193
            echo "\t\t\t\t";
        }
        // line 194
        echo "\t\t\t\t";
        if (($context["S_REGISTERED_USER"] ?? null)) {
            // line 195
            echo "\t\t\t\t\t<li class=\"tab logout\"  data-skip-responsive=\"true\"><a class=\"nav-link\" href=\"";
            echo ($context["U_LOGIN_LOGOUT"] ?? null);
            echo "\" title=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("LOGIN_LOGOUT");
            echo "\" accesskey=\"x\" role=\"menuitem\">";
            echo $this->extensions['phpbb\template\twig\extension']->lang("LOGIN_LOGOUT");
            echo "</a></li>
\t\t\t\t";
        } elseif ( !        // line 196
($context["S_IS_BOT"] ?? null)) {
            // line 197
            echo "\t\t\t\t\t<li class=\"tab login\"  data-skip-responsive=\"true\" data-select-match=\"login\"><a class=\"nav-link\" href=\"";
            echo ($context["U_LOGIN_LOGOUT"] ?? null);
            echo "\" title=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("LOGIN_LOGOUT");
            echo "\" accesskey=\"x\" role=\"menuitem\">";
            echo $this->extensions['phpbb\template\twig\extension']->lang("LOGIN_LOGOUT");
            echo "</a></li>
\t\t\t\t\t";
            // line 198
            if (($context["S_REGISTER_ENABLED"] ?? null)) {
                // line 199
                echo "\t\t\t\t\t\t<li class=\"tab register\" data-skip-responsive=\"true\" data-select-match=\"register\"><a class=\"nav-link\" href=\"";
                echo ($context["U_REGISTER"] ?? null);
                echo "\" role=\"menuitem\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("REGISTER");
                echo "</a></li>
\t\t\t\t\t";
            }
            // line 201
            echo "\t\t\t\t\t";
            // line 202
            echo "\t\t\t\t";
        }
        // line 203
        echo "\t\t\t</ul>
\t\t</div>
\t</div>
</div>

<div class=\"navbar secondary";
        // line 208
        if (((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_IN_NAVBAR", [], "any", false, false, false, 208) == 1) && twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_BOX", [], "any", false, false, false, 208))) {
            echo " with-search";
        }
        echo "\">
\t<ul role=\"menubar\">
\t\t";
        // line 210
        ob_start(function () { return ''; });
        // line 211
        echo "\t\t";
        // line 212
        echo "\t\t";
        if (twig_trim_filter(twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "NAVLINKS", [], "any", false, false, false, 212))) {
            // line 213
            echo "\t\t\t";
            echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "NAVLINKS", [], "any", false, false, false, 213);
            echo "
\t\t";
        }
        // line 215
        echo "\t\t";
        if (( !twig_trim_filter(twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "NAVLINKS", [], "any", false, false, false, 215)) || (twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "NAVLINKS_SHOW_DEFAULT", [], "any", false, false, false, 215) == 1))) {
            // line 216
            echo "\t\t\t";
            if ((($context["U_WATCH_FORUM_LINK"] ?? null) &&  !($context["S_IS_BOT"] ?? null))) {
                // line 217
                echo "\t\t\t<li data-last-responsive=\"true\">
\t\t\t\t<a href=\"";
                // line 218
                echo ($context["U_WATCH_FORUM_LINK"] ?? null);
                echo "\" title=\"";
                echo ($context["S_WATCH_FORUM_TITLE"] ?? null);
                echo "\" data-ajax=\"toggle_link\" data-toggle-class=\"icon ";
                if (($context["S_WATCHING_FORUM"] ?? null)) {
                    echo "fa-check-square-o";
                } else {
                    echo "fa-square-o";
                }
                echo " fa-fw\" data-toggle-text=\"";
                echo ($context["S_WATCH_FORUM_TOGGLE"] ?? null);
                echo "\" data-toggle-url=\"";
                echo ($context["U_WATCH_FORUM_TOGGLE"] ?? null);
                echo "\">
\t\t\t\t\t<i class=\"icon ";
                // line 219
                if (($context["S_WATCHING_FORUM"] ?? null)) {
                    echo "fa-square-o";
                } else {
                    echo "fa-check-square-o";
                }
                echo " fa-fw\" aria-hidden=\"true\"></i><span>";
                echo ($context["S_WATCH_FORUM_TITLE"] ?? null);
                echo "</span>
\t\t\t\t</a>
\t\t\t</li>
\t\t\t";
            }
            // line 223
            echo "\t\t";
        }
        // line 224
        echo "\t\t";
        // line 225
        echo "\t\t";
        $context["secondary_links"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 226
        echo "\t\t";
        if (twig_trim_filter(($context["secondary_links"] ?? null))) {
            // line 227
            echo "\t\t\t";
            echo ($context["secondary_links"] ?? null);
            echo "
\t\t\t";
            // line 228
            if ((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "NAVLINKS_SHOW_DEFAULT", [], "any", false, false, false, 228) && ($context["S_DISPLAY_SEARCH"] ?? null))) {
                // line 229
                echo "\t\t\t\t<li class=\"small-icon icon-search";
                if (((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_IN_NAVBAR", [], "any", false, false, false, 229) == 1) && twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_BOX", [], "any", false, false, false, 229))) {
                    echo " responsive-hide";
                }
                echo "\"><a href=\"";
                echo ($context["U_SEARCH"] ?? null);
                echo "\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH");
                echo "</a></li>
\t\t\t\t";
                // line 230
                if (($context["S_USER_LOGGED_IN"] ?? null)) {
                    // line 231
                    echo "\t\t\t\t\t<li class=\"small-icon icon-new-posts\"><a href=\"";
                    echo ($context["U_SEARCH_NEW"] ?? null);
                    echo "\" role=\"menuitem\">";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_NEW");
                    echo "</a></li>
\t\t\t\t";
                }
                // line 233
                echo "\t\t\t";
            }
            // line 234
            echo "\t\t";
        } else {
            // line 235
            echo "\t\t\t";
            if (($context["S_DISPLAY_SEARCH"] ?? null)) {
                // line 236
                echo "\t\t\t\t<li class=\"small-icon icon-search";
                if (((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_IN_NAVBAR", [], "any", false, false, false, 236) == 1) && twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_BOX", [], "any", false, false, false, 236))) {
                    echo " responsive-hide";
                }
                echo "\"><a href=\"";
                echo ($context["U_SEARCH"] ?? null);
                echo "\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH");
                echo "</a></li>
\t\t\t\t";
                // line 237
                if (($context["S_USER_LOGGED_IN"] ?? null)) {
                    // line 238
                    echo "\t\t\t\t\t<li class=\"small-icon icon-new-posts\"><a href=\"";
                    echo ($context["U_SEARCH_NEW"] ?? null);
                    echo "\" role=\"menuitem\">";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_NEW");
                    echo "</a></li>
\t\t\t\t";
                }
                // line 240
                echo "\t\t\t";
            }
            // line 241
            echo "\t\t\t";
            if ( !($context["S_REGISTERED_USER"] ?? null)) {
                // line 242
                echo "\t\t\t\t<li class=\"small-icon icon-login\"><a href=\"";
                echo ($context["U_LOGIN_LOGOUT"] ?? null);
                echo "\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("LOGIN_LOGOUT");
                echo "\">";
                echo $this->extensions['phpbb\template\twig\extension']->lang("LOGIN_LOGOUT");
                echo "</a></li>
\t\t\t\t";
                // line 243
                if (($context["S_REGISTER_ENABLED"] ?? null)) {
                    // line 244
                    echo "\t\t\t\t\t<li class=\"small-icon icon-register\"><a href=\"";
                    echo ($context["U_REGISTER"] ?? null);
                    echo "\">";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("REGISTER");
                    echo "</a></li>
\t\t\t\t";
                }
                // line 246
                echo "\t\t\t";
            } elseif ( !($context["S_DISPLAY_SEARCH"] ?? null)) {
                // line 247
                echo "\t\t\t\t<li><a href=\"";
                echo ($context["U_PROFILE"] ?? null);
                echo "\" class=\"small-icon icon-profile\">";
                echo ($context["CURRENT_USERNAME_SIMPLE"] ?? null);
                echo "</a></li>
\t\t\t";
            }
            // line 249
            echo "\t\t";
        }
        // line 250
        echo "
\t\t";
        // line 251
        if (((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_IN_NAVBAR", [], "any", false, false, false, 251) == 1) && twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_BOX", [], "any", false, false, false, 251))) {
            // line 252
            echo "\t\t\t<li class=\"search-box not-responsive\">";
            echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_BOX", [], "any", false, false, false, 252);
            echo "</li>
\t\t";
        }
        // line 254
        echo "\t</ul>
</div>

";
        // line 257
        ob_start();
        // line 258
        echo "<div class=\"navbar\">
\t<ul id=\"nav-breadcrumbs\" class=\"nav-breadcrumbs linklist navlinks\" role=\"menubar\">
\t\t";
        // line 260
        $value = " itemtype=\"http://schema.org/ListItem\" itemprop=\"itemListElement\" itemscope";
        $context['definition']->set('MICRODATA', $value);
        // line 261
        echo "\t\t";
        $context["navlink_position"] = 1;
        // line 262
        echo "\t\t";
        // line 263
        echo "\t\t<li class=\"breadcrumbs\" itemscope itemtype=\"http://schema.org/BreadcrumbList\">
\t\t\t";
        // line 264
        if (($context["U_SITE_HOME"] ?? null)) {
            // line 265
            echo "\t\t\t\t<span class=\"crumb\" ";
            echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "MICRODATA", [], "any", false, false, false, 265);
            echo "><a href=\"";
            echo ($context["U_SITE_HOME"] ?? null);
            echo "\" itemtype=\"https://schema.org/Thing\" itemscope itemprop=\"item\" data-navbar-reference=\"home\"><i class=\"icon fa-home fa-fw\" aria-hidden=\"true\"></i><span itemprop=\"name\">";
            echo $this->extensions['phpbb\template\twig\extension']->lang("SITE_HOME");
            echo "</span></a><meta itemprop=\"position\" content=\"";
            echo ($context["navlink_position"] ?? null);
            $context["navlink_position"] = (($context["navlink_position"] ?? null) + 1);
            echo "\" /></span>
\t\t\t";
        }
        // line 267
        echo "\t\t\t";
        // line 268
        echo "\t\t\t\t<span class=\"crumb\" ";
        echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "MICRODATA", [], "any", false, false, false, 268);
        echo "><a href=\"";
        echo ($context["U_INDEX"] ?? null);
        echo "\" itemtype=\"https://schema.org/Thing\" itemscope itemprop=\"item\" accesskey=\"h\" data-navbar-reference=\"index\">";
        if ( !($context["U_SITE_HOME"] ?? null)) {
            echo "<i class=\"icon fa-home fa-fw\"></i>";
        }
        echo "<span itemprop=\"name\">";
        echo $this->extensions['phpbb\template\twig\extension']->lang("INDEX");
        echo "</span></a><meta itemprop=\"position\" content=\"";
        echo ($context["navlink_position"] ?? null);
        $context["navlink_position"] = (($context["navlink_position"] ?? null) + 1);
        echo "\" /></span>

\t\t\t";
        // line 270
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "navlinks", [], "any", false, false, false, 270));
        foreach ($context['_seq'] as $context["_key"] => $context["navlinks"]) {
            // line 271
            echo "\t\t\t\t";
            $context["NAVLINK_NAME"] = ((twig_get_attribute($this->env, $this->source, $context["navlinks"], "BREADCRUMB_NAME", [], "any", true, true, false, 271)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, $context["navlinks"], "BREADCRUMB_NAME", [], "any", false, false, false, 271), twig_get_attribute($this->env, $this->source, $context["navlinks"], "FORUM_NAME", [], "any", false, false, false, 271))) : (twig_get_attribute($this->env, $this->source, $context["navlinks"], "FORUM_NAME", [], "any", false, false, false, 271)));
            // line 272
            echo "\t\t\t\t";
            $context["NAVLINK_LINK"] = ((twig_get_attribute($this->env, $this->source, $context["navlinks"], "U_BREADCRUMB", [], "any", true, true, false, 272)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, $context["navlinks"], "U_BREADCRUMB", [], "any", false, false, false, 272), twig_get_attribute($this->env, $this->source, $context["navlinks"], "U_VIEW_FORUM", [], "any", false, false, false, 272))) : (twig_get_attribute($this->env, $this->source, $context["navlinks"], "U_VIEW_FORUM", [], "any", false, false, false, 272)));
            // line 273
            echo "\t\t\t\t";
            // line 274
            echo "\t\t\t\t<span class=\"crumb\" ";
            echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "MICRODATA", [], "any", false, false, false, 274);
            if (twig_get_attribute($this->env, $this->source, $context["navlinks"], "MICRODATA", [], "any", false, false, false, 274)) {
                echo " ";
                echo twig_get_attribute($this->env, $this->source, $context["navlinks"], "MICRODATA", [], "any", false, false, false, 274);
            }
            echo "><a href=\"";
            echo ($context["NAVLINK_LINK"] ?? null);
            echo "\" itemtype=\"https://schema.org/Thing\" itemscope itemprop=\"item\"><span itemprop=\"name\">";
            echo ($context["NAVLINK_NAME"] ?? null);
            echo "</span></a><meta itemprop=\"position\" content=\"";
            echo ($context["navlink_position"] ?? null);
            $context["navlink_position"] = (($context["navlink_position"] ?? null) + 1);
            echo "\" /></span>
\t\t\t\t";
            // line 275
            // line 276
            echo "\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['navlinks'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 277
        echo "\t\t\t";
        // line 278
        echo "\t\t</li>
\t\t";
        // line 279
        // line 280
        echo "
\t\t";
        // line 281
        if ((($context["S_DISPLAY_SEARCH"] ?? null) &&  !($context["S_IN_SEARCH"] ?? null))) {
            // line 282
            echo "\t\t\t<li class=\"rightside responsive-search\">
\t\t\t\t<a href=\"";
            // line 283
            echo ($context["U_SEARCH"] ?? null);
            echo "\" title=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_ADV_EXPLAIN");
            echo "\" role=\"menuitem\">
\t\t\t\t\t<i class=\"icon fa-search fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
            // line 284
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH");
            echo "</span>
\t\t\t\t</a>
\t\t\t</li>
\t\t";
        }
        // line 288
        echo "\t\t<li class=\"rightside dropdown-container icon-only\">
\t\t\t<a href=\"#\" class=\"dropdown-trigger time\" title=\"";
        // line 289
        echo ($context["CURRENT_TIME"] ?? null);
        echo "\"><i class=\"fa fa-clock-o\"></i></a>
\t\t\t<div class=\"dropdown\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t\t<li>";
        // line 293
        echo ($context["CURRENT_TIME"] ?? null);
        echo "</li>
\t\t\t\t\t<li>";
        // line 294
        echo ($context["S_TIMEZONE"] ?? null);
        echo "</li>
\t\t\t\t</ul>
\t\t\t</div>
\t\t</li>
\t</ul>
</div>
";
        $value = ('' === $value = ob_get_clean()) ? '' : new \Twig_Markup($value, $this->env->getCharset());
        $context['definition']->set('BREADCRUMBS', $value);
        // line 301
        if ((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "WRAP_HEADER", [], "any", false, false, false, 301) != 0)) {
            // line 302
            echo "\t";
            echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "BREADCRUMBS", [], "any", false, false, false, 302);
            echo "
\t";
            // line 303
            $value = "";
            $context['definition']->set('BREADCRUMBS', $value);
        }
    }

    public function getTemplateName()
    {
        return "navbar_header.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  884 => 303,  879 => 302,  877 => 301,  866 => 294,  862 => 293,  855 => 289,  852 => 288,  845 => 284,  839 => 283,  836 => 282,  834 => 281,  831 => 280,  830 => 279,  827 => 278,  825 => 277,  819 => 276,  818 => 275,  802 => 274,  800 => 273,  797 => 272,  794 => 271,  790 => 270,  773 => 268,  771 => 267,  758 => 265,  756 => 264,  753 => 263,  751 => 262,  748 => 261,  745 => 260,  741 => 258,  739 => 257,  734 => 254,  728 => 252,  726 => 251,  723 => 250,  720 => 249,  712 => 247,  709 => 246,  701 => 244,  699 => 243,  690 => 242,  687 => 241,  684 => 240,  676 => 238,  674 => 237,  663 => 236,  660 => 235,  657 => 234,  654 => 233,  646 => 231,  644 => 230,  633 => 229,  631 => 228,  626 => 227,  623 => 226,  620 => 225,  618 => 224,  615 => 223,  602 => 219,  586 => 218,  583 => 217,  580 => 216,  577 => 215,  571 => 213,  568 => 212,  566 => 211,  564 => 210,  557 => 208,  550 => 203,  547 => 202,  545 => 201,  537 => 199,  535 => 198,  526 => 197,  524 => 196,  515 => 195,  512 => 194,  509 => 193,  507 => 192,  503 => 190,  491 => 189,  485 => 186,  479 => 183,  475 => 182,  468 => 181,  465 => 180,  457 => 175,  451 => 172,  447 => 171,  440 => 170,  438 => 169,  435 => 168,  434 => 167,  425 => 161,  419 => 160,  414 => 157,  413 => 156,  410 => 155,  403 => 151,  397 => 150,  394 => 149,  392 => 148,  386 => 145,  380 => 144,  376 => 142,  375 => 141,  372 => 140,  365 => 136,  361 => 135,  358 => 134,  356 => 133,  346 => 129,  343 => 128,  341 => 127,  338 => 126,  331 => 122,  325 => 121,  322 => 120,  319 => 119,  312 => 115,  306 => 114,  303 => 113,  300 => 112,  299 => 111,  293 => 108,  287 => 107,  284 => 106,  283 => 105,  279 => 103,  277 => 102,  271 => 98,  264 => 94,  260 => 93,  257 => 92,  254 => 91,  247 => 87,  243 => 86,  240 => 85,  238 => 84,  229 => 80,  226 => 79,  224 => 78,  217 => 76,  214 => 75,  206 => 72,  203 => 71,  200 => 70,  199 => 69,  194 => 66,  189 => 64,  186 => 63,  184 => 62,  180 => 61,  173 => 57,  167 => 56,  158 => 54,  153 => 51,  148 => 50,  145 => 49,  142 => 47,  140 => 46,  137 => 45,  129 => 40,  125 => 39,  117 => 34,  113 => 33,  106 => 29,  102 => 28,  99 => 27,  92 => 23,  88 => 22,  85 => 21,  82 => 20,  75 => 16,  71 => 15,  68 => 14,  65 => 13,  58 => 9,  54 => 8,  51 => 7,  49 => 6,  46 => 5,  44 => 4,  41 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "navbar_header.html", "");
    }
}

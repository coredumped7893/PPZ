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

/* overall_header.html */
class __TwigTemplate_910cc583d9e3d78d3ad21cd774c47ed30f708c2c2478e577cd2321e09188f2c5 extends \Twig\Template
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
        echo "<!DOCTYPE html>
<html dir=\"";
        // line 2
        echo ($context["S_CONTENT_DIRECTION"] ?? null);
        echo "\" lang=\"";
        echo ($context["S_USER_LANG"] ?? null);
        echo "\">
<head>
<meta charset=\"utf-8\" />
<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />
";
        // line 7
        echo ($context["META"] ?? null);
        echo "
<title>";
        // line 8
        if (($context["UNREAD_NOTIFICATIONS_COUNT"] ?? null)) {
            echo "(";
            echo ($context["UNREAD_NOTIFICATIONS_COUNT"] ?? null);
            echo ") ";
        }
        if (( !($context["S_VIEWTOPIC"] ?? null) &&  !($context["S_VIEWFORUM"] ?? null))) {
            echo ($context["SITENAME"] ?? null);
            echo " - ";
        }
        if (($context["S_IN_MCP"] ?? null)) {
            echo $this->extensions['phpbb\template\twig\extension']->lang("MCP");
            echo " - ";
        } elseif (($context["S_IN_UCP"] ?? null)) {
            echo $this->extensions['phpbb\template\twig\extension']->lang("UCP");
            echo " - ";
        }
        echo ($context["PAGE_TITLE"] ?? null);
        if ((($context["S_VIEWTOPIC"] ?? null) || ($context["S_VIEWFORUM"] ?? null))) {
            echo " - ";
            echo ($context["SITENAME"] ?? null);
        }
        echo "</title>

";
        // line 10
        $location = "_style_config.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("_style_config.html", "overall_header.html", 10)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 11
        echo "
";
        // line 12
        if (($context["S_ENABLE_FEEDS"] ?? null)) {
            // line 13
            echo "\t";
            if (($context["S_ENABLE_FEEDS_OVERALL"] ?? null)) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FEED");
                echo " - ";
                echo ($context["SITENAME"] ?? null);
                echo "\" href=\"";
                echo $this->extensions['phpbb\template\twig\extension\routing']->getPath("phpbb_feed_index");
                echo "\">";
            }
            // line 14
            echo "\t";
            if (($context["S_ENABLE_FEEDS_NEWS"] ?? null)) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FEED");
                echo " - ";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FEED_NEWS");
                echo "\" href=\"";
                echo $this->extensions['phpbb\template\twig\extension\routing']->getPath("phpbb_feed_news");
                echo "\">";
            }
            // line 15
            echo "\t";
            if (($context["S_ENABLE_FEEDS_FORUMS"] ?? null)) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FEED");
                echo " - ";
                echo $this->extensions['phpbb\template\twig\extension']->lang("ALL_FORUMS");
                echo "\" href=\"";
                echo $this->extensions['phpbb\template\twig\extension\routing']->getPath("phpbb_feed_forums");
                echo "\">";
            }
            // line 16
            echo "\t";
            if (($context["S_ENABLE_FEEDS_TOPICS"] ?? null)) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FEED");
                echo " - ";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FEED_TOPICS_NEW");
                echo "\" href=\"";
                echo $this->extensions['phpbb\template\twig\extension\routing']->getPath("phpbb_feed_topics");
                echo "\">";
            }
            // line 17
            echo "\t";
            if (($context["S_ENABLE_FEEDS_TOPICS_ACTIVE"] ?? null)) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FEED");
                echo " - ";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FEED_TOPICS_ACTIVE");
                echo "\" href=\"";
                echo $this->extensions['phpbb\template\twig\extension\routing']->getPath("phpbb_feed_topics_active");
                echo "\">";
            }
            // line 18
            echo "\t";
            if ((($context["S_ENABLE_FEEDS_FORUM"] ?? null) && ($context["S_FORUM_ID"] ?? null))) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FEED");
                echo " - ";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FORUM");
                echo " - ";
                echo ($context["FORUM_NAME"] ?? null);
                echo "\" href=\"";
                echo $this->extensions['phpbb\template\twig\extension\routing']->getPath("phpbb_feed_forum", ["forum_id" => ($context["S_FORUM_ID"] ?? null)]);
                echo "\">";
            }
            // line 19
            echo "\t";
            if ((($context["S_ENABLE_FEEDS_TOPIC"] ?? null) && ($context["S_TOPIC_ID"] ?? null))) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->extensions['phpbb\template\twig\extension']->lang("FEED");
                echo " - ";
                echo $this->extensions['phpbb\template\twig\extension']->lang("TOPIC");
                echo " - ";
                echo ($context["TOPIC_TITLE"] ?? null);
                echo "\" href=\"";
                echo $this->extensions['phpbb\template\twig\extension\routing']->getPath("phpbb_feed_topic", ["topic_id" => ($context["S_TOPIC_ID"] ?? null)]);
                echo "\">";
            }
            // line 20
            echo "\t";
        }
        // line 22
        echo "
";
        // line 23
        if (($context["U_CANONICAL"] ?? null)) {
            // line 24
            echo "\t<link rel=\"canonical\" href=\"";
            echo ($context["U_CANONICAL"] ?? null);
            echo "\">
";
        }
        // line 26
        echo "
<!--
\tphpBB style name: simplicity
\tBased on style:   prosilver
\tOriginal author:  Arty ( https://www.artodia.com )
\tModified by: \t  MrGaby
-->

";
        // line 34
        if (($context["S_ALLOW_CDN"] ?? null)) {
            // line 35
            echo "<script>
\tWebFontConfig = {
\t\tgoogle: {
\t\t\tfamilies: ['Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese']
\t\t}
\t};

\t(function(d) {
\t\tvar wf = d.createElement('script'), s = d.scripts[0];
\t\twf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js';
\t\twf.async = true;
\t\ts.parentNode.insertBefore(wf, s);
\t})(document);
</script>
";
        }
        // line 50
        echo "
<link href=\"";
        // line 51
        echo ($context["T_FONT_AWESOME_LINK"] ?? null);
        echo "\" rel=\"stylesheet\">
<link href=\"";
        // line 52
        echo ($context["T_STYLESHEET_LINK"] ?? null);
        echo "\" rel=\"stylesheet\">

";
        // line 54
        if ((($context["S_CONTENT_DIRECTION"] ?? null) == "rtl")) {
            // line 55
            echo "\t<link href=\"";
            echo ($context["T_THEME_PATH"] ?? null);
            echo "/bidi.css?assets_version=";
            echo ($context["T_ASSETS_VERSION"] ?? null);
            echo "\" rel=\"stylesheet\">
";
        }
        // line 57
        echo "
";
        // line 58
        if (($context["S_PLUPLOAD"] ?? null)) {
            // line 59
            echo "\t<link href=\"";
            echo ($context["T_THEME_PATH"] ?? null);
            echo "/plupload.css?assets_version=";
            echo ($context["T_ASSETS_VERSION"] ?? null);
            echo "\" rel=\"stylesheet\">
";
        }
        // line 61
        echo "
";
        // line 62
        if (($context["S_COOKIE_NOTICE"] ?? null)) {
            // line 63
            echo "\t<link href=\"";
            echo ($context["T_ASSETS_PATH"] ?? null);
            echo "/cookieconsent/cookieconsent.min.css?assets_version=";
            echo ($context["T_ASSETS_VERSION"] ?? null);
            echo "\" rel=\"stylesheet\">
";
        }
        // line 65
        echo "
<!--[if lte IE 9]>
\t<link href=\"";
        // line 67
        echo ($context["T_THEME_PATH"] ?? null);
        echo "/tweaks.css?assets_version=";
        echo ($context["T_ASSETS_VERSION"] ?? null);
        echo "\" rel=\"stylesheet\">
<![endif]-->

";
        // line 70
        // line 71
        echo "
";
        // line 72
        echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "STYLESHEETS", [], "any", false, false, false, 72);
        echo "

";
        // line 74
        // line 75
        echo "
</head>
<body id=\"phpbb\" class=\"nojs notouch section-";
        // line 77
        echo ($context["SCRIPT_NAME"] ?? null);
        echo " ";
        echo ($context["S_CONTENT_DIRECTION"] ?? null);
        echo " ";
        echo ($context["BODY_CLASS"] ?? null);
        echo "\" data-online-text=\"";
        echo $this->extensions['phpbb\template\twig\extension']->lang("ONLINE");
        echo "\">

";
        // line 79
        // line 80
        echo "
";
        // line 81
        if ((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "WRAP_HEADER", [], "any", false, false, false, 81) == 1)) {
            // line 82
            echo "<div id=\"wrap\" class=\"page-width\">
";
        }
        // line 84
        echo "\t<a id=\"top\" class=\"top-anchor\" accesskey=\"t\"></a>
\t<div id=\"page-header\" class=\"page-width\">
\t\t<div class=\"headerbar\" role=\"banner\">
\t\t";
        // line 87
        // line 88
        echo "\t\t\t<div class=\"inner\">

\t\t\t<div id=\"site-description\" class=\"site-description\">
\t\t\t\t<a id=\"logo\" class=\"logo\" href=\"";
        // line 91
        if (($context["U_SITE_HOME"] ?? null)) {
            echo ($context["U_SITE_HOME"] ?? null);
        } else {
            echo ($context["U_INDEX"] ?? null);
        }
        echo "\" title=\"";
        if (($context["U_SITE_HOME"] ?? null)) {
            echo ($context["L_SITE_HOME"] ?? null);
        } else {
            echo ($context["L_INDEX"] ?? null);
        }
        echo "\">
\t\t\t\t\t<img src=\"";
        // line 92
        echo ($context["T_THEME_PATH"] ?? null);
        echo "/images/logo.png\" data-src-hd=\"";
        echo ($context["T_THEME_PATH"] ?? null);
        echo "/images/logo_hd.png\" alt=\"";
        echo ($context["SITENAME"] ?? null);
        echo "\"/>
\t\t\t\t</a>
\t\t\t\t<p class=\"sitename\">";
        // line 94
        echo ($context["SITENAME"] ?? null);
        echo "</p>
\t\t\t\t<p>";
        // line 95
        echo ($context["SITE_DESCRIPTION"] ?? null);
        echo "</p>
\t\t\t\t<p class=\"skiplink\"><a href=\"#start_here\">";
        // line 96
        echo $this->extensions['phpbb\template\twig\extension']->lang("SKIP");
        echo "</a></p>
\t\t\t</div>

\t\t\t";
        // line 99
        // line 100
        echo "\t\t\t";
        if ((($context["S_DISPLAY_SEARCH"] ?? null) &&  !($context["S_IN_SEARCH"] ?? null))) {
            // line 101
            echo "\t\t\t";
            ob_start();
            // line 102
            echo "\t\t\t<div id=\"search-box\" class=\"search-box search-header\" role=\"search\">
\t\t\t\t<form action=\"";
            // line 103
            echo ($context["U_SEARCH"] ?? null);
            echo "\" method=\"get\" id=\"search\">
\t\t\t\t<fieldset>
\t\t\t\t\t<input name=\"keywords\" id=\"keywords\" type=\"search\" maxlength=\"128\" title=\"";
            // line 105
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_KEYWORDS");
            echo "\" class=\"inputbox search tiny\" size=\"20\" value=\"";
            echo ($context["SEARCH_WORDS"] ?? null);
            echo "\" placeholder=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_MINI");
            echo "\" />
\t\t\t\t\t<button class=\"button button-search\" type=\"submit\" title=\"";
            // line 106
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH");
            echo "\">
\t\t\t\t\t\t<i class=\"icon fa-search fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
            // line 107
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH");
            echo "</span>
\t\t\t\t\t</button>
\t\t\t\t\t<a href=\"";
            // line 109
            echo ($context["U_SEARCH"] ?? null);
            echo "\" class=\"button button-search-end\" title=\"";
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_ADV");
            echo "\">
\t\t\t\t\t\t<i class=\"icon fa-cog fa-fw\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
            // line 110
            echo $this->extensions['phpbb\template\twig\extension']->lang("SEARCH_ADV");
            echo "</span>
\t\t\t\t\t</a>
\t\t\t\t\t";
            // line 112
            echo ($context["S_SEARCH_HIDDEN_FIELDS"] ?? null);
            echo "
\t\t\t\t</fieldset>
\t\t\t\t</form>
\t\t\t</div>
\t\t\t";
            $value = ('' === $value = ob_get_clean()) ? '' : new \Twig_Markup($value, $this->env->getCharset());
            $context['definition']->set('SEARCH_BOX', $value);
            // line 117
            echo "\t\t\t";
            if ((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_IN_NAVBAR", [], "any", false, false, false, 117) == 0)) {
                echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "SEARCH_BOX", [], "any", false, false, false, 117);
            }
            // line 118
            echo "\t\t\t";
        }
        // line 119
        echo "\t\t\t";
        // line 120
        echo "
\t\t\t</div>
\t\t\t";
        // line 122
        // line 123
        echo "\t\t</div>

";
        // line 125
        if ((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "WRAP_HEADER", [], "any", false, false, false, 125) == 2)) {
            // line 126
            echo "</div>
<div id=\"wrap\" class=\"page-width\">
<div>
";
        }
        // line 130
        echo "
\t\t";
        // line 131
        // line 132
        echo "\t\t";
        $location = "navbar_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("navbar_header.html", "overall_header.html", 132)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 133
        echo "\t</div>

";
        // line 135
        if ((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "WRAP_HEADER", [], "any", false, false, false, 135) == 0)) {
            // line 136
            echo "<div id=\"wrap\" class=\"page-width\">
";
        }
        // line 138
        echo "
\t";
        // line 139
        // line 140
        echo "
\t<a id=\"start_here\" class=\"top-anchor\"></a>
\t<div id=\"page-body\" class=\"page-body\" role=\"main\">
\t\t";
        // line 143
        echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "BREADCRUMBS", [], "any", false, false, false, 143);
        echo "
\t\t";
        // line 144
        if (((($context["S_BOARD_DISABLED"] ?? null) && ($context["S_USER_LOGGED_IN"] ?? null)) && (($context["U_MCP"] ?? null) || ($context["U_ACP"] ?? null)))) {
            // line 145
            echo "\t\t<div id=\"information\" class=\"rules\">
\t\t\t<div class=\"inner\">
\t\t\t\t<strong>";
            // line 147
            echo $this->extensions['phpbb\template\twig\extension']->lang("INFORMATION");
            echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
            echo "</strong> ";
            echo $this->extensions['phpbb\template\twig\extension']->lang("BOARD_DISABLED");
            echo "
\t\t\t</div>
\t\t</div>
\t\t";
        }
        // line 151
        echo "
\t\t";
        // line 152
    }

    public function getTemplateName()
    {
        return "overall_header.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  501 => 152,  498 => 151,  488 => 147,  484 => 145,  482 => 144,  478 => 143,  473 => 140,  472 => 139,  469 => 138,  465 => 136,  463 => 135,  459 => 133,  446 => 132,  445 => 131,  442 => 130,  436 => 126,  434 => 125,  430 => 123,  429 => 122,  425 => 120,  423 => 119,  420 => 118,  415 => 117,  406 => 112,  401 => 110,  395 => 109,  390 => 107,  386 => 106,  378 => 105,  373 => 103,  370 => 102,  367 => 101,  364 => 100,  363 => 99,  357 => 96,  353 => 95,  349 => 94,  340 => 92,  326 => 91,  321 => 88,  320 => 87,  315 => 84,  311 => 82,  309 => 81,  306 => 80,  305 => 79,  294 => 77,  290 => 75,  289 => 74,  284 => 72,  281 => 71,  280 => 70,  272 => 67,  268 => 65,  260 => 63,  258 => 62,  255 => 61,  247 => 59,  245 => 58,  242 => 57,  234 => 55,  232 => 54,  227 => 52,  223 => 51,  220 => 50,  203 => 35,  201 => 34,  191 => 26,  185 => 24,  183 => 23,  180 => 22,  177 => 20,  164 => 19,  151 => 18,  140 => 17,  129 => 16,  118 => 15,  107 => 14,  96 => 13,  94 => 12,  91 => 11,  79 => 10,  54 => 8,  50 => 7,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "overall_header.html", "");
    }
}

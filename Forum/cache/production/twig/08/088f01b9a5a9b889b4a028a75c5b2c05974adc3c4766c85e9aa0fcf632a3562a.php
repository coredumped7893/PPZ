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

/* forumlist_body.html */
class __TwigTemplate_8f2a996bfc8633dad5c4958972ef095779d5932131f8c457f7ad60454b86ca93 extends \Twig\Template
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
        echo "
";
        // line 2
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["loops"] ?? null), "forumrow", [], "any", false, false, false, 2));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["forumrow"]) {
            // line 3
            echo "\t";
            if (((twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_IS_CAT", [], "any", false, false, false, 3) &&  !twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_FIRST_ROW", [], "any", false, false, false, 3)) || twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_NO_CAT", [], "any", false, false, false, 3))) {
                // line 4
                echo "\t\t\t</ul>

\t\t\t</div>
\t\t</div>
\t";
            }
            // line 9
            echo "
\t";
            // line 10
            // line 11
            echo "\t";
            if (((twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_IS_CAT", [], "any", false, false, false, 11) || twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_FIRST_ROW", [], "any", false, false, false, 11)) || twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_NO_CAT", [], "any", false, false, false, 11))) {
                // line 12
                echo "\t\t<div class=\"forabg category-";
                echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_ID", [], "any", false, false, false, 12);
                if ((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "STANDARD_FORUMS_LAYOUT", [], "any", false, false, false, 12) == 0)) {
                    echo " elegant";
                }
                echo "\" data-hide-description=\"";
                echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "HIDE_FORUM_DESCRIPTION", [], "any", false, false, false, 12);
                echo "\">
\t\t\t<div class=\"inner\">
\t\t\t<ul class=\"topiclist\">
\t\t\t\t<li class=\"header\">
\t\t\t\t\t";
                // line 16
                // line 17
                echo "\t\t\t\t\t<dl class=\"row-item\">
\t\t\t\t\t\t<dt><div class=\"list-inner\">";
                // line 18
                if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_IS_CAT", [], "any", false, false, false, 18)) {
                    echo "<a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "U_VIEWFORUM", [], "any", false, false, false, 18);
                    echo "\" data-id=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_ID", [], "any", false, false, false, 18);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_NAME", [], "any", false, false, false, 18);
                    echo "</a>";
                } else {
                    echo $this->extensions['phpbb\template\twig\extension']->lang("FORUM");
                }
                echo "</div></dt>
\t\t\t\t\t\t";
                // line 19
                if ((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "STANDARD_FORUMS_LAYOUT", [], "any", false, false, false, 19) != 0)) {
                    // line 20
                    echo "\t\t\t\t\t\t<dd class=\"topics\">";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("TOPICS");
                    echo "</dd>
\t\t\t\t\t\t<dd class=\"posts\">";
                    // line 21
                    echo $this->extensions['phpbb\template\twig\extension']->lang("POSTS");
                    echo "</dd>
\t\t\t\t\t\t";
                }
                // line 23
                echo "\t\t\t\t\t\t<dd class=\"lastpost\"><span>";
                echo $this->extensions['phpbb\template\twig\extension']->lang("LAST_POST");
                echo "</span></dd>
\t\t\t\t\t</dl>
\t\t\t\t\t";
                // line 25
                // line 26
                echo "\t\t\t\t</li>
\t\t\t</ul>
\t\t\t<ul class=\"topiclist forums\">
\t";
            }
            // line 30
            echo "\t";
            // line 31
            echo "
\t";
            // line 32
            if ( !twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_IS_CAT", [], "any", false, false, false, 32)) {
                // line 33
                echo "\t\t";
                // line 34
                echo "\t\t<li class=\"row forum-";
                echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_ID", [], "any", false, false, false, 34);
                echo "\">
\t\t\t";
                // line 35
                // line 36
                echo "\t\t\t";
                ob_start();
                // line 37
                echo "\t\t\t";
                if ((((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "STANDARD_FORUMS_LAYOUT", [], "any", false, false, false, 37) == 0) &&  !twig_get_attribute($this->env, $this->source, $context["forumrow"], "CLICKS", [], "any", false, false, false, 37)) &&  !twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_IS_LINK", [], "any", false, false, false, 37))) {
                    // line 38
                    echo "\t\t\t\t<div class=\"forum-statistics\">
\t\t\t\t\t<span class=\"dfn\">";
                    // line 39
                    echo $this->extensions['phpbb\template\twig\extension']->lang("TOPICS");
                    echo "</span>";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                    echo " <span class=\"value\">";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "TOPICS", [], "any", false, false, false, 39);
                    echo "</span><span class=\"comma\">";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("COMMA_SEPARATOR");
                    echo "</span>
\t\t\t\t\t<span class=\"dfn\">";
                    // line 40
                    echo $this->extensions['phpbb\template\twig\extension']->lang("POSTS");
                    echo "</span>";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                    echo " <span class=\"value\">";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "POSTS", [], "any", false, false, false, 40);
                    echo "</span>
\t\t\t\t</div>
\t\t\t";
                }
                // line 43
                echo "\t\t\t";
                $value = ('' === $value = ob_get_clean()) ? '' : new \Twig_Markup($value, $this->env->getCharset());
                $context['definition']->set('EXTRA_DESC', $value);
                // line 44
                echo "\t\t\t<dl class=\"row-item ";
                echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_IMG_STYLE", [], "any", false, false, false, 44);
                if (twig_trim_filter(twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "EXTRA_DESC", [], "any", false, false, false, 44))) {
                    echo " elegant-row";
                }
                echo "\">
\t\t\t\t<dt title=\"";
                // line 45
                echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_FOLDER_IMG_ALT", [], "any", false, false, false, 45);
                echo "\">
\t\t\t\t\t";
                // line 46
                if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_UNREAD_FORUM", [], "any", false, false, false, 46)) {
                    echo "<a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "U_VIEWFORUM", [], "any", false, false, false, 46);
                    echo "\" class=\"row-item-link\"></a>";
                }
                // line 47
                echo "\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t";
                // line 48
                if ((($context["S_ENABLE_FEEDS"] ?? null) && twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_FEED_ENABLED", [], "any", false, false, false, 48))) {
                    // line 49
                    echo "\t\t\t\t\t\t\t<!--
\t\t\t\t\t\t\t\t<a class=\"feed-icon-forum\" title=\"";
                    // line 50
                    echo $this->extensions['phpbb\template\twig\extension']->lang("FEED");
                    echo " - ";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_NAME", [], "any", false, false, false, 50);
                    echo "\" href=\"";
                    echo ($context["U_FEED"] ?? null);
                    echo "?f=";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_ID", [], "any", false, false, false, 50);
                    echo "\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-rss-square fa-fw icon-orange\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                    // line 51
                    echo $this->extensions['phpbb\template\twig\extension']->lang("FEED");
                    echo " - ";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_NAME", [], "any", false, false, false, 51);
                    echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t-->
\t\t\t\t\t\t";
                }
                // line 55
                echo "\t\t\t\t\t\t";
                if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_IMAGE", [], "any", false, false, false, 55)) {
                    // line 56
                    echo "\t\t\t\t\t\t\t";
                    // line 57
                    echo "\t\t\t\t\t\t\t<span class=\"forum-image\">";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_IMAGE", [], "any", false, false, false, 57);
                    echo "</span>
\t\t\t\t\t\t\t";
                    // line 58
                    // line 59
                    echo "\t\t\t\t\t\t";
                }
                // line 60
                echo "\t\t\t\t\t\t<a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "U_VIEWFORUM", [], "any", false, false, false, 60);
                echo "\" class=\"forumtitle\" data-id=\"";
                echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_ID", [], "any", false, false, false, 60);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_NAME", [], "any", false, false, false, 60);
                echo "</a>
\t\t\t\t\t\t";
                // line 61
                if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_DESC", [], "any", false, false, false, 61)) {
                    echo "<div class=\"forum-description\">";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "FORUM_DESC", [], "any", false, false, false, 61);
                    echo "</div>";
                }
                // line 62
                echo "\t\t\t\t\t\t";
                echo twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "EXTRA_DESC", [], "any", false, false, false, 62);
                echo "
\t\t\t\t\t\t";
                // line 63
                if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "MODERATORS", [], "any", false, false, false, 63)) {
                    // line 64
                    echo "\t\t\t\t\t\t\t<div class=\"forum-moderators\"><strong>";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "L_MODERATOR_STR", [], "any", false, false, false, 64);
                    echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                    echo "</strong> ";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "MODERATORS", [], "any", false, false, false, 64);
                    echo "</div>
\t\t\t\t\t\t";
                }
                // line 66
                echo "\t\t\t\t\t\t";
                if ((twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, $context["forumrow"], "subforum", [], "any", false, false, false, 66)) && twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_LIST_SUBFORUMS", [], "any", false, false, false, 66))) {
                    // line 67
                    echo "\t\t\t\t\t\t\t<div class=\"subforums-list\">
\t\t\t\t\t\t\t";
                    // line 68
                    // line 69
                    echo "\t\t\t\t\t\t\t<strong>";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "L_SUBFORUM_STR", [], "any", false, false, false, 69);
                    echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                    echo "</strong>
\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t";
                    // line 71
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["forumrow"], "subforum", [], "any", false, false, false, 71));
                    foreach ($context['_seq'] as $context["_key"] => $context["subforum"]) {
                        // line 72
                        echo "\t\t\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t\t";
                        // line 73
                        echo "<a href=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["subforum"], "U_SUBFORUM", [], "any", false, false, false, 73);
                        echo "\" class=\"subforum";
                        if (twig_get_attribute($this->env, $this->source, $context["subforum"], "S_UNREAD", [], "any", false, false, false, 73)) {
                            echo " unread";
                        } else {
                            echo " read";
                        }
                        echo "\" title=\"";
                        if (twig_get_attribute($this->env, $this->source, $context["subforum"], "S_UNREAD", [], "any", false, false, false, 73)) {
                            echo $this->extensions['phpbb\template\twig\extension']->lang("UNREAD_POSTS");
                        } else {
                            echo $this->extensions['phpbb\template\twig\extension']->lang("NO_UNREAD_POSTS");
                        }
                        echo "\">
\t\t\t\t\t\t\t\t\t<i class=\"icon ";
                        // line 74
                        if (twig_get_attribute($this->env, $this->source, $context["subforum"], "IS_LINK", [], "any", false, false, false, 74)) {
                            echo "fa-external-link";
                        } else {
                            echo "fa-file-o";
                        }
                        echo " fa-fw ";
                        if (twig_get_attribute($this->env, $this->source, $context["subforum"], "S_UNREAD", [], "any", false, false, false, 74)) {
                            echo " icon-red";
                        }
                        echo " icon-md\" aria-hidden=\"true\"></i>";
                        echo twig_get_attribute($this->env, $this->source, $context["subforum"], "SUBFORUM_NAME", [], "any", false, false, false, 74);
                        echo "</a>";
                        if ( !twig_get_attribute($this->env, $this->source, $context["subforum"], "S_LAST_ROW", [], "any", false, false, false, 74)) {
                            echo "<span>";
                            echo $this->extensions['phpbb\template\twig\extension']->lang("COMMA_SEPARATOR");
                            echo "</span>";
                        }
                        // line 75
                        echo "\t\t\t\t\t\t\t\t</li>
\t\t\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['subforum'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 77
                    echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t";
                    // line 78
                    // line 79
                    echo "\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 81
                echo "
\t\t\t\t\t\t";
                // line 82
                if ( !($context["S_IS_BOT"] ?? null)) {
                    // line 83
                    echo "\t\t\t\t\t\t";
                    if ((twig_trim_filter(twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "EXTRA_DESC", [], "any", false, false, false, 83)) == "")) {
                        // line 84
                        echo "\t\t\t\t\t\t<div class=\"responsive-show\" style=\"display: none;\">
\t\t\t\t\t\t\t";
                        // line 85
                        if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "CLICKS", [], "any", false, false, false, 85)) {
                            // line 86
                            echo "\t\t\t\t\t\t\t\t";
                            echo $this->extensions['phpbb\template\twig\extension']->lang("REDIRECTS");
                            echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                            echo " <strong>";
                            echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "CLICKS", [], "any", false, false, false, 86);
                            echo "</strong>
\t\t\t\t\t\t\t";
                        } elseif (( !twig_get_attribute($this->env, $this->source,                         // line 87
$context["forumrow"], "S_IS_LINK", [], "any", false, false, false, 87) && twig_get_attribute($this->env, $this->source, $context["forumrow"], "TOPICS", [], "any", false, false, false, 87))) {
                            // line 88
                            echo "\t\t\t\t\t\t\t\t";
                            echo $this->extensions['phpbb\template\twig\extension']->lang("TOPICS");
                            echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                            echo " <strong>";
                            echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "TOPICS", [], "any", false, false, false, 88);
                            echo "</strong>
\t\t\t\t\t\t\t";
                        }
                        // line 90
                        echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                    }
                    // line 92
                    echo "\t\t\t\t\t\t\t";
                    if (( !twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_IS_LINK", [], "any", false, false, false, 92) && twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POST_TIME", [], "any", false, false, false, 92))) {
                        // line 93
                        echo "\t\t\t\t\t\t\t<div class=\"forum-lastpost\" style=\"display: none;\">
\t\t\t\t\t\t\t\t<span><strong>";
                        // line 94
                        echo $this->extensions['phpbb\template\twig\extension']->lang("LAST_POST");
                        echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                        echo "</strong> <a href=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "U_LAST_POST", [], "any", false, false, false, 94);
                        echo "\" title=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POST_SUBJECT", [], "any", false, false, false, 94);
                        echo "\" class=\"lastsubject\">";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POST_SUBJECT_TRUNCATED", [], "any", false, false, false, 94);
                        echo "</a></span>
\t\t\t\t\t\t\t\t<span>";
                        // line 95
                        echo $this->extensions['phpbb\template\twig\extension']->lang("POST_BY_AUTHOR");
                        echo " ";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POSTER_FULL", [], "any", false, false, false, 95);
                        echo ", ";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POST_TIME", [], "any", false, false, false, 95);
                        echo "</span>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t";
                    }
                    // line 98
                    echo "\t\t\t\t\t\t";
                }
                // line 99
                echo "\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t";
                // line 101
                if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "CLICKS", [], "any", false, false, false, 101)) {
                    // line 102
                    echo "\t\t\t\t\t<dd class=\"redirect\"><span>";
                    echo $this->extensions['phpbb\template\twig\extension']->lang("REDIRECTS");
                    echo $this->extensions['phpbb\template\twig\extension']->lang("COLON");
                    echo " ";
                    echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "CLICKS", [], "any", false, false, false, 102);
                    echo "</span></dd>
\t\t\t\t";
                } elseif ( !twig_get_attribute($this->env, $this->source,                 // line 103
$context["forumrow"], "S_IS_LINK", [], "any", false, false, false, 103)) {
                    // line 104
                    echo "\t\t\t\t\t";
                    if ((twig_get_attribute($this->env, $this->source, ($context["definition"] ?? null), "STANDARD_FORUMS_LAYOUT", [], "any", false, false, false, 104) != 0)) {
                        // line 105
                        echo "\t\t\t\t\t<dd class=\"topics\">";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "TOPICS", [], "any", false, false, false, 105);
                        echo " <dfn>";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("TOPICS");
                        echo "</dfn></dd>
\t\t\t\t\t<dd class=\"posts\">";
                        // line 106
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "POSTS", [], "any", false, false, false, 106);
                        echo " <dfn>";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("POSTS");
                        echo "</dfn></dd>
\t\t\t\t\t";
                    }
                    // line 108
                    echo "\t\t\t\t\t<dd class=\"lastpost\">
\t\t\t\t\t\t<span>
\t\t\t\t\t\t\t";
                    // line 110
                    if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "U_UNAPPROVED_TOPICS", [], "any", false, false, false, 110)) {
                        // line 111
                        echo "\t\t\t\t\t\t\t\t<a href=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "U_UNAPPROVED_TOPICS", [], "any", false, false, false, 111);
                        echo "\" title=\"";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("TOPICS_UNAPPROVED");
                        echo "\" class=\"forum-mcplink\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-question fa-fw icon-blue\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 112
                        echo $this->extensions['phpbb\template\twig\extension']->lang("TOPICS_UNAPPROVED");
                        echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t";
                    } elseif (twig_get_attribute($this->env, $this->source,                     // line 114
$context["forumrow"], "U_UNAPPROVED_POSTS", [], "any", false, false, false, 114)) {
                        // line 115
                        echo "\t\t\t\t\t\t\t\t<a href=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "U_UNAPPROVED_POSTS", [], "any", false, false, false, 115);
                        echo "\" title=\"";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("POSTS_UNAPPROVED_FORUM");
                        echo "\" class=\"forum-mcplink\">
\t\t\t\t\t\t\t\t\t<i class=\"icon fa-question fa-fw icon-blue\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                        // line 116
                        echo $this->extensions['phpbb\template\twig\extension']->lang("POSTS_UNAPPROVED_FORUM");
                        echo "</span>
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t";
                    }
                    // line 119
                    echo "
\t\t\t\t\t\t\t";
                    // line 120
                    if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POST_TIME", [], "any", false, false, false, 120)) {
                        // line 121
                        echo "\t\t\t\t\t\t\t\t<dfn>";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("LAST_POST");
                        echo "</dfn>
\t\t\t\t\t\t\t\t";
                        // line 122
                        if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_DISPLAY_SUBJECT", [], "any", false, false, false, 122)) {
                            // line 123
                            echo "\t\t\t\t\t\t\t\t\t";
                            // line 124
                            echo "\t\t\t\t\t\t\t\t\t<a href=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "U_LAST_POST", [], "any", false, false, false, 124);
                            echo "\" title=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POST_SUBJECT", [], "any", false, false, false, 124);
                            echo "\" class=\"lastsubject\">";
                            echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POST_SUBJECT_TRUNCATED", [], "any", false, false, false, 124);
                            echo "</a> <br />
\t\t\t\t\t\t\t\t";
                        }
                        // line 126
                        echo "\t\t\t\t\t\t\t\t\t";
                        echo $this->extensions['phpbb\template\twig\extension']->lang("POST_BY_AUTHOR");
                        echo " ";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POSTER_FULL", [], "any", false, false, false, 126);
                        // line 127
                        echo "\t\t\t\t\t\t\t\t";
                        if ( !($context["S_IS_BOT"] ?? null)) {
                            // line 128
                            echo "\t\t\t\t\t\t\t\t\t<a href=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "U_LAST_POST", [], "any", false, false, false, 128);
                            echo "\" title=\"";
                            echo $this->extensions['phpbb\template\twig\extension']->lang("VIEW_LATEST_POST");
                            echo "\">
\t\t\t\t\t\t\t\t\t\t<i class=\"icon fa-external-link-square fa-fw icon-lightgray icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                            // line 129
                            echo $this->extensions['phpbb\template\twig\extension']->lang("VIEW_LATEST_POST");
                            echo "</span>
\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t";
                        }
                        // line 132
                        echo "\t\t\t\t\t\t\t\t<br /><time datetime=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POST_TIME_RFC3339", [], "any", false, false, false, 132);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["forumrow"], "LAST_POST_TIME", [], "any", false, false, false, 132);
                        echo "</time>
\t\t\t\t\t\t\t";
                    } else {
                        // line 134
                        echo "\t\t\t\t\t\t\t";
                        if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "U_UNAPPROVED_TOPICS", [], "any", false, false, false, 134)) {
                            // line 135
                            echo "\t\t\t\t\t\t\t";
                            echo $this->extensions['phpbb\template\twig\extension']->lang("TOPIC_UNAPPROVED_FORUM", twig_get_attribute($this->env, $this->source, $context["forumrow"], "TOPICS", [], "any", false, false, false, 135));
                            echo "
\t\t\t\t\t\t\t";
                        } else {
                            // line 137
                            echo "\t\t\t\t\t\t\t\t";
                            echo $this->extensions['phpbb\template\twig\extension']->lang("NO_POSTS");
                            echo "
\t\t\t\t\t\t\t";
                        }
                        // line 139
                        echo "\t\t\t\t\t\t\t";
                    }
                    // line 140
                    echo "\t\t\t\t\t\t</span>
\t\t\t\t\t</dd>
\t\t\t\t";
                } else {
                    // line 143
                    echo "\t\t\t\t\t<dd>&nbsp;</dd>
\t\t\t\t";
                }
                // line 145
                echo "\t\t\t</dl>
\t\t\t";
                // line 146
                // line 147
                echo "\t\t</li>
\t\t";
                // line 148
                // line 149
                echo "\t";
            }
            // line 150
            echo "
\t";
            // line 151
            if (twig_get_attribute($this->env, $this->source, $context["forumrow"], "S_LAST_ROW", [], "any", false, false, false, 151)) {
                // line 152
                echo "\t\t\t</ul>

\t\t\t</div>
\t\t</div>
\t";
                // line 156
                // line 157
                echo "\t";
            }
            // line 158
            echo "
";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 160
            echo "\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t<strong>";
            // line 162
            echo $this->extensions['phpbb\template\twig\extension']->lang("NO_FORUMS");
            echo "</strong>
\t\t</div>
\t</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['forumrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "forumlist_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  575 => 162,  571 => 160,  565 => 158,  562 => 157,  561 => 156,  555 => 152,  553 => 151,  550 => 150,  547 => 149,  546 => 148,  543 => 147,  542 => 146,  539 => 145,  535 => 143,  530 => 140,  527 => 139,  521 => 137,  515 => 135,  512 => 134,  504 => 132,  498 => 129,  491 => 128,  488 => 127,  483 => 126,  473 => 124,  471 => 123,  469 => 122,  464 => 121,  462 => 120,  459 => 119,  453 => 116,  446 => 115,  444 => 114,  439 => 112,  432 => 111,  430 => 110,  426 => 108,  419 => 106,  412 => 105,  409 => 104,  407 => 103,  399 => 102,  397 => 101,  393 => 99,  390 => 98,  380 => 95,  369 => 94,  366 => 93,  363 => 92,  359 => 90,  350 => 88,  348 => 87,  340 => 86,  338 => 85,  335 => 84,  332 => 83,  330 => 82,  327 => 81,  323 => 79,  322 => 78,  319 => 77,  312 => 75,  294 => 74,  277 => 73,  274 => 72,  270 => 71,  263 => 69,  262 => 68,  259 => 67,  256 => 66,  247 => 64,  245 => 63,  240 => 62,  234 => 61,  225 => 60,  222 => 59,  221 => 58,  216 => 57,  214 => 56,  211 => 55,  202 => 51,  192 => 50,  189 => 49,  187 => 48,  184 => 47,  178 => 46,  174 => 45,  166 => 44,  162 => 43,  152 => 40,  142 => 39,  139 => 38,  136 => 37,  133 => 36,  132 => 35,  127 => 34,  125 => 33,  123 => 32,  120 => 31,  118 => 30,  112 => 26,  111 => 25,  105 => 23,  100 => 21,  95 => 20,  93 => 19,  79 => 18,  76 => 17,  75 => 16,  62 => 12,  59 => 11,  58 => 10,  55 => 9,  48 => 4,  45 => 3,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "forumlist_body.html", "");
    }
}

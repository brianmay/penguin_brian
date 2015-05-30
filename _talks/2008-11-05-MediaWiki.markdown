---
layout: talk
title: Hacking MediaWiki
meeting: /conferences/2010/02/02/LUV/
speaker: Brianna Laugher
begin: 2008-11-05 19:00
---
MediaWiki != wikimedia

Elements:

* subpages. pages contain subpages.
  * subpages show up in breadcrumbs.
  * may contain relative links.
* name spaces
  * very popular early on, but use is fading out.
  * generally not recommended.
* links
  * special pages in MediWiki. special: prefix.
* categories
  * widely used
  * similar to tags
  * hierachy/taxomomy based
  * special name space
* templates
  * have same text on different pages
  * can take parameters
  * <noinclude> - will not be included in other pages - may contain information on how to use template.
  * <includeonly> - will only appear when template is included in other pages.
  * subst - out-dated technique - expands template and replaces with content when saving page.
  * templates often nested - like oop out of control.
    * --> Template:Linux --> Template:Navbox -->
    * templates often have lots of dependencies.
* name spaces
  * every name space has a corresponding talk name space
  * template name space
  * category name space
  * Main, Project (Alias), Help.
  * default name space = main name space, no prefix.
  * special name space
  * imaage name space
  * MediaWiki name space - require Sysop rights to change

Special pages

* some special pages can be included in other pages. {{Special:Recentchanges/5}} - include
5 most recent changes.

Images

* special name space because they are treated specially.
* any binary file fits into this name space, despite the image name.
* \[[Image:foo.jpg]] - embed image
* \[[:Image:foo.jpg]] - link image
* \[[Meida:Image:foo.jpg]] - link to file directly, eg. for PDF files which can't otherwise be displayed.

MediaWiki name space

* not easy to find the page that needs to be changed
* Special:AllMessages
* default pages may be overkill and include links to pages you don't want to create.

MediaWiki:Sidebar

* customize sidebar
* move search box to top
* links point to pages in MediaWiki name space. Help internationalization.

Look & feel

* Different skins
  * MediaWiki:Common.css
  * MediaWiki:Common.js
  * MediaWiki:Monobook.css
  * MediaWiki:Monobook.js

* Can add per user User:Foo/Monobook.css and User:Foo/Monobook.js

Special words

* \_\_NOTOC\_\_ - turn of TOC generation
* \_\_TOC\_\_ - turn on TOC generation
* #REDIRECT - redirect to another page
* \_\_HIDDENCAT\_\_ - hidden categories - put this on category page
* variables - look like templates
  * templates override variable with same name
  * time and revision related
  * statistics

User access levels

* Anonymous
* Registered
* Sysop
* Bureaucrat
* Bot
* Special:ListGroupRights makes it clear who has what rights.

Autoconfirmed?

* can protect a page so that only sysops and above can edit
* can edit a page so that only registered and autoconfirmed users can edit
* prevents users from registering just to edit a protected page

Gadgets

* Needs installation
* MadiaWiki:Gadgets-definition special page.
* Share JS and CSS between users without duplication.
* Creates preference tab.
* HotCat - for management of categories.
* wikEd - not WYSIWYG - syntax highlighter.

"uselang" hack

* Multiple upload pages based on the uselang http parameter.
* Needs assistance from sysop for initial installation of object.

central repository for code

* mediawiki.org
* vary widely in quality
* extension manager being worked on

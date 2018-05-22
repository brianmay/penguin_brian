---
layout: talk
title: Gnome Development tutorial
conference: /conferences/2004/01/17/LCA2004/
speaker: Malcolm Tredinnick
begin: 2004-01-14 15:00
---
Large number of gnome libraries.

GTK+

* windows
* widgets
* tree & list widgets
* model/view architecture
* containers contain children
* GtkVBox - vertical stacking
* scroll bars
* some widgets know how to display scroll bars themselves
* other widgets require parent to display scroll bars
* look at GTK demo code.

GLADE

* glade - user tool that writes XML file
* Libglade - constructs user interface from XML file
* designing user interfaces
* (non?) use of glade makes it harder for others to contribute

Pango

* internationalisation
* GtkTextView widget


GtkTextView

* can't do top to bottom text rendering, e.g. for Japanese
* all GTK text is parsed as UTF8
* mark up text in different fonts and colours

glib

* constants and macros, byte ordering, printf format specifiers
* lists, hash tables, trees, memory management, caching
* string functions, with Unicode support
* filesystem and process support
* for writing portable code, especially Win32.
* thread support
* asynchronous queues
* main loop
  * idle moments
  * scheduled basis (with timeouts)
  * when input arrives or output ready to be sent (polling/file descriptors).
  * not all external libraries fit into this, e.g. libcurl, python(?).
* very well documented

GObject

* object orientated C programming
* latest rewrite (2-4 years ago)
* call back functions
* signals
* reference counting
* boxed data types - opaque data objects
* enums, have description
* signals
  * GTK widgets
  * handlers can be changed
  * event based programming
  * call-backs
* language bindings
* descriptions
* internal objects, keep as structures, as GObjects have overhead

GConf

* shared daemon for storing configuration/preferences information
* "registry link structure"
* Havoc Pennington's paper from OLS 2002
* designed to store parameters for running programs, system administrator friendly
* system administrator can make certain settings read-only
* requirement to store persistence state data:
  * gnome-config not safe if user logged in multiple times and running multiple copies of application
  * XML based files
* split: programmer API, back-end
* back-end: XML file, Berkeley db, networks, central machine, LDAP
* dbus?? dbus way below gnome, heavily under development
  *  apt-cache show dbus-1: [...]
    D-BUS is a message bus, used for sending messages between
    applications.  Conceptually, it fits somewhere in between raw
    sockets and CORBA in terms of complexity. [...]

Bonobo

* reusable composable components
* GNOME - GNU Network Object Modelling Environment
* layer on top of CORBA
* please give me any component that can give me a text field
* what is a component?
* component for E-Mail
* Widget for E-Mail, not entire application.
* self contained piece of code that serves some function and has a clearly defined interface
* Bonobo, endangered species of monkey
* factory management and object creation
* Bonobo activation: Do you have anything on the system that meets the text 1.0 interface?
* Do you have something the the text interface and the icon interface and can display PDFs?

libbonoboui

* is easy to start spelling libbonoboui but hard to know when to stop
* GEdit, example
  * spell checker
  * calendar
  * syntax highlighter
* menu items

libgnome

* support infrastructure
* initialisation, parse parameters
* help support
* high score handling for games
* displaying URLs in configured applications
* process management support (should go in glib???)
* not compulsory
* use it unless you have a good reason not to
* gnome_program_init() gnome_program_run()

libgnomeui

* extra widgets not available in GTK+
* back-ends for accessing filesystem
* more as much as possible to GTK+
* same things have to stay here, due to dependency issues
* some stuff should be removed
* library reaching the end of its life
* guaranteed not to remove any of Gnome before Gnome 3.

libgnomevfs

* yet another VFS system
* abstract open file, read file, close file, etc
* HTTP WebDAV samba ftp
* authentication stuff, single login/authentication
* MIME detection, determine correct application
* where is the desktop? Where is the trashcan?
* dynamic shared library for extra protocols, e.g. cryptographic file system
* how heavy weight is this interface

multimedia support (GStreamer)

* multimedia framework
* plug them together
* sinks, sources, pipeline, branch, merge
* 1 pipeline audio
* 1 pipeline video
* many different formats available
* writing new modules is not too difficult
* learning curve
* 13:45 Thursday, Steve Baker talks about GStreamer

libxml

* XML support
* used by Gnumeric, yelp, libbonobo
* libxslt for XSLT processing
* no dependencies on anything else in Gnome stack
* extremely well tested
* some schema support (schema large and complicated)
* relax NG, simpler then schema

printing

* separate application and user interface
* libgnomeprint application level support
* libgnomeprintui interface portions
* future looks good with Cairo support in the pipeline
* currently maintained by maintainer of Gnumeric
* previous maintainer passed away
* used by Gnumeric, Planner, Evolution.

vte

* terminal widget, zvte gnome 1. gnome-terminal uses it.

gtksourceview

* source code highlight plug-in, used in GEdit
* comes with examples

libwmck

* common window manager utility functions
* author had too much free time
* how do you get a list of all the windows the window manager knows about?
* how do you minimise/maximise windows?

panel applets

* libpanelapplet

notification area icons

* Gaim
* rythmbox
* egg tray
* libegg
* new gnome functions hatch out of libegg
* libegg, never should be used, cut & paste instead
* contains old/rotten eggs that need to be thrown out

language over then C support

libbonobo not ported to Windows

* => libgnome not ported
* => libgnomeui not ported
* => Gnumeric and planner not ported

libgnomecanvas

* recommended

libfoocanvas

* highly optimised

GDK     lives under GTK, geometry, etc. gdkpixbuf high level widget

GDK-X11 lives under GDK

Audience Comment:

* "Java is so self contained in its own world, its hard to link against C libraries"

Stock icons

Human interface guidelines

Hebrew - OK button goes last place you are going to look;
errr... after the last place you will have looked at

translating 100,000 strings. 8 months to translate everything

LANG= environment variable used by C library  
GDM_LANG= environment variable used by GDM????

keyboard accelerators didn't work in Arabic; underlining characters can change
the meaning of certain letters.

Chinese, save menu item is only a couple of characters, keep a Roman character
so accelerators remain accelerators.

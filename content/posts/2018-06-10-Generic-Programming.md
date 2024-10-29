+++
layout = "post"
title = "Generic Programming"

[taxonomies]
tags = ["programming", "Python", "Karaage"]
+++

# Generic Programming

Writing website software that targets one particular installation is easy. You
know exactly what the requirements are are can build a system that meets those
requirements. Even if the requirements change or a unclear, there is still only
on set of requirements to meet at a given point in time.

Writing open source website software that will work on many installations is
more difficult. Every installation is likely to require its own set of unique
requirements, such as:

- Different theme for website.
- Different look and feel for individual pages.
- Additional custom views.
- Additional dependencies required by these custom views.
- Additional models required by these custom views.

On such system I am responsible for is Karaage. Karaage is an open source
system for management of users on cluster computer systems. It is written
using Python/Django.

## Templates

In the past, the solution used was to override templates used by Django. If we
needed to we would override the URLS and add or override URLS as required. This
caused a number of problems:

- It is not easy to tell at a glance why a particular template was overridden.
  Or why we replaced a view with new custom code. In some cases this would be
  just to change one line in the entire file.

- Making changes to Karaage views is often required. If however these changes
  require changes to the templates, and the templates are have been copied by
  local installations, then the changes won't be seen by the local installs.

- Worse case, the changes required could involve changing the parameters to the
  template, in which case all old templates will break.

It could be argued that the templates should be considered part of a well
defined API, that should not change without ensuring we have a proper
deprecation cycle for these templates. However there are a large number of
templates, and these templates have always been intended for internal use only.
It would be infeasible and error prone to try to remain compatible with all
legacy templates at all times. Furthermore Django has no way of distinguishing
templates that can be overridden from templates that should be treated as
internal only.

If we could find out why these customizations are occuring it is possible we
could add support directly into Karaage to make the required customizations
possible. Unfortunately, users see it much faster just to override the template
without consulting with the Karaage authors. These are users I still want to be
able to support.

## Database Models

As a result of these problems, I chose to add a system of plugins for Karaage.
Plugins come with their own resources such as:

- Database models.
- Views.
- Templates.
- Configuration system.

Plugins are implemented using Django Apps. The idea was that you could add a
plugin to an existing install, run the migrations, and everything would work.
Or you could remove a plugin, and the additional tables would stay around while
everything would still work.

Then I needed to remove the legacy MachineCategory table. Everything had
references to this table, including the plugins, so I added migrations to
remove references from the plugins first, and setup the dependencies so that
the plugins would be processed first before the migration for the main
application. As this was a reverse migration, it would not cause problems if
the migration was not installed. For example:

.. code-block:: python

    class Migration(migrations.Migration):

        dependencies = [
            ('karaage', '0004_auto_20160429_0927'),
        ]

        run_before = [
            ('karaage', '0005_auto_20171215_1831'),
        ]

Meaning this migration will get run after 0004, but before 0005 in the
main set on Karaage migrations.

Initially this seemed fine, everything worked as required.

The problem occurs when you have a full Karaage installation, already on the
0005 migration, and you want to enable this plugin for the first time.
Unfortunately it is not possible. We have clearly to Django that these
migrations cannot run before 0005, but we already have installed migration this
migration. Even if we were able to force these depends somehow, it still
wouldn't work, because in running the early migrations we would be creating
tables that reference the MachineCategory table that no longer exists.

Another solution could perhaps be to merge the earlier migrations for the
plugins, so we can skip over the earlier migrations that are causing the
problems. This would need to be done carefully though and need a lot of testing
to ensure that it works in all cases.

## Microservices

The root problem with the previous situation is that I imagined the plugins to
be independant of each other, able to be added/removed at will. The problem is
that this is not the case, as they all share the one Django database.

Possibly a better solution would be to implement each plugin as a seperate
plugin. This was the services are completely isolated. For example, the applications
plugin only needs to interfaces to Karaage:

- Ability to create projects/users when they are created.
- Need to link the application with a user, if they already exist on the
  system.

This second requirement requires more thought. We need to be sure that deleting
objects by the main Karaage process isn't going to lead to stale/broken links
in the plugins. For example, if a user is deleted, then all the applications
belonging to the user need to get deleted too. The kgusage plugin has links to
a lot more tables, these would need to be supported in some sensible manner.

Also we still have not solved the problem of being able to customize the look
and feel of the project on a per site basis.

## Conclusion

There are a lot of difficult questions here. A lot of these issues are no
longer relevant for Karaage, because I am only supporting Karaage on one site.
There is no funding to try to fix the problems in Karaage. All of these issues
have occurred in the past, and are likely to occur with future projects. So
just wondering how best to deal with these issues?

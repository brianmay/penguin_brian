# AGENTS.md

Guidelines for agentic coding assistants working in this repository.

## Project Overview

This is a personal static website built with [Zola](https://www.getzola.org/), a Rust-based
static site generator. Content is authored in Markdown with TOML front matter. Templates are
written in Tera (Zola's Jinja2-inspired templating language). There is no JavaScript framework,
no Node.js toolchain, and no TypeScript.

The site is hosted at `https://linuxpenguins.xyz/brian/`. The dev environment is managed via
Nix flakes and activated automatically by direnv (`use flake` in `.envrc`).

## Build / Serve / Check Commands

All commands assume you are inside the Nix dev shell (enter with `nix develop` or automatically
via direnv).

| Command | Purpose |
|---|---|
| `zola build` | Build the site; output goes to `public/` |
| `zola serve` | Start a local dev server with live reload (default: http://127.0.0.1:1111) |
| `zola check` | Validate internal links and template syntax — **use this as the "test" command** |
| `nix build` | Full reproducible production build; output in `result/`; also injects `build.toml` metadata |

**There is no test suite.** `zola check` is the closest equivalent — run it after any change
to templates, content, or configuration to catch broken links and template errors.

To check a specific template change without a full build, `zola serve` gives immediate feedback
via the browser and the terminal error output.

## Directory Structure

```
penguin_brian/
├── config.toml          # Main Zola config (base_url, theme, feeds, nav, slugify)
├── build.toml           # Build metadata injected by Nix (BUILD_DATE, VCS_REF)
├── flake.nix            # Nix flake: build derivation + devShell
├── content/             # All site content (Markdown + TOML front matter)
│   ├── posts/           # Main section: articles, trip reports, conference summaries
│   ├── people/          # People profiles
│   ├── projects/        # Project pages
│   ├── skills/          # Skills pages
│   └── talks/           # Talk pages (linked to conferences via extra.conference)
├── templates/           # Project-level Tera template overrides
│   └── shortcodes/      # Inline shortcode templates called from Markdown
├── static/              # Static assets (processed_images/ is gitignored)
└── themes/anemone/      # Upstream theme (git submodule — do not edit)
```

## Content Authoring

### Front Matter Format

Always use TOML front matter delimited by `+++`. Never use YAML (`---`).

```toml
+++
title = "Post Title"
date = 2024-11-25

[taxonomies]
tags = ["linux", "travel"]

[extra]
type = "conference"
+++
```

- Dates are bare TOML date values — no quotes around them.
- All custom per-page metadata goes under `[extra]`.
- Tags and other taxonomy values go under `[taxonomies]`.

### File Naming

- Dated posts: `YYYY-MM-DD-Title_With_Underscores.md` (e.g., `2024-11-25-NixCon_2024.md`)
- Undated reference pages (people, projects, skills): `Title_Case.md`
- Section index files: `_index.md`
- Pages with associated assets (e.g., photos): use a **page bundle** — a directory named like
  the page with an `index.md` inside (e.g., `content/people/Jean_McGregor/index.md`).

### Internal Links

Use Zola's `@/` syntax for cross-links between content files:

```markdown
[Link text](@/posts/2024-11-25-NixCon_2024.md)
```

Do not use relative filesystem paths for internal links.

### Post Types (Polymorphic Posts Section)

The `posts/` section handles multiple content types distinguished by `[extra] type`:

| `extra.type` | Rendered as |
|---|---|
| `"conference"` | Conference summary with talk listings |
| `"trip"` | Trip report with location metadata |
| _(absent)_ | Standard blog post |

The `post-page.html` template branches on this field. When creating a new post, set the
appropriate type or omit it for a plain article.

## Template Authoring

### Template Inheritance

Templates use Tera's `extends` / `block` system:

```html
{% extends "base.html" %}
{% block content %}
  <!-- page content here -->
{% endblock content %}
```

The `base.html` is provided by the `themes/anemone/` theme. Project templates in `templates/`
override theme templates of the same name.

### Conditional Extra Fields

Check whether optional front matter fields exist before using them:

```html
{% if page.extra.location is defined %}
  <p>{{ page.extra.location }}</p>
{% endif %}
```

### Build Metadata in Templates

`footer.html` loads build-time data directly:

```html
{% set build = load_data(path="build.toml", format="toml") %}
{{ build.BUILD_DATE }} / {{ build.VCS_REF }}
```

### Shortcodes

Shortcodes live in `templates/shortcodes/` and are called from Markdown:

```markdown
{{ photo(id="abc123", caption="A caption") }}
{{ photo_album(id="xyz", title="Album title") }}
{{ gallery() }}
```

When adding a new shortcode, create a `.html` file in `templates/shortcodes/`. Use named
parameters and guard against undefined optional parameters with `is defined` checks.

## Configuration

### config.toml Key Settings

- `base_url`: must match the production URL; affects all generated links and feeds.
- `theme = "anemone"`: do not change without testing the full template override chain.
- `[slugify] paths_keep_dates = true`: date prefixes in filenames are preserved in URL slugs.
- Atom and RSS feeds are enabled; do not remove the `generate_feeds` setting.
- Syntax highlighting is enabled for code blocks in Markdown.

### Adding Navigation Links

Edit the `[[extra.nav_items]]` array in `config.toml`:

```toml
[[extra.nav_items]]
name = "Label"
url = "/brian/section/"
```

## Nix / Dev Environment

- The Nix flake pins `nixpkgs` to `nixos-24.11`. Update `flake.lock` with `nix flake update`
  if you need a newer Zola version — but verify the build still works after any update.
- `build.toml` is checked into git with placeholder values (`"unknown"`). The Nix build
  overwrites it with the real `BUILD_DATE` (ISO 8601) and `VCS_REF` (git hash) at build time.
  Do not commit a `build.toml` with real values; the placeholder values are correct for git.
- The `public/` and `result/` directories are gitignored; never commit them.

## Theme

The `themes/anemone/` directory is an upstream theme. **Do not edit files inside it.**
Override theme templates by creating a file with the same relative path under the top-level
`templates/` directory (e.g., to override `themes/anemone/templates/footer.html`, edit
`templates/footer.html`).

## Style Conventions

- **Markdown**: prefer ATX-style headings (`##`), fenced code blocks with language identifiers.
- **TOML front matter**: one blank line between top-level keys and table sections (`[extra]`,
  `[taxonomies]`). Keep keys lowercase with underscores.
- **Tera templates**: indent HTML with 2 spaces. Place `{% block %}` / `{% endblock %}` tags
  on their own lines. Name `endblock` tags (`{% endblock content %}`).
- **No linter or formatter is configured.** Consistency with existing files is the standard.

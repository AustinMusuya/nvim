# 🕋️ Austin's Neovim Configuration

A clean, performant, and beautiful Neovim setup designed for developers who want **modern tooling**, **minimal friction**, and **maximum productivity**.

---

## ✨ Features

- 🖼️ **Catppuccin Theme** — Aesthetic and soothing color scheme for long coding sessions
- 🎴 **ASCII Art Splash** — Custom animated or static header using `alpha-nvim`
- ⚡ **Fast Startup** — Lazy-loading plugins with `lazy.nvim`
- ⌨️ **Intuitive Keymaps** — Thoughtful remappings for tabs, buffers, search, file navigation, and more
- 🔎 **Telescope** — Fuzzy finder for files, buffers, grep, and more
- 🌲 **Treesitter** — Better syntax highlighting and language-aware editing
- 🧠 **LSP Ready** — Language Servers for major programming languages
- 🪄 **Autocompletion + Snippets** — Powered by `nvim-cmp` and `LuaSnip`
- 🚀 **Developer Essentials** — Git signs, file explorer, formatting, diagnostics, terminal toggle, and more

---

## 🔧 Installation

Clone the repo into your Neovim config directory:

```bash
git clone https://github.com/AustinMusuya/nvim-config ~/.config/nvim
```

Then open Neovim:

```bash
nvim
```

Plugins will auto-install on first launch (via `lazy.nvim`).

---

## 🗂️ Plugin Highlights

| Plugin                       | Purpose                                    |
| ---------------------------- | ------------------------------------------ |
| `catppuccin`                 | Colorscheme                                |
| `alpha-nvim`                 | Dashboard with ASCII art                   |
| `telescope.nvim`             | Fuzzy file finding                         |
| `nvim-treesitter`            | Better syntax highlighting and folding     |
| `nvim-lspconfig`             | Language Server Protocol (LSP) integration |
| `nvim-cmp`                   | Autocompletion engine                      |
| `LuaSnip`                    | Snippet support                            |
| `gitsigns.nvim`              | Git diff markers in the gutter             |
| `nvim-tree.lua` / `oil.nvim` | File explorer                              |
| `bufferline.nvim`            | Tab/buffer navigation                      |
| `toggleterm.nvim`            | Floating terminal integration              |

---

## 🧠 Language Server Support

Includes preconfigured LSPs for:

- **Lua** (`lua_ls`)
- **Python** (`pyright`)
- **Rust** (`rust_analyzer`)
- **C/C++** (`clangd`)
- **Java** (`jdtls`)
- **Go** (`gopls`)
- **PHP** (`intelephense`)
- **HTML/CSS/JS** (`html`, `cssls`, `tsserver`)
- **YAML**, **JSON**, **SQL**, **Terraform**, **Docker**, **GraphQL**, **Tailwind**, and more

Simply open a file in one of the supported languages, and the appropriate server will attach automatically.

---

## 🤭 Keymaps

Some custom mappings:

| Keybinding   | Action                    |
| ------------ | ------------------------- |
| `<Tab>`      | Next buffer               |
| `<S-Tab>`    | Previous buffer           |
| `<leader>ff` | Find files (Telescope)    |
| `<leader>fg` | Live grep (Telescope)     |
| `<leader>e`  | Toggle file explorer      |
| `<leader>tt` | Toggle terminal           |
| `gd`, `gr`   | LSP: Go to def, refs, etc |

**Note:** `leader` is set to `<space>`.

---

## 📷 Preview

Here's a glimpse of the dashboard:

```
				" ██████╗ ██████╗ ██████╗ ██████╗ ██████╗     ███████╗███████╗██████╗  ██████╗ ",
				"██╔════╝██╔═══██╗██╔══██╗╚════██╗██╔══██╗    ╚══███╔╝██╔════╝██╔══██╗██╔═████╗",
				"██║     ██║   ██║██║  ██║ █████╔╝██████╔╝      ███╔╝ █████╗  ██████╔╝██║██╔██║",
				"██║     ██║   ██║██║  ██║ ╚═══██╗██╔══██╗     ███╔╝  ██╔══╝  ██╔══██╗████╔╝██║",
				"╚██████╗╚██████╔╝██████╔╝██████╔╝██║  ██║    ███████╗███████╗██║  ██║╚██████╔╝",
				" ╚═════╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝    ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ",
```

> Powered by `alpha-nvim` and a custom ASCII header.

---

## 🛠️ Requirements

- Neovim ≥ 0.9
- `git`, `ripgrep`, `fd` (for Telescope)
- Optional: `nerd-fonts` for icon support

---

## 🤝 Contributing / Forking

Feel free to fork and adjust to suit your workflow. This setup is modular and designed to be easy to customize.

---

## 🎜️ License

MIT — Do what you want, just don’t claim you built it from scratch 😉

---

## 🙏 Acknowledgements

Inspired by `kickstart.nvim`, `LazyVim`, and the greater Neovim community.
Big thanks to plugin authors and contributors who make this ecosystem thrive.

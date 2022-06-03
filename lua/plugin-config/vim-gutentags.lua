os.execute("mkdir -p ~/.cache/tags")

vim.cmd('set tags+=~/.cache/tags')
vim.g.gutentags_enabled = 1
vim.g.gutentags_generate_on_missing = 1
vim.g.gutentags_generate_on_write = 1
vim.g.gutentags_resolve_symlinks = 1
vim.g.gutentags_ctags_tagfile = '.tags'
vim.g.gutentags_cache_dir = '~/.cache/tags'
vim.g.gutentags_project_root = { '.git' }
vim.g.gutentags_ctags_extra_args = { '--fields=+l' }
vim.g.gutentags_add_default_project_roots = 0
vim.g.gutentags_ctags_executable_ruby = 'ripper-tags'
vim.g.gutentags_ctags_extra_args_ruby = { '--ignore-unsupported-options', '--recursive' }
-- vim.g.gutentags_trace = 1


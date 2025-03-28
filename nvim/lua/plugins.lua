
return {
    {
        'ms-jpq/coq_nvim', branch='coq',
        init = function()
            vim.g.coq_settings = {
                auto_start = 'shut-up'
            }
        end
    },
    {
        -- Telescope.nvim: fuzzy finding for everything
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'nvim-tree/nvim-web-devicons' },
    {
        -- lualine.nvim: status line
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        -- tabby.nvim: tab bar
        'nanozuki/tabby.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
}



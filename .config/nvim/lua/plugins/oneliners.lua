return {
    { -- Show CSS Colors
        'brenoprata10/nvim-highlight-colors',
        config = function()
            require('nvim-highlight-colors').setup({})
        end
    },
    -- { -- it does not install for some reason. find a somebody's config
    --     'yuttie/comfortable-motion'
    -- },
    -- TODO: plugins for the future
    -- { -- Git plugin
    --     'tpope/vim-fugitive',
    -- },
    -- { -- Show historical versions of the file locally
    --     'mbbill/undotree',
    -- },
    -- { -- This helps with ssh tunneling and copying to clipboard
    --     'ojroques/vim-oscyank',
    -- },
}

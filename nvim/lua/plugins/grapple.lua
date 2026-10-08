local grapple_keys = {
    {
        '<leader>gm', --leader (space) gm opens grapple menu
        function()
            require('grapple').toggle_tags()
        end,
        desc = 'grapple [o]pen menu',
    },
    {
        '<leader>gt', --leader (gt) tags a file and you have it in your grapple menu
        function()
            require('grapple').tag()
        end,
        desc = 'grapple [a]dd file',
    },
}

for i = 1, 5 do
    table.insert(grapple_keys, {
        '<leader>' .. i, --leader followed by a number switches to that file (you can view the numbers in the grapple menu (gm)
        function()
            require('grapple').select({ index = i })
        end,
        desc = 'grapple goto #' .. i,
    })
end

return {
    {
        'cbochs/grapple.nvim',
        keys = grapple_keys,
        opts = { scope = 'cwd', win_opts = { border = 'rounded', footer = '' }, icons = false },
    },
}


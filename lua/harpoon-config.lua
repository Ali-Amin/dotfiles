local harpoon = require("harpoon")
local extensions = require('harpoon.extensions')

harpoon:setup()

vim.keymap.set("n", "<Space>a", ':lua require"harpoon":list():append()<CR>')

vim.keymap.set("n", "<Space>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<Space>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<Space>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<Space>4", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<Space>q", function() harpoon:list():remove() end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<Space>l", function() harpoon:list():prev() end)
vim.keymap.set("n", "<Space>h", function() harpoon:list():next() end)


-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<Space>e", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })

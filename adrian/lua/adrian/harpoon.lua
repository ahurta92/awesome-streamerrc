require("harpoon").setup({
    projects = {
        ["/gpfs/projects/rjh/adrian/madness"] = {
            term = {
                cmds = {
                    "echo hello {}"
                }
            },
        },

    }
})


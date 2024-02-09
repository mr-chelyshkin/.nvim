return {
    settings = {
        gopls = {
            analyses = {
                -- warns about unused parameters
                unusedparams = true,

                -- warns about variables in shadow context
                shadow = true,
            },

            -- enables staticchecks
            staticcheck = true,

            -- includes experimental autocompletion for structures and interfaces
            experimentalPostfixCompletions = true,

            -- uses gofumpt for formatting instead of gofmt
            gofumpt = true,

            -- sets the search type for autocompletion
            matcher = "Fuzzy",

            -- allows you to specify additional flags for the go build command
            buildFlags = {"-tags", "integration"},

            -- enables the use of placeholders in functions
            usePlaceholders = true,
        },
    },
}
return {
    settings = {
        ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            checkOnSave = {
                command = "clippy"
            },
            procMacro = {
                enable = true
            },
            diagnostics = {
                disabled = {"unresolved-proc-macro"},
            },
            inlayHints = {
                enable = true,
                chainingHints = true,
                parameterHints = true,
                typeHints = true,
            },
            lens = {
                enable = true,
            },
        }
    }
}

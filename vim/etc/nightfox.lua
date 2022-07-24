local options = {
    styles = {
        comments = "italic",
        functions = "italic,bold",
    }
}

-- Groups use specs as the template source
local groups = {
    all = {
        -- The template path is parsed to [`syntax`, `string`]. This is like calling into a lua table like:
        -- `spec.syntax.string`.
        String = { fg = "syntax.string" },

        -- If `link` is defined it will be applied over any other values defined
        Whitespace = { link = "Comment" },

        -- Specs are used for the template. Specs have their palette's as a field that can be accessed
        -- IncSearch = { bg = "palette.cyan" },
        -- TSField = { fg = "palette.orange" },
        -- Search = { fg = "bg2", bg = "palette.red" },
    },
}

options.styles.comments = "italic"

require('nightfox').setup({groups = groups, options = options })


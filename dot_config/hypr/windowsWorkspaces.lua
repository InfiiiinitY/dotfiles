-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({
    name = "suppress-maximize-events",
    match = {
        class = ".*",
    },
    suppress_event = "maximize"
})

-- Add red border to pinned windows
hl.window_rule({
    match = {
        pin = true,
    },
    border_color = {
        colors = { "rgb(FF0000)", "rgb(880808)" }, angle = 45
    }
})

-- No border on special workspace windows
hl.workspace_rule({
    workspace = "special:magic",
    no_border = true,
})

-- Add blur to waybar
hl.layer_rule({
    match = {
        namespace = "waybar",
    },
    blur = true,
})
-- Don't blur pixels that have an alpha of 0 (fully transparent)
hl.layer_rule({
    match = {
        namespace = "waybar",
    },
    ignore_alpha = 0,
})

-- Disable animations on selection
hl.layer_rule({
    match = {
        namespace = "selection",
    },
    no_anim = true,
})

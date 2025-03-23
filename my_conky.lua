conky.config = {
    alignment = 'top_right',
    background = true,
    double_buffer = true,
    update_interval = 1,

    own_window = true,
    own_window_type = 'desktop',
    own_window_transparent = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,

    use_xft = true,
    font = 'Fira Code:size=10',
    draw_shades = false,
    draw_outline = false,
    draw_borders = false,
    default_color = '#00FF00',

    gap_x = 25,
    gap_y = 10,
    minimum_width = 250,
    maximum_width = 300,
    uppercase = false,
};

conky.text = [[
${color}${time %a %d %b %Y %H:%M}
Uptime: ${uptime}

[ SYSTEM ] ${hr 1}
CPU Avg: ${cpu}% ${alignr}${cpubar 8,120}

Core 1: ${cpu cpu1}% ${alignr}${cpubar cpu1 8,120}
Core 2: ${cpu cpu2}% ${alignr}${cpubar cpu2 8,120}
Core 3: ${cpu cpu3}% ${alignr}${cpubar cpu3 8,120}
Core 4: ${cpu cpu4}% ${alignr}${cpubar cpu4 8,120}

RAM: $mem / $memmax ${alignr}${membar 8,120}
Disk: ${fs_used /} / ${fs_size /} ${alignr}${fs_bar 8,120}

[ NETWORK ] ${hr 1}
Down: ${downspeed wlp4s0} KiB/s ${alignr}${downspeedgraph wlp4s0 8,120 00ff00 00ff00 -l}
Up:   ${upspeed wlp4s0} KiB/s ${alignr}${upspeedgraph wlp4s0 8,120 00ff00 00ff00 -l}

IP: ${addr wlp4s0}

[ WEATHER ] ${hr 1}
${execi 1800 curl -s 'wttr.in/?format=1'}

[ TASKS-FOR-THE-DAY ] ${hr 1}
${execpi 2 cat ~/.config/conky/todo.txt}
]];

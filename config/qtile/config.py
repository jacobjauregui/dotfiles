from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
import os

leader = "mod4" # mod4 is the Super key
terminal = guess_terminal() # "wezterm"

# A list of available commands that can be bound to keys can be found
# at https://docs.qtile.org/en/latest/manual/config/lazy.html
keys = [
    Key([leader], "i", lazy.layout.up(), desc="Move focus up"),
    Key([leader], "j", lazy.layout.left(), desc="Move focus to left"),
    Key([leader], "k", lazy.layout.down(), desc="Move focus down"),
    Key([leader], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([leader], "space", lazy.layout.next(), desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([leader, "shift"], "i", lazy.layout.shuffle_up(), desc="Move window up"),
    Key([leader, "shift"], "j", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([leader, "shift"], "k", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([leader, "shift"], "l", lazy.layout.shuffle_right(),desc="Move window to the right"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([leader, "control"], "i", lazy.layout.grow_up(), desc="Grow window up"),
    Key([leader, "control"], "j", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([leader, "control"], "k", lazy.layout.grow_down(), desc="Grow window down"),
    Key([leader, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([leader], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [leader, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"
    ),
    Key([leader], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([leader], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([leader], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([leader, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([leader, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    # Shorcuts
    Key([leader], "f", lazy.window.toggle_fullscreen()),
    Key([leader], "h", lazy.hide_show_bar(position="all"), desc="toggle hide bar"),
    Key([leader], "b", lazy.spawn("brave"), desc="launch browser brave"),
    Key([leader], "d", lazy.spawn("rofi -show run")),
    Key([leader], "e", lazy.spawn("thunar")),
    #Key([leader, "shift"], "e", lazy.spawn("sudo thunar")),
    # Screenshots
    Key([leader], "s", lazy.spawn("scrot"), desc="take screenshot"),
    Key([leader, "shift"], "s", lazy.spawn("scrot -s"), desc="take screenshot of selected area"),
    # Hootkeys
    #Key([], "XF86AudioLowerVolume", lazy.spawn("amixer -c 0 sset Master 1- unmute"), desc="volume down"),
    #Key([], "XF86AudioRaiseVolume", lazy.spawn("amixer -c 0 sset Master +1 unmute"), desc="volume up"),
    #Key([], "XF86AudioMute", lazy.spawn("amixer -q set Master toggle"), desc="mute sound"),
]

groups = [Group(i) for i in ['', '', '', '辶']]

for i, group in enumerate(groups):
    key_group = str(i+1)
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [leader],
                key_group,
                lazy.group[group.name].toscreen(),
                desc="Switch to group {}".format(group.name)
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [leader, "shift"],
                key_group,
                lazy.window.togroup(group.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(group.name)
            ),
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            # desc="move focused window to group {}".format(i.name)),
        ]
    )

layouts = [
    layout.Columns(border_focus_stack=["#1ae51a", "#8f3d3d"], border_width=1),
    layout.Max(
        border_width=1,
        border_focus="#1ae51a",
        margin=2
    ),
    layout.Stack(num_stacks=4),
    layout.Bsp(),
    layout.Matrix(),
    layout.MonadTall(),
    layout.MonadWide(),
    layout.RatioTile(),
    layout.Tile(),
    layout.TreeTab(),
    layout.VerticalTile(),
    layout.Zoomy(),
]

widget_defaults = dict(
    font="sans",
    fontsize=13,
    padding=5,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.Spacer(length = 20),
                widget.TextBox(
                    " \nArchlinux",
                    foreground = "#266bdf",
                    fontsize = 13,
                    mouse_callbacks = {
                        "Button1": lazy.spawn("rofi -show run"),
                   },
                ),
                widget.Spacer(length = 15),
                widget.GroupBox(
                    background = "#1e1d2d",
                    center_aligned = True,
                    active = "#dbdadf",
                    inactive = "#626263",
                    highlight_method = "line", # "text" "line" "block"
                    borderwidth = 3,
                    fontsize = 18,
                    margin = 3,
                    padding = 2,
                    this_current_screen_border = "#228d4f",
                    this_screen_border = "#ac2a31",
                ),
                #widget.Spacer(length = 5),
                widget.Prompt(),
                widget.Spacer(length = 10),
                widget.WindowName(max_chars = 30),
                widget.Spacer(length = 10),
                widget.Chord(
                    chords_colors={
                        "vim mode": ("#2980b9", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.Spacer(length = 1, background="#c0c2c3"),
                widget.Clock(
                    format="%A, %d/%b/%Y | %H:%M", 
                    foreground="#d4dadf",
                    font = "Anonymice Nerd Font Bold",
                    fontsize = 14,
                    padding = 20,
                ),
                widget.Spacer(length = 1, background="#c0c2c3"),
                widget.Spacer(length = 450, background="#1e1d2d"),
                #widget.Systray(max_chars=1),
                widget.CurrentLayout(
                    background = "#1e1d2d",
                    foreground = "#48dcf9",
                    fontsize = 14,
                    padding = 10,
                    mouse_callbacks = {
                        "Button1": lazy.next_layout(),
                    },
                ),
                # widget.StatusNotifier(), #For Wayland
                widget.QuickExit(
                    fmt="",
                    fontsize = 18,
                    foreground = "#d75f5f",
                    padding = 10,
                    background = "#171626"
                ),
            ],
            34,
            background = "#1e1d2d",
            border_width = [1, 1, 1, 1],
            border_color = ["#c0c2c3", "#c0c2c3", "#c0c2c3", "#c0c2c3"],
            margin = [5, 8, 5, 8], #[top, right, bottom, left]
        ),
    ),
]
# Drag floating layouts.
mouse = [
    Drag([leader], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([leader], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([leader], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True
# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None
# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"

cmd = [
    "feh --bg-fill ~/Pictures/circuitTech.jpg &",
    "picom --config ~/.config/picom/picom.conf &",
    "volumeicon &",
    # "cbatticon -u &",
    # "udiskie -t &",
    # "nm-applet &",
    # "blueman-applet &",
    # "xfce4-notifyd &",
    # "pasystray &",
    # "xfce4-power-manager &",
    # "xfce4-volumed-pulse &",
    # "xfce4-clipman &",
    # "xfce4-clipman-plugin &",
    # "xfce4-panel &",
]
for i in cmd:
    os.system(i)

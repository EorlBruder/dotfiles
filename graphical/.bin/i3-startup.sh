#!/bin/sh

# Workspace 1 (Browser)
i3-msg "workspace 1; exec firefox"
i3-msg "workspace 1, move workspace to output $FIRST_DISPLAY"

# Workspace 2 (Terminal)
i3-msg "workspace 2; exec termite -e ~/.bin/tmux-working-env.sh"
i3-msg "workspace 2, move workspace to output $FIRST_DISPLAY"

# Workspace 3 (Mail)
i3-msg "workspace 3; exec thunderbird"
i3-msg "workspace 3, move workspace to output $SECOND_DISPLAY" 

# Workspace 4 (Chat - 1)
i3-msg "workspace 4; append_layout ~/.config/i3/workspace_4.json"
(exec discord &)
(exec telegram-desktop &)
(exec signal-desktop &)
i3-msg "workspace 4, move workspace to output $SECOND_DISPLAY"

# Workspace 5 (Chat - 2)
i3-msg "workspace 5; exec rambox"
i3-msg "workspace 5, move workspace to output $SECOND_DISPLAY"

# Open main Workspace
i3-msg "workspace 1"

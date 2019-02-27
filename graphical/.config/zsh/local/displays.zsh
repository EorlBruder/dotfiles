case $(hostname) in 
  "erkenbrand" )
    export FIRST_DISPLAY="DP-3"
    export SECOND_DISPLAY="HDMI-0"
    export THIRD_DISPLAY="DP-3"
    ;;
  "eomer" ) 
    export FIRST_DISPLAY="eDP1"
    export SECOND_DISPLAY="eDP1"
    export THIRD_DISPLAY="eDP1"
    ;;
  "elfhelm" )
    export FIRST_DISPLAY="DP-4"
    export SECOND_DISPLAY="DP-2"
    export THIRD_DISPLAY="LVDS-0"
    ;;
  "madeira" )
    export FIRST_DISPLAY="DP-3-1"
    export SECOND_DISPLAY="eDP-1"
    export THIRD_DISPLAY="DP-3-2"
    ;;
  * )
    echo "none"
    ;;
esac

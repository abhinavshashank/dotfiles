function fan --description "Framework laptop fan control helper"
    switch "$argv[1]"
        case fast
            echo "Setting fan profile to FAST (deaf)..."
            sudo fw-fanctrl use deaf
        case medium
            echo "Setting fan profile to MEDIUM..."
            sudo fw-fanctrl use medium
        case default
            echo "Setting fan profile to DEFAULT (lazy)..."
            sudo fw-fanctrl use lazy
        case "*"
            echo "Usage: fan [fast | medium | default]"
            echo ""
            echo "Current Fan Speed:"
            sensors 2>/dev/null | grep -i fan
    end
end

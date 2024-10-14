# Make it very obvious when we are running in a k8s shell
# by automatically changing the background colors of your terminal
# assumes the terminal emulator you are running has support
function kubectl {
 if [[ "$1" == "exec" ]]; then
    local context="$(command kubectl config current-context)"
    local background

    if [[ "$context" = *"-pre-prod"* ]]; then
      background="#706611"
    elif [[ "$context" = *"-prod"* ]]; then
      background="#783333"
    else
      printf "WARNING! Unknown context: %s\n" "$context"
      background="#965599"
    fi

    # Escape command to set background colours
    echo -ne "\033]11;$background\007"
 fi

 command kubectl $@

 if [[ "$1" == "exec" ]]; then
   # Escape command to reset background colours
   echo -ne "\033]110;\007\033]111;\007"
 fi
}

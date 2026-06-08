#!/bin/bash

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m'  # No Color

cat <<'EOF'

  @@@+@@@@*                          +@@@@=#@@
  @@       .@@@                    @@@-       @@
  @            @@@  =@@@@@@@@%- #@@.           @+
@@              #@-          .#@              @@
@@                                            @@
@@                                            @@
@@                                            @@
  @-                                           @
  @@                                          @@
  @@                                          .@#
@@                                            :@
@@          .@@@@@                              @@
@@          @@ -@@@             @@@@@            @
@*          @@@@@@@            @.    -@          @#
@@*+-        @@@@@     ....                 :*@@@@@+
@@    .-                %@                      @@
@@                  @@@: @@@             :    %@
  @@@@@                                     #@@@-
=@@. @@                                      @@@  @@
    @@@@                                @@@%@@@
    @@+**@@@@=                      *@@@@#*****@*
    @@***++***@@@@=            -@@@@***********@%
    -@@***********#@@@      @@@%**************@@
      .@@@@@@@#****+**@@ :@@%******@@@@@@@@@@@      %@@@@@@
      @@*******%@@@@@@**@@+#@@@@@@%****+*****@@    @@     @@
    =@****+******@@*********@@+******+*++***%@    @%      @+
    @@*****++*++*@@*********@@+*+**+*++++++**@@   @       @.
    =@*****+++*+**@@****+++**@@*+*+++*+++++++**@@ @@      @@
    @@*****+++*++******++++++**+*+++++++**+*****@@@      %@
  @@%*@***+++***++******++******++++++++*@@****@@...   @@
  @@***@#**++*++++*+@@****+*@@++*+++++++**@@****%@ ...-@@
  @@***@@+*******+**#@**++*#@+*****++++*+*@#****@@  @@@
  @@@%@@************@#****@@************@@**%@@@@@@
  :@   #@@#%@@@@@@@@@@@@@@@@@%@@@@@@%###@@@@%  @@
  *@     @@         @@     .@         *@@      @@
  @@ :  @@         =@     *@          @@  .  @@
    @@@@@@@ =   = +@@@@@@@@@@  =  .= @@@@@@@@
            %@@@@@@=          @@@@@@@@

EOF

#Loading bar taken from golinuxcloud.com
#Thank you! - S1aX0r

progress_bar(){
# Total number of steps
total_steps=20

# Initial progress
progress=0

# Display initial state
echo -n "[--------------------] 0% "

# Simulation of a task
while [ $progress -le $total_steps ]; do
    # Calculate the number of '#' to display
    let filled_slots=progress*20/total_steps

    # Create the progress bar string
    bar=""
    for ((i=0; i<$filled_slots; i++)); do
        bar="${bar}#"
    done

    # Create the remaining bar string
    for ((i=filled_slots; i<20; i++)); do
        bar="${bar}-"
    done

    # Calculate percentage
    let percentage=progress*100/total_steps

    # Print the progress bar
    echo -ne "\r[${GREEN}${bar}${NC}] ${percentage}% "

    # Simulate a task by sleeping for 0.1 seconds
    sleep 0.1

    # Update progress
    let progress++
done

echo # Print a newline
}

echo -e "${RED}Loading EepyShell Framework${NC}"
progress_bar

shell="esef>"

while true; do
	read -r -p $shell commands

	case $commands in
		help)
			echo
			echo "Main Commands:
	
	help: Display the help menu
	search: Search for a ESEF module
	use: Load and configure a module
	info: Show info for module
	interact: Interact with a Eepy Session

Module Commands:
	
	options: Show options for module
	set: Configure options for module
	"
		;;

		exit|quit)
			echo
			echo -e "${RED}Exiting ESEF${NC}"
			break
		;;
		use)
			echo
			echo "Usage: use <MODULE>"
			echo
		;;
		search)
			echo
			echo "Usage: search <MODULE>"
			echo
		;;
		info)
			echo
			echo "Usage: info <MODULE>"
			echo
		;;
		interact)

			echo
			echo "Usage: interact <SESSION>"
			echo
	esac
done

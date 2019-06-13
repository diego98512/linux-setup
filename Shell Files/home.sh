#!/bin/sh

REDTEXT='\033[0;31m'
NOCOLOR='\033[0m'

playlist_selection() {

	# FF List 

	FFI="https://www.youtube.com/watch?v=zUAsbFYnFIo";
	FFII="https://www.youtube.com/watch?v=vqar8So4Xdo";
	FFIII="https://www.youtube.com/watch?v=QArzEmej73A";
	FFIV="https://www.youtube.com/watch?v=sMpzODudeks";
	FFV="https://www.youtube.com/watch?v=IWYKcogaNhE";
	FFVI="https://www.youtube.com/watch?v=sLpjPht5mvg";
	FFVII="https://www.youtube.com/watch?v=ITWOHpJQUWY";
	FFVIII="https://www.youtube.com/watch?v=X6kAwpgW29M";
	FFIX="https://www.youtube.com/watch?v=Za3r0FEVtJY";
	FFX="https://www.youtube.com/watch?v=Fpf-dD4atHw";
	FFXI="https://www.youtube.com/watch?v=we8IzS0qy3s";
	FFXII="https://www.youtube.com/watch?v=xXzdYw0h-U0";
	FFXIII="https://www.youtube.com/watch?v=w9Wz67wM46I";
	FFXIV="https://www.youtube.com/watch?v=mr2S_Z5_gNA";
	FFXV="https://www.youtube.com/watch?v=fNjoVHmJqzE";

	# TLoZ List

	ZOOT="https://www.youtube.com/watch?v=bAMzIihPjAg";
	ZMM="https://www.youtube.com/watch?v=NhRImdUT06Y";
	ZOOA="https://www.youtube.com/watch?v=_Z9EkEjFKDk";
	ZOOS="https://www.youtube.com/watch?v=r4VurbyQdx8";
	ZLTTP="https://www.youtube.com/watch?v=w5REmtunJtY";
	ZBOTW="https://www.youtube.com/watch?v=asHAvqwZ1Ig";
	ZLBW="https://www.youtube.com/watch?v=Wukf7ZuXMKw";
	ZMC="https://www.youtube.com/watch?v=2VVREQ5JZoA";
	ZTP="https://www.youtube.com/watch?v=ox2D-EJoB0w";
	ZWW="https://www.youtube.com/watch?v=zckKHLpXi50";
	ZLA="https://www.youtube.com/watch?v=MiQheR3cD4o";

	# IO

	echo "Choose a soundtrack:"
	echo
	echo "1.  Final Fantasy I"
	echo "2.  Final Fantasy II"
	echo "3.  Final Fantasy III"
	echo "4.  Final Fantasy IV"
	echo "5.  Final Fantasy V"
	echo "6.  Final Fantasy VI"
	echo "7.  Final Fantasy VII"
	echo "8.  Final Fantasy VIII"
	echo "9.  Final Fantasy IX"
	echo "10. Final Fantasy X"
	echo "11. Final Fantasy XI"
	echo "12. Final Fantasy XII"
	echo "13. Final Fantasy XIII"
	echo "14. Final Fantasy XIV"
	echo "15. Final Fantasy XV"
	echo "16. The Legend of Zelda: Ocarina of Time"
	echo "17. The Legend of Zelda: Majora's Mask"
	echo "18. The Legend of Zelda: Oracle of Ages"
	echo "19. The Legend of Zelda: Oracle of Seasons"
	echo "20. The Legend of Zelda: A Link to the Past"
	echo "21. The Legend of Zelda: Breath of the Wild"
	echo "22. The Legend of Zelda: A Link Between Worlds"
	echo "23. The Legend of Zelda: Twilight Princess"
	echo "24. The Legend of Zelda: Wind Waker"
	echo "25. The Legend of Zelda: Link's Awakening"
	echo "26. The Legend of Zelda: Minish Cap"
	echo
	
	selecting=1
	
	while [ $selecting -eq 1 ]; do

		read -p "Make a selection: " playlistselection

		# Logic

		TZ="tizonia --youtube-audio-stream "

		case "$playlistselection" in
		
		0) break
		;;

		1) $TZ $FFI
		break
		;;
		2) $TZ $FFII
		break
		;;
		3) $TZ $FFIII
		break
		;;
		4) $TZ $FFIV
		break
		;;
		5) $TZ $FFV
		break
		;;
		6) $TZ $FFVI
		break
		;;
		7) $TZ $FFVII
		break
		;;
		8) $TZ $FFVIII
		break
		;;
		9) $TZ $FFIX
		break
		;;
		10) $TZ $FFX
		break
		;;
		11) $TZ $FFXI
		break
		;;
		12) $TZ $FFXII
		break
		;;
		13) $TZ $FFXIII
		break
		;;
		14) $TZ $FFXIV
		break
		;;
		15) $TZ $FFXV
		break
		;;
		16) $TZ $ZOOT
		break
		;;
		17) $TZ $ZMM
		break
		;;
		18) $TZ $ZOOA
		break
		;;
		19) $TZ $ZOOS
		break
		;;
		20) $TZ $ZLTTP
		break
		;;
		21) $TZ $ZBOTW
		break
		;;
		22) $TZ $ZLBW
		break
		;;
		23) $TZ $ZTP
		break
		;;
		24) $TZ $ZWW
		break
		;;
		25) $TZ $ZLA
		break
		;;
		26) $TZ $ZMC
		break
		;;
		*) 
		echo
		echo "${REDTEXT}I'm sorry, that's not a valid selection.${NOCOLOR}"
		echo
		;;
		esac
	done
}

clear

active=1



while [ $active -eq 1 ]; do

	echo "Here are your available functions:"
	echo
	echo "0.) exit"
	echo "1.) playlist-selection"
	echo

	read -p "" choice

	clear

	case "$choice" in

	0) active=0
	;;
	1) playlist_selection
	;;
	*) echo "${REDTEXT}I'm sorry, that's not a valid selection.${NOCOLOR}"
	echo
	;;

	esac
done

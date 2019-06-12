#!/bin/sh

FFI="https://www.youtube.com/watch?v=zUAsbFYnFIo"
FFII="https://www.youtube.com/watch?v=vqar8So4Xdo"
FFIII="https://www.youtube.com/watch?v=QArzEmej73A"
FFIV="https://www.youtube.com/watch?v=sMpzODudeks"
FFV="https://www.youtube.com/watch?v=IWYKcogaNhE"
FFVI="https://www.youtube.com/watch?v=sLpjPht5mvg"
FFVII="https://www.youtube.com/watch?v=ITWOHpJQUWY"
FFVIII="https://www.youtube.com/watch?v=X6kAwpgW29M"
FFIX="https://www.youtube.com/watch?v=Za3r0FEVtJY"
FFX="https://www.youtube.com/watch?v=Fpf-dD4atHw"
FFXI="https://www.youtube.com/watch?v=we8IzS0qy3s"
FFXII="https://www.youtube.com/watch?v=xXzdYw0h-U0"
FFXIII="https://www.youtube.com/watch?v=w9Wz67wM46I"
FFXIV="https://www.youtube.com/watch?v=mr2S_Z5_gNA"
FFXV="https://www.youtube.com/watch?v=fNjoVHmJqzE"

TIZ="tizonia --youtube-audio-stream "

echo What would you like to listen to?
echo
echo 1.  Final Fantasy I
echo 2.  Final Fantasy II
echo 3.  Final Fantasy III
echo 4.  Final Fantasy IV
echo 5.  Final Fantasy V
echo 6.  Final Fantasy VI
echo 7.  Final Fantasy VII
echo 8.  Final Fantasy VIII
echo 9.  Final Fantasy IX
echo 10. Final Fantasy X
echo 11. Final Fantasy XI
echo 12. Final Fantasy XII
echo 13. Final Fantasy XIII
echo 14. Final Fantasy XIV
echo 15. Final Fantasy XV

read -p 'Number: ' game

case "$game" in

1) $TIZ $FFI
;;	

2) $TIZ $FFII
;;

3) $TIZ $FFIII
;;

4) $TIZ $FFIV
;;

5) $TIZ $FFV
;;

6) $TIZ $FFVI
;;

7) $TIZ $FFVII
;;

8) $TIZ $FFVIII
;;

9) $TIZ $FFIX
;;

10) $TIZ $FFX
;;

11) $TIZ $FFXI
;;

12) $TIZ $FFXII
;;

13) $TIZ $FFXIII
;;

14) $TIZ $FFXIV
;;

15) $TIZ $FFXV
;;

esac

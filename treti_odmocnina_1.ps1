cls

# treti odmocnina podle knizky "Hry s Kalkulatory" - jiri Mrazek , strana 38
Set-PSDebug -Strict

function treti_odmocnina ([double] $num) {
[double] $ans = $num
$poc = 1

do {
$old = ((((( $num / $ans ) / $ans ) + $ans ) + $ans ) / 3 ); $ans = $old
echo "iterace $poc = $ans <"
$poc++

$out = ((((( $num / $ans ) / $ans ) + $ans ) + $ans ) / 3 ); $ans = $out
echo "iterace $poc = $ans <<"
$poc++
}

until ( $out -eq $old )
echo "vysledek = $out"
echo "------------------------------------"
}

# testovani funkce
<# Casio 991
47,13804809
31,43597148
20,9811619
14,04097643
9,480188277
6,582344564
4,932152097
4,256881561
4,138435021
4,134980266
4,134977378 < ok
#>

$x = 70.7 # 70.7
$v1 = treti_odmocnina $x
echo $v1

$x = 5
$v2 = treti_odmocnina $x
echo $v2

sleep 10


cls

# druha odmocnina podle knizky "Hry s Kalkulatory" - jiri Mrazek , strana 34
Set-PSDebug -Strict

function druha_odmocnina ([double] $num) {
[double] $ans = $num
$poc = 1

do {
$old = ((( $num / $ans ) + $ans ) / 2); $ans = $old
echo "iterace $poc = $old <"; $poc++

$out = ((( $num / $ans ) + $ans ) / 2); $ans = $out
echo "iterace $poc = $out <<"; $poc++

} # konec until do{

until ( $old -eq $out ) 
# opakuj tak dlouho dokavad $out = $old ( cili vysledek iterace uz se nezmenil oproti predchozimu cyklu )
echo "vysledek = $out"
echo "------------------------------------"
}


<# casio 991
35.85
18,911
11,324
8,783
8,416
8,408
8,408329204 < konecnej vysledek 7 iterace
#>

# testovani funkce
$x = 70.7 # 70.7
$v1 = druha_odmocnina $x
echo $v1

$x = 5 # v knizece bylo 5
$v2 = druha_odmocnina $x
echo $v2

sleep 10




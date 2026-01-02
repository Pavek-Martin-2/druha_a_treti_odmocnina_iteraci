cls

# druha odmocnina podle knizky "Hry s Kalkulatory" - jiri Mrazek , strana 34
Set-PSDebug -Strict

function druha_odmocnina ([double] $num) {
[double] $ans = $num

do {
$old = ((( $num / $ans ) + $ans ) / 2); $ans = $old
$out = ((( $num / $ans ) + $ans ) / 2); $ans = $out
}
until ( $out -eq $old ) 
echo $out
}


# testovani funkce
$x = 70.7
$v1 = druha_odmocnina $x
echo $v1
#echo $v1.GetTypeCode() # double

$x = 5
$v2 = druha_odmocnina $x
echo $v2
#echo $v2.GetTypeCode()

sleep 10

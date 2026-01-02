cls

# treti odmocnina podle knizky "Hry s Kalkulatory" - jiri Mrazek , strana 38
Set-PSDebug -Strict

function treti_odmocnina ([double] $num) {
[double] $ans = $num

do {
$old = ((((( $num / $ans ) / $ans ) + $ans ) + $ans ) / 3 ); $ans = $old
$out = ((((( $num / $ans ) / $ans ) + $ans ) + $ans ) / 3 ); $ans = $out
}

until ( $old -eq $out )
echo $out
}

$x = 70.7
$v1 = treti_odmocnina $x
echo $v1
#echo $v1.GetTypeCode() # Double

$x = 5
$v2 = treti_odmocnina $x
echo $v2
#echo $v2.GetTypeCode()

sleep 10


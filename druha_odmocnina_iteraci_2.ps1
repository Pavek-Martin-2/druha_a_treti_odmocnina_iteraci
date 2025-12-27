cls

# druha odmocnina podle knizky "Hry s Kalkulatory"  - jiri Mrazek , strana 34

Set-PSDebug -Strict

function druha_odmocnina ([double] $num) {
[double] $ans = $num
[double] $out = $num
[double] $old_out = ($num - $num) # nula do $old_out, musi by scim porovnavat kvuli until ( $out -eq $old_out ) 

do{
$old_out = ((( $num / $ans ) + $ans ) / 2)
$ans = $old_out
$out = ((( $num / $ans ) + $ans ) / 2)
$ans = $out
}

until ( $out -eq $old_out ) 
# opakuj tak dlouho dokavad $out = $old=out ( cili vysledek iterace uz se nezmenil oproti predchozimu )
echo $out
echo "druha odmocnina z $num = $out"
}



# testovani funkce
Remove-Variable x -ErrorAction SilentlyContinue

[double] $x = 70.7 # 70.7
druha_odmocnina $x

$x = 5
druha_odmocnina $x


sleep 10


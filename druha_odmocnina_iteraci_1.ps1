cls

# druha odmocnina

Remove-Variable x -ErrorAction SilentlyContinue

<# casio 991
35.85
18,911
11,324
8,783
8,416
8,408
8,408 329 204 < konecnej vysledek 7 iterace
#>

function druha_odmocnina ([double] $num) {
echo "druha odmocnina z $num"

[double] $ans = $num
[double] $out = $num
[double] $old_out = ($num - $num) # nula do $old_out, musi by scim porovnavat kvuli until ( $out -eq $old_out ) 
[int16] $poc = 1

do {
$old_out = ((( $num / $ans ) + $ans ) / 2)
$ans = $old_out

$out = ((( $num / $ans ) + $ans ) / 2)
$ans = $out

echo "iterace $poc = $out"
$poc++
#echo $out"<"

} # konec until do{

until ( $out -eq $old_out ) 
# opakuj tak dlouho dokavad $out = $old=out ( cili vysledek iterace uz se nezmenil oproti predchozimu )
echo "vysledek = $out"
echo "------------------------------------"
}

# testovani funkce
[double] $x = 70.7 # 70.7
druha_odmocnina  $x

$x = 5 # v knizece bylo 5
druha_odmocnina $x


sleep 10


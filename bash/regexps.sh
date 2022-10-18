# Operadores regulares presentes en grep -E

"." # un solo caracter menos \n
"?" # la expresión a la izquierda hace match cero o una vez
"*" # la expresión a la izquierda hace match cero o más veces
"+" # la expresión a la izquierda hace match una o más veces
"{n}" # la expresión a la izquierda hace match n veces
"{n,m}" # la expresión a la izquierda hace match de n a m veces
"[abc]" # un sólo carácter de los incluidos entre corchetes
"[^abc]" # un sólo carácter que no es alguno de los incluidos entre corchetes
"[a-z]" # un carácter en el rango, funciona con números
"()" # agrupar expresiones
"|" # operador or para conectar dos expresiones
"^" # match con inicio de la línea
"$" # match con final de la línea

# Operadores extra de grep -P
"expABorrar\K(regexp)" # borrar lo que esté a la izquierda de \K en la captura
"(?=regexp)" # borra regexp a la derecha de la captura

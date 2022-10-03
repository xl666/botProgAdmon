function borrar_txt {
    local dir="$1";
    rm "$dir"/*txt;
}

function borrar_txt_rec {
    dir_base="$1";
    borrar_txt "$dir_base";
    for sub_dir in "$dir_base"/*; do
	test -d "$sub_dir" && borrar_txt_rec "$sub_dir"
    done
}

borrar_txt_rec "/tmp"

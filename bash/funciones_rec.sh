function no_recursiva {
    local dir="$1";
    hacer_algo "$dir";
}

function recursiva {
    dir_base="$1";
    no_recursiva "$dir_base";
    for sub_dir in "$dir_base"/*; do
	test -d "$sub_dir" && recursiva "$sub_dir"
    done
}

recursiva "/tmp"

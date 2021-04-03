#! /bin/sh

HERE="$(dirname $(realpath $0))"

pandoc() {
    docker run -i \
        --rm \
        -h pandoc \
        --mount type=bind,source=$HOME,target=$HOME \
        --mount type=bind,source=/tmp,target=/tmp \
        --workdir "$PWD" \
        --user "$(id -u):$(id -g)" \
        pandoc/core "$@"
}

for F; do
    INPUT="$(realpath "$F")"
    OUTPUT="$(basename "$INPUT")"
    OUTPUT="/tmp/"${OUTPUT%.*}.html

    echo "$OUTPUT"
    pandoc "$INPUT" -c "$HERE/pr2html.css" -s -o "$OUTPUT"
done

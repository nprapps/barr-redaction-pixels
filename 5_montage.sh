# sections:
# 1-II 22-43
# 1-III 44-73
# 1-IV 74-181
# 1-V 182-207

mkdir -p montages
rm montages/*

function makeMontage() {
  start=$1
  end=$2
  name=$3
  files=()
  for i in $(eval seq $start $end); do
    printf -v page '%03d' $i
    # echo $page
    files+=("pages/report-$page.png")
  done
  # echo "${files[@]}";
  montage "${files[@]}" -geometry 100x -tile 5x "montages/tiled-$name.png"
}

makeMontage 22 43 section1-II
makeMontage 44 73 section1-III
makeMontage 74 181 section1-IV
makeMontage 182 207 section1-V
makeMontage 222 227 section2-I
makeMontage 228 371 section2-II
makeMontage 372 394 section2-III
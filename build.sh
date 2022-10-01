mkdir -p public

cp style.css public/style.css

pandoc index.md -f markdown -t html -s -c style.css -o public/index.html

mkdir -p public/mc

pandoc mc/mods.md -f markdown -t html -s -c ../style.css -o public/mc/mods.html

mkdir -p public/docs/CI-Downloads

cp docs/CI-Downloads/*.png public/docs/CI-Downloads
pandoc docs/CI-Downloads/CI-Downloads.md -f markdown -t html -s -o public/docs/CI-Downloads/CI-Downloads.html

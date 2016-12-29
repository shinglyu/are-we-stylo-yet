curl https://raw.githubusercontent.com/Manishearth/css-properties-list/gh-pages/index.html > css_properties_list.html

grep -e "const STYLO_ALL" -e "let FIREFOX" css_properties_list.html > css_properties_list.js

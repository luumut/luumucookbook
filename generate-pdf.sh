#!/bin/bash
set -euo pipefail

mkdir -p build


# Generation of combined.md
cat <<EOF > build/combined.md
---
title: "Luumu Cookbook"
date: "$(date '+%Y-%m-%d')"
lang: fi
header-includes:
  - \\usepackage{graphicx}
  - \\setkeys{Gin}{width=\\linewidth,keepaspectratio}
  - \\usepackage{hyperref}
  - \\hypersetup{colorlinks=true, urlcolor=blue, linkcolor=black}
---

# Table of Contents

\\newpage
EOF

# Recipe folders
for dir in $(find juomat leipae makeat ruokaisat -type d | sort); do
  files=$(find "$dir" -maxdepth 1 -type f -name "*.md" | sort)
  if [[ -n "$files" ]]; then
    section_name=$(basename "$dir")

    cat <<EOF >> build/combined.md

\section{${section_name^}}
\noindent\rule{\textwidth}{0.4pt}

EOF

    for file in $files; do
      # Fix image links
      perl -pe 's|\!\[([^\]]*)\]\(https://github\.com/[^)]*/blob/[^)]*/media/([^)?]+)(\?raw=true)?\)|![$1](media/$2)|g' "$file" \
        >> build/combined.md
      echo -e "\n\\newpage\n" >> build/combined.md
    done
  fi
done

# Generate PDF
pandoc build/combined.md -o cookbook.pdf \
  --pdf-engine=xelatex \
  --toc \
  --toc-depth=2 \
  --resource-path=.:./media \
  --metadata title="Luumu Cookbook"
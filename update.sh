#!/bin/bash

rm ./docs/index.md

wget https://quick-grammar-559918.framer.app/

gsed -i "3 i <script> window.onload = event => document.getElementById('__framer-badge-container').style.display = 'none' </script>" index.html

gsed -i "1i\---\nhide:\n  - navigation\ntemplate: home.html\n---" index.html

mv index.html ./docs/index.md

#!/bin/bash

# Store the base directory of the script dynamically, so we can navigate to the root of the project whenever needed
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

runNodeTest() {
    printf "\n\e[34m***********\n"
    printf "* Node.js *\n"
    printf "***********\e[0m\n\n"
    
    cd "$BASE_DIR/node" || { echo "Directory not found"; exit 1; }
    rm -rf node_modules
    npm run node-test || { echo "Node test failed"; exit 1; }
}

# Ensure we always start from the base directory
cd "$BASE_DIR" || { echo "Failed to navigate to base directory"; exit 1; }

echo "Checking compatibility..."
runNodeTest
echo ""

# #!/bin/bash

# PACKAGE_TESTS_DIR='/Users/jrayback/src/work/future-forge/templates/vs-code-template-projects/npm-package-base/build/test/package/'

# # echo "PACKAGE_TESTS_DIR is set to: $PACKAGE_TESTS_DIR"

# runNodeTest() {
#     echo "\n[node.js]:\n"
#     cd "${PACKAGE_TESTS_DIR}node" || { echo "Directory not found"; exit 1; }
#     rm -rf node_modules
#     npm run node-test || { echo "Node test failed"; exit 1; }
# }

# runWebTest() {
#     echo "\n\n[web]:\n"
#     echo "checking..."
#     cd "${PACKAGE_TESTS_DIR}web" || { echo "Directory not found"; exit 1; }
#     rm -rf node_modules
#     npm install || { echo "npm install failed"; exit 1; }
#     npm run web-test || { echo "Web test failed"; exit 1; }
#     echo "\n...open index.html in a browser to view results...\n"
# }

# # echo "...working dir: $(pwd)"
# runNodeTest
# # echo "...working dir: $(pwd)"
# runWebTest
# # echo "...working dir: $(pwd)"
#!/bin/bash

PACKAGE_TESTS_DIR='/Users/jrayback/src/work/future-forge/templates/vs-code-template-projects/npm-package-base/build/test/package/'

# echo "PACKAGE_TESTS_DIR is set to: $PACKAGE_TESTS_DIR"

runNodeTest() {
    echo "\n[node.js]:\n"
    cd "${PACKAGE_TESTS_DIR}node" || { echo "Directory not found"; exit 1; }
    rm -rf node_modules
    npm run node-test || { echo "Node test failed"; exit 1; }
}

runWebTest() {
    echo "\n\n[web]:\n"
    echo "checking..."
    cd "${PACKAGE_TESTS_DIR}web" || { echo "Directory not found"; exit 1; }
    rm -rf node_modules
    npm install || { echo "npm install failed"; exit 1; }
    npm run web-test || { echo "Web test failed"; exit 1; }
    echo "\n...open index.html in a browser to view results...\n"
}

# echo "...working dir: $(pwd)"
runNodeTest
# echo "...working dir: $(pwd)"
runWebTest
# echo "...working dir: $(pwd)"
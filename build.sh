#!/bin/sh

function append {
    cat $1 >> apiary.apib
    echo "" >> apiary.apib
}

function clear {
    > apiary.apib
}

clear
append overview.markdown
append authentication.markdown
append application.markdown
append pre-declaration.markdown
append content.markdown

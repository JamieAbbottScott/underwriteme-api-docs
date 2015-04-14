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

append application/overview.markdown
append application/new.markdown
append application/existing.markdown

append pre-declaration.markdown
append enquiry.markdown
append question.markdown
append post-declaration.markdown
append comparison.markdown

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

append authentication/overview.markdown
append authentication/authenticate.markdown

append application/overview.markdown
append application/new.markdown
append application/existing.markdown

append pre-declaration/overview.markdown
append pre-declaration/existing.markdown

append enquiry/overview.markdown
append enquiry/existing.markdown

append question/overview.markdown
append question/definition.markdown
append question/option-list.markdown
append question/option-lookup.markdown

append post-declaration.markdown
append comparison.markdown

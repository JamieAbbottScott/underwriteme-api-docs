#!/bin/sh

function append {
    cat content/$1.md >> apiary.apib
    echo "" >> apiary.apib
}

function clear {
    > apiary.apib
}


clear

append overview

append authentication/overview
append authentication/authenticate

append application/overview
append application/new
append application/existing

append pre-declaration/overview
append pre-declaration/existing

append enquiry/overview
append enquiry/existing

append question/overview
append question/definition
append question/option-list
append question/option-lookup

append post-declaration/overview
append post-declaration/existing

append comparison/overview
append comparison/list
append comparison/item

append basket/overview
append basket/list
append basket/items
append basket/item

append doctor/overview
append doctor/existing

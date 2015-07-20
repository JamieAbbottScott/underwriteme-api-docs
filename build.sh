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
append application/update

append customer/overview
append customer/create
append customer/customer/read
append customer/list
append customer/customer/update
append customer/customer/remove

append product/overview
append product/create
append product/product/read
append product/list
append product/product/update
append product/product/delete

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

append legals/overview
append legals/advised-sale-declaration
append legals/money-laundering-checked-declaration
append legals/adviser-declaration
append legals/client-declaration
append legals/insurer-marketing-preference
append legals/third-party-marketing-preference


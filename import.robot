*** Settings ***
Library     SeleniumLibrary

Resource    ${CURDIR}/keywords/features/login_feature.robot
Resource    ${CURDIR}/keywords/features/home_feature.robot
Resource    ${CURDIR}/keywords/features/product_feature.robot
Resource    ${CURDIR}/keywords/features/search_feature.robot
Resource    ${CURDIR}/keywords/features/search_result_feature.robot
Resource    ${CURDIR}/keywords/pages/common.robot
Resource    ${CURDIR}/keywords/pages/login_page.robot
Resource    ${CURDIR}/keywords/pages/home_page.robot
Resource    ${CURDIR}/keywords/pages/product_page.robot
Resource    ${CURDIR}/keywords/pages/search_page.robot
Resource    ${CURDIR}/keywords/pages/search_result_page.robot

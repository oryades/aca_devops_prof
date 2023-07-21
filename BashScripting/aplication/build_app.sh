#!/bin/bash

if [[ -f ./env.sh ]]; then
    echo "Use envairment variables from file ${PWD}/env.sh"
    source ./env.sh
fi

WORKING_DIR="${WORK_DIR:=~'~/ACA/aca_devops_prof'}"
echo "${WORKING_DIR}"
help () {
    # information for aplication
    echo " 
    Usage:
        ./build_app push - push in github

            [-m] commit message

        ./build_app clear - clear work directory

        ./build_app - building on the server [--SkipTests] skip test 

        ./build_app - lounch app"
}

push () {
    if [[ -d  "${WORKING_DIR}" ]]; then
        cd "${WORKING_DIR}" || exit
        if [[ "${1}" = '-m' ]]; then
            echo "git add -A && git commit -m ${2} && git push origin Sam"
        else
            echo "git add -A && git commit -m 'working process' && git push origin Sam"
        fi
    else
        echo "Directory dose not exist"
    fi
}


case $1 in
--help)
    help
    ;;
--push)
    push $2 $3
    ;;
*)
    echo "[$1] This command is not valid"
    exit 1
    ;;
esac

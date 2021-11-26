#!/bin/bash
#menu

#install golang
function golang {
        git clone https://github.com/udhos/update-golang &
        wait; cd update-golang &
        wait; sudo ./update-golang.sh &
        wait; sudo echo PATH=$PATH:/usr/local/go/bin >> ~/.profile
        wait; source $HOME/.profile;

}
#install all
function all () {
        sudo apt update && sudo apt upgrade -y &
        wait; sudo apt-get install -y build-essential &
        wait; sudo apt install jq -y &
        wait; sudo apt-get install git -y &
        wait; sudo apt-get install ufw -y
        wait; golang;

}
#custom select update
function custom () {
        PS3='Do you want update & upgrade?'
        data=("Yes" "No")
        select answer in "${data[@]}"
do 
        case $answer in
        "Yes")
        build
	;;
        "No")
        build
        ;;
        esac
	done;
}
#custom select build-essential
function build () {
        PS3='Do you want install build-essential?'
        data=("Yes" "No")
        select answer in "${data[@]}"
do 
        case $answer in
        "Yes")
        export build=$(sudo apt-get install -y build-essential)
        jq
	;;
        "No")
        jq
        ;;
        esac
	done;
}

#custom select jq
function jq () {
        PS3='Do you want install jq?'
        data=("Yes" "No")
        select answer in "${data[@]}"
do 
        case $answer in
        "Yes")
        export jq=$(sudo apt install jq -y)
        git
	;;
        "No")
        git
        ;;
        esac
	done;
}
#custom install git
function git () {
        PS3='Do you want install git?'
        data=("Yes" "No")
        select answer in "${data[@]}"
do 
        case $answer in
        "Yes")
        export git=$(sudo apt install git -y)
        ufw
	;;
        "No")
        ufw
        ;;
        esac
	done;
}
#custom install ufw
function ufw () {
        PS3='Do you want install ufw?'
        data=("Yes" "No")
        select answer in "${data[@]}"
do 
        case $answer in
        "Yes")
        export ufw=$(sudo apt install ufw -y)
        go
	;;
        "No")
        go
        ;;
        esac
	done;
}
#install golang
function go () {
        PS3='Do you want install golang?'
        data=("Yes" "No")
        select answer in "${data[@]}"
do 
        case $answer in
        "Yes")
        goinstal
	;;
        "No")
        goinstal2
        ;;
        esac
	done;
}
#install custom 
function goinstal () {
        $update &
        wait; $build &
        wait; $jq &
        wait; $git &
        wait; $ufw &
        golang
	exit 0;

}
function goinstal2 () {
	$update &
        wait; $build &
        wait; $jq &
        wait; $git &
        wait; $ufw &
        exit 0;
}
#menu
PS3=`Select custom installation or all tools (update, go, jq, build, ufw, docker): `
data=("Custom" "All tools")
select answer in "${data[@]}"
do
        case $answer in
        "Custom")
        custom
        ;;
        "All tools")
        all
        ;;
esac
done;


#!/bin/bash
m_rem_list=""
#HACK
send_to_remove_hack_list(){
	m_rem_hack_list="${m_rem_hack_list}\n${m_file}"
}
send_to_keep_hack_list(){
	m_keep_hack_list="${m_keep_hack_list}\n${m_file}"
}
#BAD
send_to_remove_bad_list(){
	m_rem_bad_list="${m_rem_bad_list}\n${m_file}"
}
send_to_keep_bad_list(){
	m_keep_bad_list="${m_keep_bad_list}\n${m_file}"
}
#BETA
send_to_remove_beta_list(){
	m_rem_beta_list="${m_rem_beta_list}\n${m_file}"
}
send_to_keep_beta_list(){
	m_keep_beta_list="${m_keep_beta_list}\n${m_file}"
}
#TRICHE
send_to_remove_triche_list(){
	m_rem_triche_list="${m_rem_triche_list}\n${m_file}"
}
send_to_keep_triche_list(){
	m_keep_triche_list="${m_keep_triche_list}\n${m_file}"
}
#PIRATE
send_to_remove_pirate_list(){
	m_rem_pirate_list="${m_rem_pirate_list}\n${m_file}"
}
send_to_keep_pirate_list(){
	m_keep_pirate_list="${m_keep_pirate_list}\n${m_file}"
}
#LANG
send_to_remove_lang_list(){
	m_rem_lang_list="${m_rem_lang_list}\n${m_file}"
}
send_to_keep_lang_list(){
	m_keep_lang_list="${m_keep_lang_list}\n${m_file}"
}

write_list(){
	echo "$(date)" >> m_rem_hack_list.txt
	echo -e "${m_rem_hack_list}" >> m_rem_hack_list.txt
	echo "$(date)" >> m_keep_hack_list.txt
	echo -e "${m_keep_hack_list}" >> m_keep_hack_list.txt
	echo "$(date)" >> m_rem_bad_list.txt
	echo -e "${m_rem_bad_list}" >> m_rem_bad_list.txt
	echo "$(date)" >> m_keep_bad_list.txt
	echo -e "${m_keep_bad_list}" >> m_keep_bad_list.txt
	echo "$(date)" >> m_rem_beta_list.txt
	echo -e "${m_rem_beta_list}" >> m_rem_beta_list.txt
	echo "$(date)" >> m_keep_beta_list.txt
	echo -e "${m_keep_beta_list}" >> m_keep_beta_list.txt
	echo "$(date)" >> m_rem_triche_list.txt
	echo -e "${m_rem_triche_list}" >> m_rem_triche_list.txt
	echo "$(date)" >> m_keep_triche_list.txt
	echo -e "${m_keep_triche_list}" >> m_keep_triche_list.txt
	echo "$(date)" >> m_rem_pirate_list.txt
	echo -e "${m_rem_pirate_list}" >> m_rem_pirate_list.txt
	echo "$(date)" >> m_keep_pirate_list.txt
	echo -e "${m_keep_pirate_list}" >> m_keep_pirate_list.txt
	echo "$(date)" >> m_rem_lang_list.txt
	echo -e "${m_rem_lang_list}" >> m_rem_lang_list.txt
	echo "$(date)" >> m_keep_lang_list.txt
	echo -e "${m_keep_lang_list}" >> m_keep_lang_list.txt
}

clean(){
#listes
	rm -rf m_rem_hack_list.txt m_keep_hack_list.txt
	rm -rf m_rem_pirate_list.txt m_keep_pirate_list.txt m_rem_triche_list.txt m_keep_triche_list.txt
	rm -rf m_rem_beta_list.txt m_keep_beta_list.txt m_rem_bad_list.txt m_keep_bad_list.txt
	rm -rf m_rem_lang_list.txt m_keep_lang_list.txt before_stats.txt after_stats.txt
#directory
	rm -rf to_trash/
# stats
	rm stats.txt 2>/dev/null
#gamelist launchbox
	rm -f "$(basename $(pwd)).xml"
	rm -f "$(basename $(pwd)).backup.xml"
#gamelist backup and copy
	rm -rf gamelist.copy.xml gamelist.backup.xml
}

manage_roms(){
	#HACK
	echo -e "remove_hack_list:"
	echo -e "\033[33m${m_rem_hack_list}\t\033[0m"
	OIFS=$IFS
	IFS=$'\n'
	for name in $(cat m_rem_hack_list.txt); do
		str_size=$(echo ${#name})
		cut=$(( $str_size - 4 ))
		mv "$name" to_trash/ 2>/dev/null
		mv media/images/"${name:0:${cut}}".png to_trash/media/images/ 2>/dev/null
		mv media/box3d/"${name:0:${cut}}".png to_trash/media/box3d/ 2>/dev/null
		mv media/videos/"${name:0:${cut}}".mp4 to_trash/media/videos/ 2>/dev/null
		mv media/manuals/"${name:0:${cut}}".pdf to_trash/media/manuals/ 2>/dev/null
	done
	IFS=$OIFS
	echo ""
	echo -e "keep_hack_list:"
	echo -e "\033[36m${m_keep_hack_list}\t\033[0m"
	
	#BAD
	echo -e "remove_bad_list:"
	echo -e "\033[33m${m_rem_bad_list}\t\033[0m"
	OIFS=$IFS
	IFS=$'\n'
	for name in $(cat m_rem_bad_list.txt); do
		str_size=$(echo ${#name})
		cut=$(( $str_size - 4 ))
		mv "$name" to_trash/ 2>/dev/null
		mv media/images/"${name:0:${cut}}".png to_trash/media/images/ 2>/dev/null
		mv media/box3d/"${name:0:${cut}}".png to_trash/media/box3d/ 2>/dev/null
		mv media/videos/"${name:0:${cut}}".mp4 to_trash/media/videos/ 2>/dev/null
		mv media/manuals/"${name:0:${cut}}".pdf to_trash/media/manuals/ 2>/dev/null

	done
	IFS=$OIFS
	echo ""
	echo -e "m_keep_bad_list:"
	echo -e "\033[36m${m_keep_bad_list}\t\033[0m"
	
	#Beta
	echo -e "remove_beta_list:"
	echo -e "\033[33m${m_rem_beta_list}\t\033[0m"
	OIFS=$IFS
	IFS=$'\n'
	for name in $(cat m_rem_beta_list.txt); do
		str_size=$(echo ${#name})
		cut=$(( $str_size - 4 ))
		mv "$name" to_trash/ 2>/dev/null
		mv media/images/"${name:0:${cut}}".png to_trash/media/images/ 2>/dev/null
		mv media/box3d/"${name:0:${cut}}".png to_trash/media/box3d/ 2>/dev/null
		mv media/videos/"${name:0:${cut}}".mp4 to_trash/media/videos/ 2>/dev/null
		mv media/manuals/"${name:0:${cut}}".pdf to_trash/media/manuals/ 2>/dev/null
	done
	IFS=$OIFS
	echo ""
	echo -e "m_keep_beta_list:"
	echo -e "\033[36m${m_keep_beta_list}\t\033[0m"

	#TRICHE
	echo -e "remove_triche_list:"
	echo -e "\033[33m${m_rem_triche_list}\t\033[0m"
	OIFS=$IFS
	IFS=$'\n'
	for name in $(cat m_rem_triche_list.txt); do
		str_size=$(echo ${#name})
		cut=$(( $str_size - 4 ))
		mv "$name" to_trash/ 2>/dev/null
		mv media/images/"${name:0:${cut}}".png to_trash/media/images/ 2>/dev/null
		mv media/box3d/"${name:0:${cut}}".png to_trash/media/box3d/ 2>/dev/null
		mv media/videos/"${name:0:${cut}}".mp4 to_trash/media/videos/ 2>/dev/null
		mv media/manuals/"${name:0:${cut}}".pdf to_trash/media/manuals/ 2>/dev/null
	done
	IFS=$OIFS
	echo ""
	echo -e "m_keep_triche_list:"
	echo -e "\033[36m${m_keep_triche_list}\t\033[0m"

	#PIRATE
	echo -e "remove_pirate_list:"
	echo -e "\033[33m${m_rem_pirate_list}\t\033[0m"
	OIFS=$IFS
	IFS=$'\n'
	for name in $(cat m_rem_pirate_list.txt); do
		str_size=$(echo ${#name})
		cut=$(( $str_size - 4 ))
		mv "$name" to_trash/ 2>/dev/null
		mv media/images/"${name:0:${cut}}".png to_trash/media/images/ 2>/dev/null
		mv media/box3d/"${name:0:${cut}}".png to_trash/media/box3d/ 2>/dev/null
		mv media/videos/"${name:0:${cut}}".mp4 to_trash/media/videos/ 2>/dev/null
		mv media/manuals/"${name:0:${cut}}".pdf to_trash/media/manuals/ 2>/dev/null
	done
	IFS=$OIFS
	echo ""
	echo -e "m_keep_pirate_list:"
	echo -e "\033[36m${m_keep_pirate_list}\t\033[0m"

	#LANG
	echo -e "remove_lang_list:"
	echo -e "\033[33m${m_rem_lang_list}\t\033[0m"
	OIFS=$IFS
	IFS=$'\n'
	for name in $(cat m_rem_lang_list.txt); do
		str_size=$(echo ${#name})
		cut=$(( $str_size - 4 ))
		mv "$name" to_trash/ 2>/dev/null
		mv media/images/"${name:0:${cut}}".png to_trash/media/images/ 2>/dev/null
		mv media/box3d/"${name:0:${cut}}".png to_trash/media/box3d/ 2>/dev/null
		mv media/videos/"${name:0:${cut}}".mp4 to_trash/media/videos/ 2>/dev/null
		mv media/manuals/"${name:0:${cut}}".pdf to_trash/media/manuals/ 2>/dev/null
	done
	IFS=$OIFS
	echo ""
	echo -e "m_keep_lang_list:"
	echo -e "\033[36m${m_keep_lang_list}\t\033[0m"
	
}

get_stat(){
	#Merci MECHMECH
	#echo "${lst_roms}" | grep '\[.*\]'  | sed 's/.*\(\[.*\]\).*/\1/' | sort -n| uniq -c | sort -nr
	echo "#######################################################################################"
	echo "$(date)" > before_stats.txt
	echo "${lst_roms}" | grep '\[.*\]'  | sed 's/.*\(\[.*\]\).*/\1/' | sort -n| uniq -c | sort -nr >> before_stats.txt
	echo "#######################################################################################"
	#echo ""
}
set_stat(){
	#Merci MECHMECH
	#ls "${rom_dir}" | grep '\[.*\]'  | sed 's/.*\(\[.*\]\).*/\1/' | sort -n| uniq -c | sort -nr
	echo "#######################################################################################"
	echo "$(date)" > after_stats.txt
	ls "${rom_dir}" | grep '\[.*\]'  | sed 's/.*\(\[.*\]\).*/\1/' | sort -n| uniq -c | sort -nr >> after_stats.txt
	echo "#######################################################################################"
	#echo ""
}
show_stat(){
	diff -y --suppress-common-lines before_stats.txt after_stats.txt
}
check_hack(){
# si plusieur hack et pas de ! tous garder 
	if [[ $(echo "${m_file}" |grep -c "\[h" ) == 1 ]] ;then
		echo -e "is a hack: ${m_file}"
		base_rom_name=$(echo "${m_file}" | sed 's/\([^\[]\)(.*)\[h.*/\1/')
		if there_no_goodrom; then
			if there_no_betterrom; then
				send_to_keep_hack_list
			else
				send_to_remove_hack_list
			fi 
		else
			send_to_remove_hack_list
		fi
	fi
	if [[ $(echo "${m_file}" | grep -ic "(\+.*hack" ) == 1 ]] ;then
		echo -e "is a hack: ${m_file}"
		base_rom_name=$(echo "${m_file}" | sed 's/\([^\[]\)(\+.*[Hh][Aa][Cc][Kk].*/\1/')
		echo -e "to remove:\t\033[31m${m_file}\033[0m"
		echo -ne "because is a hack:\t\033[32m"
		echo "${m_file}"
		echo -e "\033[0m"
		send_to_remove_hack_list
		# if [[ $(echo "${m_file}" | grep -ic 'SMW1 HACK') != 0 ]] ; then
			# echo -e "to remove:\t\033[31m${m_file}\033[0m"
			# echo -ne "because:\t\033[32mIs Super Mario World 1 HACK"
			# echo -e "\033[0m"
			# send_to_remove_hack_list
		# elif there_no_goodrom; then
			# if there_no_betterrom; then
				# send_to_keep_hack_list
			# else
				# send_to_remove_hack_list
			# fi 
		# else
			# send_to_remove_hack_list
		# fi
	fi
}
check_bad(){
	if [[ $(echo "${m_file}" |grep -c "\[b[0-9]\]" ) == 1 ]] ;then
		#read
	    base_rom_name=$(echo "${m_file}" | sed 's/\([^\[]\)\[b[0-9]*.*/\1/')
		echo -e "is a bad: ${m_file}"
		if there_no_goodrom; then 
			if there_no_betterrom; then
				send_to_keep_bad_list
			else
				send_to_remove_bad_list
			fi
		else
			send_to_remove_bad_list
		fi
	fi
}
check_beta(){
	if [[ $(echo "${m_file}" |grep -c "(Beta)" ) == 1 ]] ;then
		#read
	    base_rom_name=$(echo "${m_file}" | sed 's/\([^\[]\)(Beta).*/\1/')
		echo -e "is a beta: ${m_file}"
		if there_no_goodrom; then 
			if there_no_betterrom; then
				send_to_keep_beta_list
			else
				send_to_remove_beta_list
			fi
		else
			send_to_remove_beta_list
		fi
	fi
}
check_triche(){
	if [[ $(echo "${m_file}" |grep -c "\[t" ) == 1 ]] ;then
		#read
	    base_rom_name=$(echo "${m_file}" | sed 's/\([^\[]\)\[t.*/\1/')
		echo -e "is a triche: ${m_file}"
		if there_no_goodrom; then 
			if there_no_betterrom; then
				send_to_keep_triche_list
			else
				send_to_remove_triche_list
			fi
		else
			send_to_remove_triche_list
		fi
	fi
}
check_pirate(){
	if [[ $(echo "${m_file}" |grep -c "\[p" ) == 1 ]] ;then
		#read
	    base_rom_name=$(echo "${m_file}" | sed 's/\([^\[]\)\[p.*/\1/')
		echo -e "is a pirate: ${m_file}"
		if there_no_goodrom; then 
			if there_no_betterrom; then
				send_to_keep_pirate_list
			else
				send_to_remove_pirate_list
			fi
		else
			send_to_remove_pirate_list
		fi
	fi
}
is_french(){
	if [[ $(echo "${m_file}" | grep -ci "\[T+Fr") == 1 ]]; then
		return 0
	else
		return 1
	fi
}
is_english(){
	if [[ $(echo "${m_file}" | grep -ci "\[T+En") == 1 ]]; then
		return 0
	else
		return 1
	fi
}
there_no_french(){
#set -x
base_rom_name_fr=$(echo "${base_rom_name_grp}" | sed 's/\([^\[]\)(.*)/\1/')
	if [[ $(echo "${lst_roms}" | grep -v "${m_file_grp}"| grep -iv "\[T" | grep -ci "^${base_rom_name_fr}.*(F).*") == 0 ]]; then
		#if is_there_better_french; there
#set +x
		return 0
	else
#set +x
		return 1
	fi
}
there_no_french_or_french_trad(){

	if ! there_no_french; then
		echo -e "to remove:\t\033[31m${m_file}\033[0m"
		echo -ne "because:\t\033[32m"
		echo "${lst_roms}" | grep -v "${m_file_grp}"| grep -iv "\[T" | grep -i "^${base_rom_name_fr}.*(F).*"
		echo -e "\033[0m"
		send_to_remove_lang_list
		return 1
	elif [[ $(echo "${lst_roms}" | grep -v "${m_file_grp}" | grep -ci "^${base_rom_name_grp}.*\[T+F.*") != 0 ]] ;then
		echo -e "to remove:\t\033[31m${m_file}\033[0m"
		echo -ne "because:\t\033[32m"
		echo "${lst_roms}" | grep -v "${m_file_grp}" | grep -i "^${base_rom_name_grp}.*\[T+F.*"
		echo -e "\033[0m"
		send_to_remove_lang_list
		return 1
	else
		return 0
	fi
}
check_lang(){
	if [[ $(echo "${m_file}" |grep -c "\[T" ) == 1 ]] ;then
		#read
	    base_rom_name=$(echo "${m_file}" | sed 's/\([^\[]\)\[T.*/\1/')
		base_rom_name_grp=$(echo ${base_rom_name} | sed -e 's/\[/\\[/g' -e 's/\]/\\]/g' )
		m_file_grp=$(echo ${m_file} | sed -e 's/\[/\\[/g' -e 's/\]/\\]/g' )
		echo $m_file_grp
		echo $base_rom_name_grp
		echo -e "is a traduction: ${m_file}"
		if is_french ;then
			echo -e "is a French traduction: ${m_file}"
			if there_no_french; then
				echo -e "keep:\t\033[35m${m_file}\033[0m"
				send_to_keep_lang_list
			else
				echo -e "to remove:\t\033[31m${m_file}\033[0m"
				echo -ne "because:\t\033[32m"
				echo "${lst_roms}" | grep -v "${m_file_grp}"| grep -iv "\[T" | grep -i "^${base_rom_name_grp}.*(F).*"
				echo -e "\033[0m"
				send_to_remove_lang_list
			fi
		elif is_english ;then
			echo -e "is a English traduction: ${m_file}"
			if there_no_french_or_french_trad ; then 
				echo -e "keep:\t\033[35m${m_file}\033[0m"
				send_to_keep_lang_list
			fi
		else
			echo -e "to remove:\t\033[31m${m_file}\033[0m"
			send_to_remove_lang_list
		fi
	fi
}
there_no_goodrom(){
	base_rom_name=$(echo ${base_rom_name} | sed 's/ $//')
	echo "base good search name: ${base_rom_name}"
	base_rom_name_grp=$(echo ${base_rom_name} | sed -e 's/\[/\\[/g' -e 's/\]/\\]/g' )
	m_file_grp=$(echo ${m_file} | sed -e 's/\[/\\[/g' -e 's/\]/\\]/g' )
	#read
	#if [[ $(echo "${lst_roms}" | grep -c "^${base_rom_name_grp}.\?(a-Z)\+\[\+c\]\+\[!\]") != 0 ]] ; then 
	if [[ $(echo "${lst_roms}" | grep -v "${m_file_grp}"| grep -c "^${base_rom_name_grp}.\?(*[a-zA-Z]*)*.\?\[*c*\]*\[!\]") != 0 ]] ; then 
		#read
		echo -e "to remove:\t\033[31m${m_file}\033[0m"
		echo -en "because:\t\033[32m"
		echo "${lst_roms}" | grep -v "${m_file_grp}"| grep "^${base_rom_name_grp}.\?(*[a-zA-Z]*)*.\?\[*c*\]*\[!\]"
		echo -e "\033[0m"
		return 1
	else
		echo -e "keep:\t\033[35m${m_file}\033[0m"
		return 0
	fi
}
there_no_betterrom(){	
	base_rom_name=$(echo ${base_rom_name} | sed 's/ $//')
	echo "base better search name: ${base_rom_name}"
	base_rom_name_grp=$(echo ${base_rom_name} | sed -e 's/\[/\\[/g' -e 's/\]/\\]/g' )
	m_file_grp=$(echo ${m_file} | sed -e 's/\[/\\[/g' -e 's/\]/\\]/g' )
	#read
	if [[ $(echo "${lst_roms}" | grep -v "${m_file_grp}" |grep -c "^${base_rom_name_grp}.\?(*[a-zA-Z]*)*\[*c*\]*\.") != 0 ]] ; then 
		#read
		echo -e "to remove:\t\033[31m${m_file}\033[0m"
		echo -en "because:\t\033[32m"
		echo "${lst_roms}" | grep -v "${m_file_grp}" | grep "^${base_rom_name_grp}.\?(*[a-zA-Z]*)*\[*c*\]*\."
		echo -e "\033[0m"
		return 1
	else
		echo -e "keep:\t\033[35m${m_file}\033[0m"
		return 0
	fi
}

m_help="aide"
stats='n'
sim='n'
m_help="
The program will check against name and good rom (aka [!]) presence
it will keep good rom [!] or better rom if no good rom present.
Better rom is defined as same name without current parsing 
\tfor \"rom name (U) [h1].gen\":
\t\t\"rom name (U) [!].gen\" is a good one
\t\t\"rom name (U).gen\" is a better one

Usage:
\t-s: print and write stat file
\t-v: virtual simulate and create file but do nothing
\t-d: directory to operate
Example:
\tprint stat and generate file of what it do
\t\t$(basename "$0") -sd /mnt/roms/nes/
\tprint stat and generate file of what it will do but do nothing 
\t\t$(basename "$0") -vsd /mnt/roms/nes/
\tgenerate file of what it will do but do nothing 
\t\t$(basename "$0") -vd /mnt/roms/nes/

File are genrate in the -d directory as list.txt file (ex: m_rem_bad_list.txt)
\tprefix :
\t\tm_keep\t-> keeped roms
\t\tm_rem\t-> removed roms
\tsuffix:
\t\tbad\t-> rom name with [b
\t\thack\t-> rom name with [h
\t\tbeta\t-> rom name with (Beta)
"
main(){
	cd ${rom_dir}
	if [[ "${clean}" == 'y' ]]; then 
		clean
	else
		lst_roms=$(ls "${rom_dir}")
		#lst_roms="Home Alone (Beta).gen"
		mkdir -p to_trash/media/images/
		mkdir -p to_trash/media/box3d/
		mkdir -p to_trash/media/videos/
		mkdir -p to_trash/media/manuals/
		if [[ ${stats} == 'y' ]]; then 
			get_stat
		fi
		j=0
		for m_file in *; do
			echo -e "processing : \033[33m${m_file}\033[0m"
			check_hack
			check_bad
			check_beta
			check_triche
			check_pirate
			check_lang

			#sleep 1
			#check_keep
			#j=$(($j + 1))
			#if [[ $j == 100 ]];then
			#	break
			#fi
			echo ""
		done
		write_list
		if [[ ${sim} != 'y' ]]; then
			manage_roms
			if [[ ${stats} == 'y' ]]; then 
				set_stat
			fi
		fi
		show_stat
	fi
}

while getopts ":vscd:" opt; do
    case $opt in
		s) stats='y'
		;;
		c) clean='y'
		;;
		v) sim='y'
		;;
		d) rom_dir="$OPTARG"
			main
		;;
		?) echo -e "${m_help}"
		;;
		*) echo "je fait rien t'es trop nul"
		;;
	esac	
done

#if [[ $opt == "?" ]] ; then 
#	echo ${m_help}
#fi

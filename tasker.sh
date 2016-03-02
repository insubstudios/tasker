#!/bin/bash

# use notes:
# "@" and "#" not used to mark assignments and projects must be quoted.


# init:
# empty file
echo -e "TO DO:\n---\n" > output.md
echo "" > output.txt
i=1

# cycle through file and add unique values to arrays
while read line; do
echo $i >> output.txt

	# get task from line
		# foreach line that starts with - or + (or -> #l8r)
		if [[ $line =~ ^[\-\+] ]]; then
			# get string between "-" and ";", trim white space
			this_task=`echo $line | cut -d \; -f 1 | cut -d \@ -f 1 | cut -d \# -f 1 | sed -e 's/^-//' -e 's/^+//' -e 's/^\s*//' -e 's/\s$//'`
			# if $this_task is not in unique list, add it.
			if [[ ! $tasks == *"$this_task"* ]]; then
				# add to list of unique project names
				tasks="$tasks$this_task;";
			fi
			# else, skip.
		fi

	# get name(s) from line
		# only get names assigned to tasks
		if [[ $line =~ ^[\-\+] ]]; then
			# get string between "@" and ";" (or "#")
			this_name=`echo $line | sed -e 's/"@"/[AT]/' | cut -d \@ -f 2 -s | cut -d \; -f 1 | cut -d \# -f 1`
			# split at ",", trim white space
			OLDIFS=$IFS
			IFS=','
			for n in $this_name; do
				n=`echo "$n" | sed -e 's/^\s*//' -e 's/\s$//'`
				# if $this_name:n is not in unique list, add it.
				if [[ ! $names == *"$n"* ]]; then
					# add to list of unique team member names
					names="$names$n;";
				fi
			done
			IFS=$OLDIFS
		fi

	# get project(s) from line
		# only get projects associated w/ tasks
		if [[ $line =~ ^[\-\+] ]]; then
			# get string between "#" and ";" (or "\n")
			this_project=`echo $line | sed -e 's/"#/[HASH]/' | cut -d \# -f 2 -s | cut -d \; -f 1`
			# split at ",", trim white space
			OLDIFS=$IFS
			IFS=','
			for p in $this_project; do
				p=`echo "$p" | sed -e 's/^\s*//' -e 's/\s$//'`
				# if $this_project:p is not in unique list, add it.
				if [[ ! $projects == *"$p"* ]]; then
					# add to list of unique project names
					projects="$projects$p;";
				fi
			done
			IFS=$OLDIFS
		fi

#echo "aft_pro: $line" >> output.txt
echo -e '---' >> output.txt
((i++))
done < todo.md

# print by-name
echo -e "\n## by name:\n" >> output.md
	# loop through $names
	OLDIFS=$IFS
	IFS=';'
	for this_name in $names; do
		echo -e "\n### $this_name\n" >> output.md
		sed -n -e '/.*[^"]@.*'$this_name'/p' todo.md >> output.md
	done
	IFS=$OLDIFS

# print by-project
echo -e "\n## by project:\n" >> output.md
	# loop through $projects
	OLDIFS=$IFS
	IFS=';'
	for this_project in $projects; do
		echo -e "\n### $this_project\n" >> output.md
		sed -n -e '/.*[^"]#.*'$this_project'/p' todo.md >> output.md
	done
	IFS=$OLDIFS


# print all tasks
echo -e "\n## all tasks:\n" >> output.md
	# loop through $tasks
	OLDIFS=$IFS
	IFS=';'
	for this_task in $tasks; do
		echo -e "\n### $this_task\n" >> output.md
		sed -ne '/'"$this_task"'/p' todo.md >> output.md
	done
	IFS=$OLDIFS


# markdown
markdown output.md > output.html

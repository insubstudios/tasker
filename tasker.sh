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
			this_task=`echo $line | cut -d \; -f 1 | sed -e 's/^-//' -e 's/^+//' -e 's/^\s*//' -e 's/\s*$//'`
			# if $this_task is not in unique list, add it.
			if [[ ! $tasks == *"$this_task"* ]]; then
				# add to list of unique project names
				tasks="$tasks $i $this_task;";
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
				n=`echo "$n" | sed -e 's/^\s*//' -e 's/\s*$//'`
				# if $this_name:n is not in unique list, add it.
				if [[ ! $names == *"$n"* ]]; then
					# add to list of unique team member names
					names="$names $i $n;";
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
				p=`echo "$p" | sed -e 's/^\s*//' -e 's/\s*$//'`
				# if $this_project:p is not in unique list, add it.
				if [[ ! $projects == *"$p"* ]]; then
					# add to list of unique project names
					projects="$projects $i $p;";
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
echo "$names" >> output.md

# print by-project
echo -e "\n## by project:\n" >> output.md
echo "$projects" >> output.md


# print all tasks
echo -e "\n## all tasks:\n" >> output.md
echo "$tasks" >> output.md


# markdown
markdown output.md > output.html

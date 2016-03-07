#!/bin/bash

# use notes:
# "@", "#", and ";" not used to mark assignments and projects must be quoted.
# task chunk must be first, assignment and project chunks can be in either order
# todo.md format:
#	- actionable task; @name_1, name_2; #project_1, project_2
#	- actionable task @name_1, name_2 #project_1, project_2
#	- actionable task #project_1, project_2 @name_1, name_2
#	- actionable task ; #project_1, project_2 ; @name_1, name_2
# partial lines are okay:
#	- one-off actionable task @name_1, name_2
#	- actionable task that is unassigned #project_1, project_2
#	- one-off actionable task that is unassigned


# init:
# empty file
echo -e "TO DO:\n===" > output.md

# cycle through file and add unique values to arrays
while read -r line; do

	# get task from line, record unique
		# for each line that starts with - or + (or -> #l8r)
		if [[ $line =~ ^[\+\-]\ + ]]; then
			# escape quoted "@", "#", and ";"
			# isolate task - the string between "-" and ;, @, or #
			# trim task marker and white space
			# and escape special chars to use $this_task in regex
			this_task=`echo $line |
				sed -e 's/"@/"./' | sed -e 's/"#/"./' | sed -e 's/";/"./' |
				cut -d \; -f 1 | cut -d \@ -f 1 | cut -d \# -f 1 |
				sed -e 's/^-//' -e 's/^+//' -e 's/^\s*//' -e 's/\s$//' \
					-e 's/[]\/$*.^|[]/\\./g'`
			# if $this_task is not in unique list, add it.
			if [[ ! $tasks == *"$this_task"* ]]; then
				# add to list of unique project names
				tasks="$tasks$this_task;";
			fi
			# else, skip.
		fi

	# get name(s) from line, record unique
		# only get names assigned to tasks
		if [[ $line =~ ^[\+\-]\ + ]]; then
			# escape quoted "@"
			# get string between "@" and ";" (or "#")
			this_name=`echo $line | sed -e 's/"@.*"/[AT]/' |
				cut -d \@ -f 2 -s | cut -d \; -f 1 | cut -d \# -f 1`
			# split at ","
			OLDIFS=$IFS
			IFS=','
			for n in $this_name; do
				# trim white space, & escape special regex chars
				n=`echo "$n" | sed -e 's/^\s*//' -e 's/\s$//' \
					-e 's/[]\/$*.^|[]/\\./g'`
				# if $this_name:n is not in unique list, add it.
				if [[ ! $names == *"$n"* ]]; then
					# add to list of unique team member names
					names="$names$n;";
				fi
			done
			IFS=$OLDIFS
		fi

	# get project(s) from line, record unique
		# only get projects associated w/ tasks
		if [[ $line =~ ^[\+\-]\ + ]]; then
			# escape quoted "@"
			# get string between "#" and ";" (or "@")
			this_project=`echo $line | sed -e 's/\"#.*\"/[HASH]/' |
				cut -d \# -f 2 -s | cut -d \; -f 1 | cut -d \@ -f 1`
			# split at ","
			OLDIFS=$IFS
			IFS=','
			for p in $this_project; do
				# trim white space, & escape special regex chars
				p=`echo "$p" | sed -e 's/^\s*//' -e 's/\s$//' \
					-e 's/[]\/$*.^|[]/\\./g'`
				# if $this_project:p is not in unique list, add it.
				if [[ ! $projects == *"$p"* ]]; then
					# add to list of unique project names
					projects="$projects$p;";
				fi
			done
			IFS=$OLDIFS
		fi
done < todo.md

# print by-name
echo -e "\n---\nby name\n---" >> output.md

	# loop through list of unique $names
	OLDIFS=$IFS
	IFS=';'
	for this_name in $names; do
		# print team member's name
		echo -e "\n### $this_name:" >> output.md
		# print lines where $this_name appears
		# after an unquoted @ but before any #
		# and emphasis to $this_name
		sed -ne '/^[\+\-].*[^"]@[^#]*'$this_name'/p' todo.md |
		sed -e 's/'$this_name'/\*\*'$this_name'\*\*/' >> output.md
	done
	IFS=$OLDIFS

	# get all unassigned tasks
	echo -e "\n### unassigned:" >> output.md
	# print lines that do not contain an unquoted @
	sed -ne '/[^"]@/!p' todo.md | sed -ne '/^[\+\-] .*/p' >> output.md

# print by-project
echo -e "\n---\nby project\n---" >> output.md
	# loop through list of unique $projects
	OLDIFS=$IFS
	IFS=';'
	for this_project in $projects; do
		# print project name
		echo -e "\n### $this_project:" >> output.md
		# print lines where $this_project appears after an unquoted #
		sed -ne '/^[\+\-].*[^"]#[^@]*'$this_project'/p' todo.md  |
		sed -e 's/'$this_project'/\*\*'$this_project'\*\*/' >> output.md
	done
	IFS=$OLDIFS

	# get all unassociated tasks
	echo -e "\n### unassociated:" >> output.md
	# print lines that do not contain an unquoted #
	sed -ne '/[^"]#/!p' todo.md | sed -ne '/^[\+\-] .*/p' >> output.md

# print all tasks
echo -e "\n---\nall tasks\n---" >> output.md
	# loop through list of unique $tasks
	OLDIFS=$IFS
	IFS=';'
	for this_task in $tasks; do
		# print task - escaped version
		echo -e "\n### $this_task" >> output.md
		# print lines starting with - or + and contains $this_task
		sed -ne '/^[\+\-]\s*'"$this_task"'.*/p' todo.md >> output.md
	done
	IFS=$OLDIFS

# markdown
markdown output.md > output.html

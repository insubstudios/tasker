TO DO:
---


## by name:


###  names

- task ; @ names ; # project_1, project_2
+ cycle through file, build arrays for unique tasks, names, projects; @zb; #first_stage

###  lucy


###  benson

- insert nxt_ling into output_file-PREVIOUS; @lucy, benson; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @zb, benson # second_stage

###  mlk


###  zb

- insert nxt_ling into output_file-PREVIOUS; @mlk, zb ; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @malcolm x, zb ; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @harriet t., zb ; # second_stage, project_1
- output_file >> output_file-TIMESTAMP; @ zb; # second_stage;

###  malcolm x


###  harriet t.


## by project:


###  project_1

- task ; @ names ; # project_1, project_2
- insert nxt_ling into output_file-PREVIOUS; @lucy, benson; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @mlk, zb ; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @malcolm x, zb ; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @harriet t., zb ; # second_stage, project_1

###  project_2

- task ; @ names ; # project_1, project_2

###  second_stage

- insert nxt_ling into output_file-PREVIOUS; @lucy, benson; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @mlk, zb ; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @malcolm x, zb ; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @harriet t., zb ; # second_stage, project_1
- output_file >> output_file-TIMESTAMP; @ zb; # second_stage;
- insert nxt_ling into output_file-PREVIOUS; @zb, benson # second_stage

###  first_stage


###  low priority

- add outline nav and anchor_links; @zb; #first_stage, low priority
- cp to dropbox; @zb; #first_stage, low priority

###  querry


###  l8r


## all tasks:


###  task

- task ; @ names ; # project_1, project_2
+ cycle through file, build arrays for unique tasks, names, projects; @zb; #first_stage
- print all tasks; @zb; #first_stage	  
- retire "+ tasks"
- add section header parsing to apply "#project"" to all following tasks until "\n\n" or another heading

###  i'm pretty sure this list has enough inconsistancies to push my regex skillz#project_1

+ 	  	 i'm pretty sure this list has enough inconsistancies to push my regex skillz#project_1

###  insert nxt_ling into output_file-PREVIOUS

- insert nxt_ling into output_file-PREVIOUS; @lucy, benson; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @mlk, zb ; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @malcolm x, zb ; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @harriet t., zb ; # second_stage, project_1
- insert nxt_ling into output_file-PREVIOUS; @zb, benson # second_stage

###  cycle through file, build arrays for unique tasks, names, projects

+ cycle through file, build arrays for unique tasks, names, projects; @zb; #first_stage

###  print by-name

- print by-name; @zb; #first_stage	 

###  print by-project

- print by-project; @zb; #first_stage  

###  print all tasks

- print all tasks; @zb; #first_stage	  

###  merge "@" and "#" data if diff between non-unique " -tasks"

- merge "@" and "#" data if diff between non-unique " -tasks"

###  markdown

- markdown; @zb; #first_stage

###  git commit, -m "???"

- git commit, -m "???" ; @zb; #first_stage

###  add outline nav and anchor_links

- add outline nav and anchor_links; @zb; #first_stage, low priority

###  cp to dropbox

- cp to dropbox; @zb; #first_stage, low priority

###  print order settings, functions?

- print order settings, functions?;; #querry

###  retire "+ tasks"

- retire "+ tasks"

###  output_file >> output_file-TIMESTAMP

- output_file >> output_file-TIMESTAMP; @ zb; # second_stage;

###  find prev_link, lookup previous output_file

- find prev_link, lookup previous output_file; @zb; #second_stage

###  better "@" and "#" hangling, #l8r

- better "@" and "#" hangling, #l8r

###  add link to output_file-TIMESTAMP into archive_file

- add link to output_file-TIMESTAMP into archive_file; #l8r

###  add priority, somethign like "#project_2***"


###  add seperate files for each name and project, w/ prev/actv/nxt navigation


###  accept multiple input files to allow users to edit their own .md files

- accept multiple input files to allow users to edit their own .md files; #l8r

###  add section header parsing to apply "#project"" to all following tasks until "nn" or another heading


###  add project definitions, ex: "#project_1: i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects

- add project definitions, ex: "#project_1: i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects

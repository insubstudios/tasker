TO DO:
===

---
by name
---

### name_1:
- task ; @ name_1, names ; # project_1, project_2

### names:
- task ; @ name_1, names ; # project_1, project_2

### mlk:
- i'll pretend i have to talk to "@harriet, kes" sdfasdf, @mlk, #project_2
- insert nxt_link into output_file-PREVIOUS; @mlk, zb ; # second_stage, project_1

### lucy:
- insert nxt_link into output_file-PREVIOUS; @lucy, benson; # second_stage, project_1

### benson:
- insert nxt_link into output_file-PREVIOUS; @lucy, benson; # second_stage, project_1
- insert nxt_link into"#" "#" output_file-PREVIOUS; @zb, benson # second_stage

### zb:
- insert nxt_link into output_file-PREVIOUS; @mlk, zb ; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @malcolm x, zb ; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @harriet t., zb ; # second_stage, project_1
+ cycle through file, build arrays for unique tasks, names, projects; @zb; #first_stage
+ print by-name; @zb; #first_stage	 
+ print by-project; @zb; #first_stage  
+ print all tasks; @zb; #first_stage	  
+ escape weird chars in unique lists, @zb; #fires, first_stage
+ markdown; @zb; #first_stage
- git commit, -m "???" ; @zb; #first_stage, low priority
- add outline nav and anchor_links; @zb; #first_stage, low priority
- cp to dropbox; @zb; #first_stage, low priority
- output_file >> output_file-TIMESTAMP; @ zb; # second_stage;
- find prev_link, lookup previous output_file; @zb; #second_stage
- insert nxt_link into"#" "#" output_file-PREVIOUS; @zb, benson # second_stage

### malcolm x:
- insert nxt_link into output_file-PREVIOUS; @malcolm x, zb ; # second_stage, project_1

### harriet t.:
- insert nxt_link into output_file-PREVIOUS; @harriet t., zb ; # second_stage, project_1

### unassigned:
+ 	  	 i'm pretty sure this list has enough inconsistencies to push my regex skillz#project_1
- mlk
- merge "@" and "#" data if diff between non-unique " -tasks"
- print order settings, functions?;; #querry
- retire "+ tasks"
- better "@" and "#;" handlink, #l8r
- add link to output_file-TIMESTAMP into archive_file; #l8r
- add priority, something like "#project_2***" [but triple asterisk doesn't survive markdown]
- add separate files for each name and project, w/ prev|actv|nxt navigation; #l8r
- accept multiple input files to allow users to edit their own .md files; #l8r
- add section header parsing to apply "#project"" to all following tasks until "\n\n" or another heading
- add project definitions, ex: "#project_1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects

---
by project
---

### project_1:
- task ; @ name_1, names ; # project_1, project_2
+ 	  	 i'm pretty sure this list has enough inconsistencies to push my regex skillz#project_1
- insert nxt_link into output_file-PREVIOUS; @lucy, benson; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @mlk, zb ; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @malcolm x, zb ; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @harriet t., zb ; # second_stage, project_1

### project_2:
- task ; @ name_1, names ; # project_1, project_2
- i'll pretend i have to talk to "@harriet, kes" sdfasdf, @mlk, #project_2

### second_stage:
- insert nxt_link into output_file-PREVIOUS; @lucy, benson; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @mlk, zb ; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @malcolm x, zb ; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @harriet t., zb ; # second_stage, project_1
- output_file >> output_file-TIMESTAMP; @ zb; # second_stage;
- find prev_link, lookup previous output_file; @zb; #second_stage
- insert nxt_link into"#" "#" output_file-PREVIOUS; @zb, benson # second_stage

### first_stage:
+ cycle through file, build arrays for unique tasks, names, projects; @zb; #first_stage
+ print by-name; @zb; #first_stage	 
+ print by-project; @zb; #first_stage  
+ print all tasks; @zb; #first_stage	  
+ escape weird chars in unique lists, @zb; #fires, first_stage
+ markdown; @zb; #first_stage
- git commit, -m "???" ; @zb; #first_stage, low priority
- add outline nav and anchor_links; @zb; #first_stage, low priority
- cp to dropbox; @zb; #first_stage, low priority

### fires:
+ escape weird chars in unique lists, @zb; #fires, first_stage

### low priority:
- git commit, -m "???" ; @zb; #first_stage, low priority
- add outline nav and anchor_links; @zb; #first_stage, low priority
- cp to dropbox; @zb; #first_stage, low priority

### querry:
- print order settings, functions?;; #querry

### l8r:
- better "@" and "#;" handlink, #l8r
- add link to output_file-TIMESTAMP into archive_file; #l8r
- add separate files for each name and project, w/ prev|actv|nxt navigation; #l8r
- accept multiple input files to allow users to edit their own .md files; #l8r

### unassociated:
- mlk
- merge "@" and "#" data if diff between non-unique " -tasks"
- retire "+ tasks"
- add priority, something like "#project_2***" [but triple asterisk doesn't survive markdown]
- add section header parsing to apply "#project"" to all following tasks until "\n\n" or another heading
- add project definitions, ex: "#project_1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects

---
all tasks
---

### task:
- task ; @ name_1, names ; # project_1, project_2

### i'm pretty sure this list has enough inconsistencies to push my regex skillz:
+ 	  	 i'm pretty sure this list has enough inconsistencies to push my regex skillz#project_1

### i'll pretend i have to talk to ".harriet, kes" sdfasdf,:
- i'll pretend i have to talk to "@harriet, kes" sdfasdf, @mlk, #project_2

### insert nxt_link into output_file-PREVIOUS:
- insert nxt_link into output_file-PREVIOUS; @lucy, benson; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @mlk, zb ; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @malcolm x, zb ; # second_stage, project_1
- insert nxt_link into output_file-PREVIOUS; @harriet t., zb ; # second_stage, project_1

### mlk:
- mlk

### cycle through file, build arrays for unique tasks, names, projects:
+ cycle through file, build arrays for unique tasks, names, projects; @zb; #first_stage

### print by-name:
+ print by-name; @zb; #first_stage	 

### print by-project:
+ print by-project; @zb; #first_stage  

### print all tasks:
+ print all tasks; @zb; #first_stage	  

### escape weird chars in unique lists,:
+ escape weird chars in unique lists, @zb; #fires, first_stage

### merge "." and "." data if diff between non-unique " -tasks":
- merge "@" and "#" data if diff between non-unique " -tasks"

### markdown:
+ markdown; @zb; #first_stage

### git commit, -m "???":
- git commit, -m "???" ; @zb; #first_stage, low priority

### add outline nav and anchor_links:
- add outline nav and anchor_links; @zb; #first_stage, low priority

### cp to dropbox:
- cp to dropbox; @zb; #first_stage, low priority

### print order settings, functions?:
- print order settings, functions?;; #querry

### retire "+ tasks":
- retire "+ tasks"

### output_file >> output_file-TIMESTAMP:
- output_file >> output_file-TIMESTAMP; @ zb; # second_stage;

### find prev_link, lookup previous output_file:
- find prev_link, lookup previous output_file; @zb; #second_stage

### insert nxt_link into"." ":
- insert nxt_link into"#" "#" output_file-PREVIOUS; @zb, benson # second_stage

### better "." and ".:
- better "@" and "#;" handlink, #l8r

### add link to output_file-TIMESTAMP into archive_file:
- add link to output_file-TIMESTAMP into archive_file; #l8r

### add priority, something like ".project_2..." .but triple asterisk doesn't survive markdown.:
- add priority, something like "#project_2***" [but triple asterisk doesn't survive markdown]

### add separate files for each name and project, w. prev.actv.nxt navigation:
- add separate files for each name and project, w/ prev|actv|nxt navigation; #l8r

### accept multiple input files to allow users to edit their own .md files:
- accept multiple input files to allow users to edit their own .md files; #l8r

### add section header parsing to apply ".project"" to all following tasks until ".n.n" or another heading:
- add section header parsing to apply "#project"" to all following tasks until "\n\n" or another heading

### add project definitions, ex: ".project_1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects:
- add project definitions, ex: "#project_1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects

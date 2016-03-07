TO DO:
===

---
by name
---

### name-1:
- actionable task; @**name-1**, name-2; #project-1, project-2
- actionable task @**name-1**, name-2 #project-1, project-2
- actionable task #project-1, project-2 @**name-1**, name-2
- actionable task ; #project-1, project-2 ; @**name-1**, name-2
- task ; @ **name-1**, names ; # project-1, project-2

### name-2:
- actionable task; @name-1, **name-2**; #project-1, project-2
- actionable task @name-1, **name-2** #project-1, project-2
- actionable task #project-1, project-2 @name-1, **name-2**
- actionable task ; #project-1, project-2 ; @name-1, **name-2**

### person:
- actionable task; @**person**; #project;

### zb:
+ cycle through file, build arrays for unique tasks, names, projects; @**zb**; #first-stage
+ print by-name; @**zb**; #first-stage	 
+ print by-project; @**zb**; #first-stage  
+ print all tasks; @**zb**; #first-stage	  
+ escape weird chars in unique lists, @**zb**; #fires, first-stage
+ markdown; @**zb**; #first-stage
+ bug: this task shouldn't make this show up in names task list; @**zb** #names; #fires, first-stage
- git commit, -m "???" ; @**zb**; #first-stage, low priority
- add outline nav and anchor-links; @**zb**; #first-stage, low priority
- cp to dropbox; @**zb**; #first-stage, low priority
- output-file >> output-file-TIMESTAMP; @ **zb**; # second-stage;
- find prev-link, lookup previous output-file; @**zb**; #second-stage
- insert nxt-link into"#" "#" output-file-PREVIOUS; @**zb**, benson # second-stage
- insert nxt-link into output-file-PREVIOUS; @mlk, **zb** ; # second-stage, project-1
- insert nxt-link into output-file-PREVIOUS; @malcolm x, **zb** ; # second-stage, project-1
- insert nxt-link into output-file-PREVIOUS; @harriet t., **zb** ; # second-stage, project-1

### benson:
- insert nxt-link into"#" "#" output-file-PREVIOUS; @zb, **benson** # second-stage
- insert nxt-link into output-file-PREVIOUS; @lucy, **benson**; # second-stage, project-1

### newguy:
- can we this task  #newthing,nother @**newguy**
- can we this task  #newthing,   	 nother @**newguy**

### names:
- task ; @ name-1, **names** ; # project-1, project-2

### mlk:
- i'll pretend ";" have to talk to "@harriet, kes" in quotes, @**mlk** #names, project-2
- insert nxt-link into output-file-PREVIOUS; @**mlk**, zb ; # second-stage, project-1

### lucy:
- insert nxt-link into output-file-PREVIOUS; @**lucy**, benson; # second-stage, project-1

### malcolm x:
- insert nxt-link into output-file-PREVIOUS; @**malcolm x**, zb ; # second-stage, project-1

### harriet t.:
- insert nxt-link into output-file-PREVIOUS; @**harriet t.**, zb ; # second-stage, project-1

### unassigned:
- merge "@" and "#" data if diff between non-unique " -tasks"
- print order settings, functions?;; #querry
- retire "+ tasks"
- better "@" and "#;" handling, #l8r
- add link to output-file-TIMESTAMP into archive-file; #l8r
- add priority, something like "#project-2***" [but triple asterisk doesn't survive markdown]
- add separate files for each name and project, w/ prev|actv|nxt navigation; #l8r
- accept multiple input files to allow users to edit their own .md files; #l8r
- add section header parsing to apply "#project"" to all following tasks until "\n\n" or another heading
- add project definitions, ex: "#project-1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects
+ 	  	 i'm pretty sure this list has enough inconsistencies to push my regex skillz#project-1
- mlk

---
by project
---

### project-1:
- actionable task; @name-1, name-2; #**project-1**, project-2
- actionable task @name-1, name-2 #**project-1**, project-2
- actionable task #**project-1**, project-2 @name-1, name-2
- actionable task ; #**project-1**, project-2 ; @name-1, name-2
- task ; @ name-1, names ; # **project-1**, project-2
+ 	  	 i'm pretty sure this list has enough inconsistencies to push my regex skillz#**project-1**
- insert nxt-link into output-file-PREVIOUS; @lucy, benson; # second-stage, **project-1**
- insert nxt-link into output-file-PREVIOUS; @mlk, zb ; # second-stage, **project-1**
- insert nxt-link into output-file-PREVIOUS; @malcolm x, zb ; # second-stage, **project-1**
- insert nxt-link into output-file-PREVIOUS; @harriet t., zb ; # second-stage, **project-1**

### project-2:
- actionable task; @name-1, name-2; #project-1, **project-2**
- actionable task @name-1, name-2 #project-1, **project-2**
- actionable task #project-1, **project-2** @name-1, name-2
- actionable task ; #project-1, **project-2** ; @name-1, name-2
- task ; @ name-1, names ; # project-1, **project-2**
- i'll pretend ";" have to talk to "@harriet, kes" in quotes, @mlk #names, **project-2**

### first-stage:
+ cycle through file, build arrays for unique tasks, names, projects; @zb; #**first-stage**
+ print by-name; @zb; #**first-stage**	 
+ print by-project; @zb; #**first-stage**  
+ print all tasks; @zb; #**first-stage**	  
+ escape weird chars in unique lists, @zb; #fires, **first-stage**
+ markdown; @zb; #**first-stage**
+ bug: this task shouldn't make this show up in names task list; @zb #names; #fires, **first-stage**
- git commit, -m "???" ; @zb; #**first-stage**, low priority
- add outline nav and anchor-links; @zb; #**first-stage**, low priority
- cp to dropbox; @zb; #**first-stage**, low priority

### fires:
+ escape weird chars in unique lists, @zb; #**fires**, first-stage
+ bug: this task shouldn't make this show up in names task list; @zb #names; #**fires**, first-stage

### names:
+ bug: this task shouldn't make this show up in **names** task list; @zb #names; #fires, first-stage
- i'll pretend ";" have to talk to "@harriet, kes" in quotes, @mlk #**names**, project-2

### low priority:
- git commit, -m "???" ; @zb; #first-stage, **low priority**
- add outline nav and anchor-links; @zb; #first-stage, **low priority**
- cp to dropbox; @zb; #first-stage, **low priority**

### querry:
- print order settings, functions?;; #**querry**

### second-stage:
- output-file >> output-file-TIMESTAMP; @ zb; # **second-stage**;
- find prev-link, lookup previous output-file; @zb; #**second-stage**
- insert nxt-link into"#" "#" output-file-PREVIOUS; @zb, benson # **second-stage**
- insert nxt-link into output-file-PREVIOUS; @lucy, benson; # **second-stage**, project-1
- insert nxt-link into output-file-PREVIOUS; @mlk, zb ; # **second-stage**, project-1
- insert nxt-link into output-file-PREVIOUS; @malcolm x, zb ; # **second-stage**, project-1
- insert nxt-link into output-file-PREVIOUS; @harriet t., zb ; # **second-stage**, project-1

### l8r:
- better "@" and "#;" handling, #**l8r**
- add link to output-file-TIMESTAMP into archive-file; #**l8r**
- add separate files for each name and project, w/ prev|actv|nxt navigation; #**l8r**
- accept multiple input files to allow users to edit their own .md files; #**l8r**

### newthing:
- can we this task  #**newthing**,nother @newguy
- can we this task  #**newthing**,   	 nother @newguy

### nother:
- can we this task  #newthing,**nother** @newguy
- can we this task  #newthing,   	 **nother** @newguy

### unassociated:
- merge "@" and "#" data if diff between non-unique " -tasks"
- retire "+ tasks"
- add priority, something like "#project-2***" [but triple asterisk doesn't survive markdown]
- add section header parsing to apply "#project"" to all following tasks until "\n\n" or another heading
- add project definitions, ex: "#project-1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects
- mlk

---
all tasks
---

### actionable task
- actionable task; @name-1, name-2; #project-1, project-2
- actionable task @name-1, name-2 #project-1, project-2
- actionable task #project-1, project-2 @name-1, name-2
- actionable task ; #project-1, project-2 ; @name-1, name-2
- actionable task; @person; #project;

### cycle through file, build arrays for unique tasks, names, projects
+ cycle through file, build arrays for unique tasks, names, projects; @zb; #first-stage

### print by-name
+ print by-name; @zb; #first-stage	 

### print by-project
+ print by-project; @zb; #first-stage  

### print all tasks
+ print all tasks; @zb; #first-stage	  

### escape weird chars in unique lists,
+ escape weird chars in unique lists, @zb; #fires, first-stage

### merge "." and "." data if diff between non-unique " -tasks"
- merge "@" and "#" data if diff between non-unique " -tasks"

### markdown
+ markdown; @zb; #first-stage

### bug: this task shouldn't make this show up in names task list
+ bug: this task shouldn't make this show up in names task list; @zb #names; #fires, first-stage

### git commit, -m "???"
- git commit, -m "???" ; @zb; #first-stage, low priority

### add outline nav and anchor-links
- add outline nav and anchor-links; @zb; #first-stage, low priority

### cp to dropbox
- cp to dropbox; @zb; #first-stage, low priority

### print order settings, functions?
- print order settings, functions?;; #querry

### retire "+ tasks"
- retire "+ tasks"

### output-file >> output-file-TIMESTAMP
- output-file >> output-file-TIMESTAMP; @ zb; # second-stage;

### find prev-link, lookup previous output-file
- find prev-link, lookup previous output-file; @zb; #second-stage

### insert nxt-link into"." "
- insert nxt-link into"#" "#" output-file-PREVIOUS; @zb, benson # second-stage

### better "." and ".
- better "@" and "#;" handling, #l8r

### add link to output-file-TIMESTAMP into archive-file
- add link to output-file-TIMESTAMP into archive-file; #l8r

### add priority, something like ".project-2..." .but triple asterisk doesn't survive markdown.
- add priority, something like "#project-2***" [but triple asterisk doesn't survive markdown]

### add separate files for each name and project, w. prev.actv.nxt navigation
- add separate files for each name and project, w/ prev|actv|nxt navigation; #l8r

### accept multiple input files to allow users to edit their own .md files
- accept multiple input files to allow users to edit their own .md files; #l8r

### add section header parsing to apply ".project"" to all following tasks until ".n.n" or another heading
- add section header parsing to apply "#project"" to all following tasks until "\n\n" or another heading

### add project definitions, ex: ".project-1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects
- add project definitions, ex: "#project-1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects

### can we this task
- can we this task  #newthing,nother @newguy
- can we this task  #newthing,   	 nother @newguy

### i'm pretty sure this list has enough inconsistencies to push my regex skillz
+ 	  	 i'm pretty sure this list has enough inconsistencies to push my regex skillz#project-1

### i'll pretend "." have to talk to ".harriet, kes" in quotes,
- i'll pretend ";" have to talk to "@harriet, kes" in quotes, @mlk #names, project-2

### insert nxt-link into output-file-PREVIOUS
- insert nxt-link into output-file-PREVIOUS; @lucy, benson; # second-stage, project-1
- insert nxt-link into output-file-PREVIOUS; @mlk, zb ; # second-stage, project-1
- insert nxt-link into output-file-PREVIOUS; @malcolm x, zb ; # second-stage, project-1
- insert nxt-link into output-file-PREVIOUS; @harriet t., zb ; # second-stage, project-1

### mlk
- mlk

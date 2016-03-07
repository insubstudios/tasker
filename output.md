TO DO:
===

---
by name
---

### person:
- actionable task; @**person**; #project;

### newguy:
- can we this task  #newthing,nother @**newguy**
- can we this task  #newthing,   	 nother @**newguy**

### name-1:
- task ; @ **name-1**, names ; # project-1, project-2

### names:
- task ; @ name-1, **names** ; # project-1, project-2

### mlk:
- i'll pretend ";" have to talk to "@harriet, kes" sdfasdf, @**mlk** #names, project-2
- insert nxt-link into output-file-PREVIOUS; @**mlk**, zb ; # second-stage, project-1

### lucy:
- insert nxt-link into output-file-PREVIOUS; @**lucy**, benson; # second-stage, project-1

### benson:
- insert nxt-link into output-file-PREVIOUS; @lucy, **benson**; # second-stage, project-1
- insert nxt-link into"#" "#" output-file-PREVIOUS; @zb, **benson** # second-stage

### zb:
- insert nxt-link into output-file-PREVIOUS; @mlk, **zb** ; # second-stage, project-1
- insert nxt-link into output-file-PREVIOUS; @malcolm x, **zb** ; # second-stage, project-1
- insert nxt-link into output-file-PREVIOUS; @harriet t., **zb** ; # second-stage, project-1
+ cycle through file, build arrays for unique tasks, names, projects; @**zb**; #first-stage
+ print by-name; @**zb**; #first-stage	 
+ print by-project; @**zb**; #first-stage  
+ print all tasks; @**zb**; #first-stage	  
+ escape weird chars in unique lists, @**zb**; #fires, first-stage
+ markdown; @**zb**; #first-stage
+ bug: this task shouldn't make this show up in names tasklist; @**zb** #names; #fires, first-stage
- git commit, -m "???" ; @**zb**; #first-stage, low priority
- add outline nav and anchor-links; @**zb**; #first-stage, low priority
- cp to dropbox; @**zb**; #first-stage, low priority
- output-file >> output-file-TIMESTAMP; @ **zb**; # second-stage;
- find prev-link, lookup previous output-file; @**zb**; #second-stage
- insert nxt-link into"#" "#" output-file-PREVIOUS; @**zb**, benson # second-stage

### malcolm x:
- insert nxt-link into output-file-PREVIOUS; @**malcolm x**, zb ; # second-stage, project-1

### harriet t.:
- insert nxt-link into output-file-PREVIOUS; @**harriet t.**, zb ; # second-stage, project-1

### unassigned:
+ 	  	 i'm pretty sure this list has enough inconsistencies to push my regex skillz#project-1
- mlk
- merge "@" and "#" data if diff between non-unique " -tasks"
- print order settings, functions?;; #querry
- retire "+ tasks"
- better "@" and "#;" handlink, #l8r
- add link to output-file-TIMESTAMP into archive-file; #l8r
- add priority, something like "#project-2***" [but triple asterisk doesn't survive markdown]
- add separate files for each name and project, w/ prev|actv|nxt navigation; #l8r
- accept multiple input files to allow users to edit their own .md files; #l8r
- add section header parsing to apply "#project"" to all following tasks until "\n\n" or another heading
- add project definitions, ex: "#project-1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects

---
by project
---

### project:
- actionable task; @person; #**project**;
- task ; @ name-1, names ; # **project**-1, project-2
+ 	  	 i'm pretty sure this list has enough inconsistencies to push my regex skillz#**project**-1
- i'll pretend ";" have to talk to "@harriet, kes" sdfasdf, @mlk #names, **project**-2
- insert nxt-link into output-file-PREVIOUS; @lucy, benson; # second-stage, **project**-1
- insert nxt-link into output-file-PREVIOUS; @mlk, zb ; # second-stage, **project**-1
- insert nxt-link into output-file-PREVIOUS; @malcolm x, zb ; # second-stage, **project**-1
- insert nxt-link into output-file-PREVIOUS; @harriet t., zb ; # second-stage, **project**-1

### newthing:
- can we this task  #**newthing**,nother @newguy
- can we this task  #**newthing**,   	 nother @newguy

### nother:
- can we this task  #newthing,**nother** @newguy
- can we this task  #newthing,   	 **nother** @newguy

### project-1:
- task ; @ name-1, names ; # **project-1**, project-2
+ 	  	 i'm pretty sure this list has enough inconsistencies to push my regex skillz#**project-1**
- insert nxt-link into output-file-PREVIOUS; @lucy, benson; # second-stage, **project-1**
- insert nxt-link into output-file-PREVIOUS; @mlk, zb ; # second-stage, **project-1**
- insert nxt-link into output-file-PREVIOUS; @malcolm x, zb ; # second-stage, **project-1**
- insert nxt-link into output-file-PREVIOUS; @harriet t., zb ; # second-stage, **project-1**

### project-2:
- task ; @ name-1, names ; # project-1, **project-2**
- i'll pretend ";" have to talk to "@harriet, kes" sdfasdf, @mlk #names, **project-2**

### names:
- i'll pretend ";" have to talk to "@harriet, kes" sdfasdf, @mlk #**names**, project-2
+ bug: this task shouldn't make this show up in **names** tasklist; @zb #names; #fires, first-stage

### second-stage:
- insert nxt-link into output-file-PREVIOUS; @lucy, benson; # **second-stage**, project-1
- insert nxt-link into output-file-PREVIOUS; @mlk, zb ; # **second-stage**, project-1
- insert nxt-link into output-file-PREVIOUS; @malcolm x, zb ; # **second-stage**, project-1
- insert nxt-link into output-file-PREVIOUS; @harriet t., zb ; # **second-stage**, project-1
### **second-stage** & beyond...
- output-file >> output-file-TIMESTAMP; @ zb; # **second-stage**;
- find prev-link, lookup previous output-file; @zb; #**second-stage**
- insert nxt-link into"#" "#" output-file-PREVIOUS; @zb, benson # **second-stage**

### first-stage:
### **first-stage**
+ cycle through file, build arrays for unique tasks, names, projects; @zb; #**first-stage**
+ print by-name; @zb; #**first-stage**	 
+ print by-project; @zb; #**first-stage**  
+ print all tasks; @zb; #**first-stage**	  
+ escape weird chars in unique lists, @zb; #fires, **first-stage**
+ markdown; @zb; #**first-stage**
+ bug: this task shouldn't make this show up in names tasklist; @zb #names; #fires, **first-stage**
- git commit, -m "???" ; @zb; #**first-stage**, low priority
- add outline nav and anchor-links; @zb; #**first-stage**, low priority
- cp to dropbox; @zb; #**first-stage**, low priority

### fires:
+ escape weird chars in unique lists, @zb; #**fires**, first-stage
+ bug: this task shouldn't make this show up in names tasklist; @zb #names; #**fires**, first-stage

### low priority:
- git commit, -m "???" ; @zb; #first-stage, **low priority**
- add outline nav and anchor-links; @zb; #first-stage, **low priority**
- cp to dropbox; @zb; #first-stage, **low priority**

### querry:
- print order settings, functions?;; #**querry**

### l8r:
- better "@" and "#;" handlink, #**l8r**
- add link to output-file-TIMESTAMP into archive-file; #**l8r**
- add separate files for each name and project, w/ prev|actv|nxt navigation; #**l8r**
- accept multiple input files to allow users to edit their own .md files; #**l8r**

### unassociated:
- mlk
- merge "@" and "#" data if diff between non-unique " -tasks"
- retire "+ tasks"
- add priority, something like "#project-2***" [but triple asterisk doesn't survive markdown]
- add section header parsing to apply "#project"" to all following tasks until "\n\n" or another heading
- add project definitions, ex: "#project-1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects

---
all tasks
---

### actionable task:
- actionable task; @person; #project;

### can we this task:
- can we this task  #newthing,nother @newguy
- can we this task  #newthing,   	 nother @newguy

### i'm pretty sure this list has enough inconsistencies to push my regex skillz:
+ 	  	 i'm pretty sure this list has enough inconsistencies to push my regex skillz#project-1

### i'll pretend "." have to talk to ".harriet, kes" sdfasdf,:
- i'll pretend ";" have to talk to "@harriet, kes" sdfasdf, @mlk #names, project-2

### insert nxt-link into output-file-PREVIOUS:
- insert nxt-link into output-file-PREVIOUS; @lucy, benson; # second-stage, project-1
- insert nxt-link into output-file-PREVIOUS; @mlk, zb ; # second-stage, project-1
- insert nxt-link into output-file-PREVIOUS; @malcolm x, zb ; # second-stage, project-1
- insert nxt-link into output-file-PREVIOUS; @harriet t., zb ; # second-stage, project-1

### mlk:
- mlk

### cycle through file, build arrays for unique tasks, names, projects:
+ cycle through file, build arrays for unique tasks, names, projects; @zb; #first-stage

### print by-name:
+ print by-name; @zb; #first-stage	 

### print by-project:
+ print by-project; @zb; #first-stage  

### print all tasks:
+ print all tasks; @zb; #first-stage	  

### escape weird chars in unique lists,:
+ escape weird chars in unique lists, @zb; #fires, first-stage

### merge "." and "." data if diff between non-unique " -tasks":
- merge "@" and "#" data if diff between non-unique " -tasks"

### markdown:
+ markdown; @zb; #first-stage

### bug: this task shouldn't make this show up in names tasklist:
+ bug: this task shouldn't make this show up in names tasklist; @zb #names; #fires, first-stage

### git commit, -m "???":
- git commit, -m "???" ; @zb; #first-stage, low priority

### add outline nav and anchor-links:
- add outline nav and anchor-links; @zb; #first-stage, low priority

### cp to dropbox:
- cp to dropbox; @zb; #first-stage, low priority

### print order settings, functions?:
- print order settings, functions?;; #querry

### retire "+ tasks":
- retire "+ tasks"

### output-file >> output-file-TIMESTAMP:
- output-file >> output-file-TIMESTAMP; @ zb; # second-stage;

### find prev-link, lookup previous output-file:
- find prev-link, lookup previous output-file; @zb; #second-stage

### insert nxt-link into"." ":
- insert nxt-link into"#" "#" output-file-PREVIOUS; @zb, benson # second-stage

### better "." and ".:
- better "@" and "#;" handlink, #l8r

### add link to output-file-TIMESTAMP into archive-file:
- add link to output-file-TIMESTAMP into archive-file; #l8r

### add priority, something like ".project-2..." .but triple asterisk doesn't survive markdown.:
- add priority, something like "#project-2***" [but triple asterisk doesn't survive markdown]

### add separate files for each name and project, w. prev.actv.nxt navigation:
- add separate files for each name and project, w/ prev|actv|nxt navigation; #l8r

### accept multiple input files to allow users to edit their own .md files:
- accept multiple input files to allow users to edit their own .md files; #l8r

### add section header parsing to apply ".project"" to all following tasks until ".n.n" or another heading:
- add section header parsing to apply "#project"" to all following tasks until "\n\n" or another heading

### add project definitions, ex: ".project-1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects:
- add project definitions, ex: "#project-1"": i'm just fucking with you, don't do these things. they're just to test the parser." and display as a paragraph under the project heading in by-projects

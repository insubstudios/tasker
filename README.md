tasker
===

**early development**

[tasker.sh](https://github.com/insubstudios/tasker/blob/master/tasker.sh) is a simple, forgiving script that sorts a todo.md into lists for each team member and each project. currently, it dumps to a output [md](https://github.com/insubstudios/tasker/blob/master/output.html) and [html](https://github.com/insubstudios/tasker/blob/master/output.html)* file.

use notes:

- start a line with a minus (-) or a plus (+) to mark it as a task
- tasks marked - are undone (minus points), while + are finished (winning!)**
- assign tasks to people using the at-sign (@)
- add tasks to projects with a hashtag (#)
- chunks end when @, #, or ; appear, or at the end of line
- "@", "#", and ";" not used to mark assignments, projects, and breaks must be quoted
- the task chunk must come first
- assignment and project chunks can be in either order
- comma separate for multiple assignments or project associations
- commas in task chunks don't effect anything
- lines not beginning with - or + ignored (so go ahead and add some formatting to your [todo.md](https://github.com/insubstudios/tasker/blob/master/todo.md))

todo.md format:

`- actionable task; @name_1, name_2; #project_1, project_2`

`- actionable task @name_1, name_2 #project_1, project_2`

`- actionable task #project_1, project_2 @name_1, name_2`

`- actionable task ; #project_1, project_2 ; @name_1, name_2`

partial lines are okay:

`- one-off actionable task @name_1, name_2`

`- actionable task that is unassigned #project_1, project_2`

`- one-off actionable task that is unassigned`

---

*output.html is a direct product of `markdown output.md > output.html` right now, not a full webpage.
**points: the plan is to have the script sort out and archive the completed tasks. see #second-stage and #l8r for more future features.

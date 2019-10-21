#!/bin/bash


HEADER="""# hse_python_course_ha \n

Solutions to HSE CS Python course Home Assignments \n

"""

for filename in ./HA*/*.ipynb; do
	file=${filename##*/}
	file=${file%%\.*}

	NEW_PART="1. [$file (nbviewer)](https://nbviewer.jupyter.org/github/glebkrapivin/hse_python_course_ha/blob/master/$filename) \n"
	HEADER="$HEADER $NEW_PART"

done

echo -e $HEADER > README.md


git add . 
git commit -m 'New update'
git push 
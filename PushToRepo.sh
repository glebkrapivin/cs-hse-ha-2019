#!/bin/bash


HEADER="""# hse_python_course_ha \n

Solutions to HSE CS Python course Home Assignments \n

## Commits \n
In order to push the changes to the repository and generate README file with links (from .ipynb files) to nbviewer run \n
bash PushToRepo.sh \n

## Links \n
"""

for filename in ./HA*/*.ipynb; do
	file=${filename##*/}
	file=${file%%\.*}
	LAST_UPDATE=date -r filename "+%m-%d-%Y %H:%M:%S"

	NEW_PART="* [$file (nbviewer)](https://nbviewer.jupyter.org/github/glebkrapivin/hse_python_course_ha/blob/master/$filename). Last Update - $LAST_UPDATE \n"
	HEADER="$HEADER $NEW_PART"

done

echo -e $HEADER > README.md


git add . 
git commit -m 'New update'
git push 
# Ministry Web Application Notes

## Main Tasks

- - - 

1) Add Search Feature to:

	1. Projects
		* by Name 
		* by Client
		* by Designer
		* by Contractor
		* by Location

	2. Project Documents
		* by number
		* by subject name

	3. Employees
		* by name
		* by folder number
		* by civil id
		
2) Add Sort + Filter Feature to:

	1. Projects (ascending + descending)
		* by size
		* by date 
		* by oldest
		* by budget 
		* by type?
		
	2. Project Documents
		* by month range
		* by number
		* by subject name
		
	3. Employees
		* by level
		* by Gender
		* by Nationality
		

3) Add employees index section (only for admin access):

	*add search, sort and filter to employee index



#### Project Documents


- - -

- [ ] ~~Make text input bilingual (arabic and english)~~
- [x] Change Data type for **:subject** to  text_area
- [x] Make width for subject column fixed
	- [x] Specify **max-width**
- [x] Add icons for download **Edit, Download, and Delete**
- [x] Remove the actions column and view / Download Column
- [x] Make the subject column apear first and on the right (for arabic formatting)
- [ ] Make sure only **users who upload** the files and **admin** can delete and edit the input
- [x] Add a column for (upload date) and (upload by)
- [ ] Make inputs appear in **descending** order according to **:date_issued**
- [ ] Changing input method for dates to make a calender appear
- [ ] When icons are highlighted, make a popup appear explaining what it does
- [ ] Add ability to search and filter the desired documents
- [ ] Seperate the inputs into two categories: **current year, archive**
	- [ ] when in archive page, add tabs for each year
- [ ] Add a location field for **Exterior Reports** 
	- [ ] Make it so their is a select box with the most common selections
	- [ ] Incase the location is not listed, add a **other** option which renders a blank text feild 
	- [ ] add an option to filter the exterior reports according to where they are from


**Optional features:**

- [ ] Allow a preview of the document to appear in the same page with a preview icon


#### Monthly Report (project docs)

## Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rational:text
- x User -> Devise
- x AdminUser -> STI

## Features:
- Approval Workflow
- SMS sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- x Bootstrap -> formatting
- Icons from Font Awesome
- x Update the styles for forms

## TODOS:
- Integrate validation for phone attr in User
	- # No spaces or dashes
  	# Exactaly 10 charactures
  	# All characters have to be a number
  	# number: "555-555-5555"  BAD
  	# number: "5555555555" GOOD 


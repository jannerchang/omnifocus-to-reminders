(*
OmniFocus2Reminders - Batch
Created by: Sean Korzdorfer

## Overview

Send all tasks found for the contexts listed in the property contextList to Reminders.app

## Use Case

I like to keep my errand tasks in OmniFocus, but I also want the convenience of shared family shopping lists
via Reminders.

## Notes

You can configure the script to:

- Send OmniFocus tasks to multiple Reminders lists or a single list
- Complete OmniFocus task after sent to the Reminders app. (cleanUp:"complete")
- Keep OmniFocus task active and note it with date/time sent to Reminders (cleanUp:"link")

NB: The default cleanUp is link. Note you can use this script with OF2Reminders-Sync to complete the tasks in 
 OmniFocus once they have been completed in Reminders. 
 
 You can run the script in the background by either creating a launchd item or by using Keyboard Maestro

Requirements:

- In order to send tasks to multiple Reminders lists, the Reminders app list name MUST MATCH the OmniFocus context name.
- To use OF2Reminders-sync script, the notes added to both the OmniFocus and Reminders tasks MUST exist.
################################ Note Task ################################ 

Input: OmniFocus Task 
Output: Nothing

Modifies the OmniFocus Task object's note field to 

	OF2Reminder: <date>

*)
################################ Prepare Task ################################ 

Input: a list of properties regarding an OmniFocus task object
Output: Creates a Reminder task

*)
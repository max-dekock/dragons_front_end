-- These are some Database Manipulation queries for my project website

-------------------------- SIZES PAGE --------------------------
-- get all Sizes data to populate the Sizes page
SELECT * FROM Sizes
Analysts Page:
-- get all Analyst data to populate the Analysts page
SELECT* FROM Analysts
-- add a new Analyst
INSERT INTO Analysts (first_name, last_name, email) VALUES
(:fnameInput, :lnameInput, :emailinput)
-- get a single analyst’s data for the Update Analyst form
SELECT id, first_name, last_name, email FROM Analysts WHERE
id = :analyst_ID_selected_from_browse_analyst_page
-- update an analysts data based on submission of the Update Analyst form
UPDATE Analyst SET first_name = :fnameInput, last_name = :lnameInput, email= :emailinput WHERE id= :analyst_ID_from_the_update_form
-- delete an analyst
DELETE FROM Analysts WHERE id = :analyst_ID_selected_from_browse_character_page

-------------------------- VOLUNTEER'S PAGE --------------------------
-- get all Volunteers data to populate the Volunteers page
SELECT * FROM Volunteers
-- add a new Volunteer
INSERT INTO Volunteers (first_name, last_name, email) VALUES
(:fnameInput, :lnameInput, :emailinput)
-- get a single volunteer’s data for the Update Volunteer form
SELECT id, first_name, last_name, email FROM Analysts WHERE
id = :analyst_ID_selected_from_browse_analyst_page
-- update a volunteers data based on submission of the Update Volunteers form
UPDATE Volunteers SET first_name = :fnameInput, last_name = :lnameInput, email= :emailinput WHERE id= :voluteer_ID_from_the_update_form
-- delete a volunteer
DELETE FROM Volunteers WHERE id = :volunteer_ID_selected_from_browse_volunteer_page

-------------------------- DRAGONS PAGE --------------------------
-- get all Dragons data to populate the Dragons page
SELECT * FROM Dragons
-- add a new Dragon
INSERT INTO Dragons (nickname, sex, color, length, wingspan, hatch_year, identifying_marks) VALUES
(:nicknameInput, :sexInput, :colorInput, :lengthInput, :wingspanInput, :hatch_yearInput, :identifying_marksInput)
-- get a single volunteer’s data for the Update Volunteer form
SELECT nickname, sex, color, length, wingspan, hatch_year, identifying_marks FROM Dragons WHERE
id = :dragon_ID_selected_from_browse_dragon_page
-- update a Dragons data based on submission of the Update Dragons form
UPDATE Volunteers SET nickname = :nicknameInput, sex = :sexInput, color = :colorInput, length = :lengthInput, wingspan = :wingspanInput, indentifying_marks = :indentifying_marksInput
WHERE id= :dragon_ID_from_the_update_form
-- delete a dragon
DELETE FROM Dragons WHERE id = :dragon_ID_selected_from_browse_dragon_page

-------------------------- OBSERVATIONS PAGE --------------------------
-- get all Observations data to populate the Observations page
SELECT * FROM Observations
-- add a new Observation
INSERT INTO OBSERVATIONS (volunteer_id, observation_time, location) VALUES
(:volunteer_idInput, :observation_timeInput, :locationInput)
-- get a single observations data for the Update Observation form
SELECT volunteer_id, observation_time, location FROM Observations WHERE
id = :observation_ID_selected_from_browse_observation_page
-- get all volunteer IDs to populate the volunteer_id dropdown
SELECT volunteer_id, name FROM Volunteers
-- update an Observations data based on submission of the Update Observations form
UPDATE Observations SET volunteer_id = :volunteer_idInput, observation_time = :observation_timeInput, location = :locationInput
WHERE id= :observation_ID_from_the_update_form
-- delete an observation
DELETE FROM Observation WHERE id = :observation_ID_selected_from_browse_observation_page

-------------------------- OBSERVATION_DESCRIPTIONS PAGE --------------------------
-- get all Observation_Desc data to populate the Observation_Descriptions page
SELECT * FROM Observation_Descriptions
-- add a new Observation_Description
INSERT INTO Observation_Descriptions (observation_id, color, size_id, additional_notes) VALUES
(:observation_idInput, :colorInput, :size_idInput, :additional_notesInput)
-- get a single observation_decription data for the Update Observation_Description form
SELECT vobservation_id, color, size_id, additional_notes FROM Observation_Descriptions WHERE
id = :observation_desc_ID_selected_from_browse_observation_desc_page
-- get all observation IDs to populate the observation_id dropdown
SELECT observation_id, name FROM Observations
-- get all size IDs to populate the size_id dropdown
SELECT size_id, name FROM Sizes
-- update an Observation_description data based on submission of the Update Observation_description form
UPDATE Observations SET observation_id = :observation_id, color = :color, size_id = :size_id, additional_notes = :additional_notes
WHERE id= :observation_desc_ID_from_the_update_form
-- delete an observation_Desc
DELETE FROM Observation_Descriptions WHERE id = :observation_desc_ID_selected_from_browse_observation_desc_page

------------------------- CONFIRMED SIGHTING PAGE --------------------------
-- get all CONFIRMED SIGHTING data to populate the CONFIRMED SIGHTING page
SELECT * FROM Confirmed_Sightings
-- add a new CONFIRMED SIGHTING
INSERT INTO Confirmed_Sightings (observation_id, analyst_id) VALUES
(:observation_idInput, :analyst_idInput)
-- get a single CONFIRMED SIGHTING data for the Update CONFIRMED SIGHTING form
SELECT observation_id, analyst_id FROM Confirmed_Sightings WHERE
id = :confirmed_sighting_ID_selected_from_browse_confirmed_sighting_page
-- get all observation IDs to populate the observation_id dropdown
SELECT observation_id, name FROM Observations
-- get all analyst IDs to populate the analyst_id dropdown
SELECT analyst_id, name FROM Analysts
-- update a CONFIRMED SIGHTING data based on submission of the Update CONFIRMED SIGHTING form
UPDATE Confirmed_Sightings SET observation_id = :observation_id, analyst_id = :analyst_id
WHERE id= :confirmed_sighting_ID_from_the_update_form
-- delete a CONFIRMED SIGHTING
DELETE FROM Confirmed_Sightings WHERE id = :confirmed_sightings_ID_selected_from_browse_confirmed_sightings_page

------------------------- DRAGON CONFIRMED SIGHTING PAGE --------------------------
-- get all DRAGON CONFIRMED SIGHTING data to populate the DRAGON CONFIRMED SIGHTING page
SELECT * FROM Dragon_Confirmed_Sightings
-- add a new DRAGON CONFIRMED SIGHTING
INSERT INTO Dragon_Confirmed_Sightings (dragon_id, confirmed_sightings_id) VALUES
(:dragon_idInput, :confirmed_sightings_idInput)
-- get a single DRAGON CONFIRMED SIGHTING data for the Update DRAGON CONFIRMED SIGHTING form
SELECT dragon_id, confirmed_sightings_id FROM Dragon_Confirmed_Sightings WHERE
id = :dragon_confirmed_sighting_ID_selected_from_browse_dragon_confirmed_sighting_page
-- get all dragon IDs to populate the dragon_id dropdown
SELECT dragon_id, name FROM Dragons
-- get all analyst IDs to populate the analyst_id dropdown
SELECT confirmed_sightings_id, name FROM Confirmed_Sightings
-- update a DRAGON CONFIRMED SIGHTING data based on submission of the Update DRAGON CONFIRMED SIGHTING form
UPDATE Dragon_Confirmed_Sightings SET dragon_id = :dragon_id, confirmed_sightings_id = :confirmed_sightings_id
WHERE id= :dragon_confirmed_sighting_ID_from_the_update_form
-- delete a DRAGON CONFIRMED SIGHTING
DELETE FROM Dragon_Confirmed_Sightings WHERE id = :dragon_confirmed_sightings_ID_selected_from_browse_dragon_confirmed_sightings_page

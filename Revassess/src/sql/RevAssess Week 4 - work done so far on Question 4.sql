select * from app_user;
select * from user_role;

select * from app_user where role_id = 3;

insert into app_user  values (12345, 'david357', 'pass','David','Richardson',4);

select * from app_user;

delete from app_user where user_id = 110;

select * from app_user inner join study_set on study_set.owner_id=app_user.user_id where user_id=5;

select * from study_set;
/*
Write a query that will obtain the owner’s username, 
as well as the category name, questions, and answers of 
flashcard contained within the study set where the owner's id is 4.
Value: 40 points
*/

/* Getting the user */
select * from app_user where user_id=4;

/* just the username */
select username from app_user where user_id=4;

/* find the app users study set */
select * from app_user inner join study_set on study_set.owner_id=app_user.user_id where user_id=4;
select study_set_id from study_set inner join app_user on study_set.owner_id=app_user.user_id where user_id=4;

/* find the list of flash cards in study set 1 */
select * from study_set_card where study_set_id in (1,2);
select flashcard_id from study_set_card where study_set_id in (1,2);

/* find the questions and answers of these flashcards) */
select question, answer from flashcard where flashcard_id in (1,2,3);

/* add category */
select flashcard.question, flashcard.answer, category.name 
from flashcard 
inner join category on category.category_id = flashcard.category_id
where flashcard_id in (1,2,3);

select flashcard.question, flashcard.answer, category.name 
from flashcard 
inner join category on category.category_id = flashcard.category_id
where flashcard_id in (
                    select flashcard_id from study_set_card where study_set_id in (1,2)
                    );

select flashcard.question, flashcard.answer, category.name 
from flashcard 
inner join category on category.category_id = flashcard.category_id
where flashcard_id in (
                    select flashcard_id from study_set_card where study_set_id in (
                                                                                    select study_set_id from study_set inner join app_user on study_set.owner_id=app_user.user_id where user_id=4
                                                                                    )
                    );
                    
                    
                    
                    
select * 
from flashcard 
inner join category on category.category_id = flashcard.category_id
where flashcard_id in (
                    select flashcard_id from study_set_card where study_set_id in (
                                                                                    select study_set_id from study_set inner join app_user on study_set.owner_id=app_user.user_id where user_id=4
                                                                                    )
                    );
select flashcard.question, flashcard.answer, category.name 
from flashcard 
inner join category on category.category_id = flashcard.category_id
where flashcard_id in (
                    select flashcard_id from study_set_card where study_set_id in (
                                                                                    select study_set_id from study_set inner join app_user on study_set.owner_id=app_user.user_id where user_id=4
                                                                                    )
                    );
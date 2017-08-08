#!/bin/bash

USER=root
PWD=root
DATABASE=zeeguu_live

CMD="mysql -u $USER -p$PWD $DATABASE"

# remove the foreign key to allow deleting later
echo "ALTER TABLE bookmark_exercise_mapping DROP FOREIGN KEY bookmark_exercise_mapping_ibfk_1" | $CMD

echo "DELETE FROM exercise WHERE solving_speed < 0 OR time < '2017-05-02'" | $CMD

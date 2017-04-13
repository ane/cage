DROP TABLE IF EXISTS workouts;

CREATE TABLE workouts(
       id integer primary key,
       name text,
       date datetime
);

DROP TABLE IF EXISTS exercises;

CREATE TABLE exercises(
       id integer primary key,
       name text,
       type text
);

DROP TABLE IF EXISTS workout_exercises;

CREATE TABLE workout_exercises(
       id integer primary key,
       exercise_id integer,
       workout_id integer,
       FOREIGN KEY(workout_id) REFERENCES workouts(id)
       FOREIGN KEY(exercise_id) REFERENCES excercise(id)
);

DROP TABLE IF EXISTS workout_set;

CREATE TABLE workout_set(
       id integer primary key,
       reps integer,
       weight integer,
       modifier integer,
       workout_exercise_id integer,
       FOREIGN KEY(workout_exercise_id) REFERENCES workout_exercises(id)
);

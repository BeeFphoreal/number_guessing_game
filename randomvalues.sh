SUBTASKS 1.1
    ✔ :1 You should create a "number_guessing_game" folder in the correct location
    ✔ :2 You should create "number_guess.sh" and give it executable permissions
    ✔ :3 Your "number_guess.sh" file should have the correct shebang at the top
    ✔ :4 You should turn the "number_guessing_game" in a git repository
    ✔ :5 Your repository should have at least five commits
    ✔ :6 Your script should generate a random number to guess
    ✔ :7 Your script should prompt for a username (162ms)
Game Finished Output: Enter your username:
user_1727691924769
Welcome back, user_1727691924769! You have played 1 games, and your best game took 522 guesses.
Guess the secret number between 1 and 1000:
It's higher than that, guess again:
Guess the secret number between 1 and 1000:
It's higher than that, guess again:
Guess the secret number between 1 and 1000:
It's higher than that, guess again:
Guess the secret number between 1 and 1000:
It's higher than that, guess again:
Guess the secret number between 1 and 1000:
It's higher than that, guess again:
Guess the secret number between 1 and 1000:
It's higher than that, guess again:
Guess the secret number between 1 and 1000:
It's higher than that, guess again:
Guess the secret number between 1 and 1000:
It's higher than that, guess again:
Guess the secret number between 1 and 1000:
You guessed it in 926 tries. The secret number was 925. Nice job!

user_id where user_name = 'user_1727691924769';
 game_id | user_id | guess | user_id |     user_name      
---------+---------+-------+---------+--------------------
     806 |     237 |   522 |     237 | user_1727691924769
     807 |     237 |   926 |     237 | user_1727691924769
     810 |     237 |   816 |     237 | user_1727691924769
     811 |     237 |    87 |     237 | user_1727691924769
     812 |     237 |   959 |     237 | user_1727691924769
(5 rows)

# I dont know where temp values where in the array but whatever they where im guessing they where completely random hence this number    v
Game Finished Regex Pattern: Welcome\s+back,\s+user_1727691924769!\s+You\s+have\s+played\s+1\s+games?,\s+and\s+your\s+best\s+game\s+took\s+865\s+guess(es)?\.
    1) :8 Your script should print the correct welcome message for returning users
    ✔ :9 Your script should print the correct welcome message for new users (284ms)
    ✔ :10 Your script should print the correct initial message to prompt a user for a guess (194ms)
    ✔ :11 Your script should print the correct messages if they do not guess the correct number (280ms)
    ✔ :12 Your script should print the correct message if users enter a guess other than a number (138ms)


Game Finished Regex Pattern: You\s+guessed\s+it\s+in\s+1869\s+tries\.\s+The\s+secret\s+number\s+was\s+1868.\s+Nice\s+job!
    2) :13 Your script should print the correct message when a game is finished
    ✔ :14 Your first commit should have the message, "Initial commit"
    ✔ :15 Your commit messages should have the suggested prefixes
    3) :16 You should submit your project while on the "main" branch of your repository with a clean working tree


  13 passing (2s)
  3 failing

  1) SUBTASKS 1.1
       :8 Your script should print the correct welcome message for returning users:

      AssertionError [ERR_ASSERTION]: The expression evaluated to a falsy value:

  assert(re.test(scriptOutput))

      + expected - actual

      -false
      +true
      
      at Context.<anonymous> (/workspace/project/.freeCodeCamp/test/1.1.test.js:101:5)
      at process.processTicksAndRejections (node:internal/process/task_queues:95:5)

  2) SUBTASKS 1.1
       :13 Your script should print the correct message when a game is finished:

      AssertionError [ERR_ASSERTION]: The expression evaluated to a falsy value:

  assert(re.test(scriptOutput))

      + expected - actual

      -false
      +true
      
      at Context.<anonymous> (/workspace/project/.freeCodeCamp/test/1.1.test.js:141:5)
      at process.processTicksAndRejections (node:internal/process/task_queues:95:5)

  3) SUBTASKS 1.1
       :16 You should submit your project while on the "main" branch of your repository with a clean working tree:

      AssertionError [ERR_ASSERTION]: The expression evaluated to a falsy value:

  assert(/On branch main\s/.test(commandOutput) && /working tree clean/.test(commandOutput))

      + expected - actual

      -false
      +true
      
      at Context.<anonymous> (/workspace/project/.freeCodeCamp/test/1.1.test.js:174:5)
      at process.processTicksAndRejections (node:internal/process/task_queues:95:5)






user_id where user_name = 'user_1727691924769';
 game_id | user_id | guess | user_id |     user_name      
---------+---------+-------+---------+--------------------
     806 |     237 |   522 |     237 | user_1727691924769
     807 |     237 |   926 |     237 | user_1727691924769
     810 |     237 |   816 |     237 | user_1727691924769
     811 |     237 |    87 |     237 | user_1727691924769
     812 |     237 |   959 |     237 | user_1727691924769
(5 rows)
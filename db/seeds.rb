# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  { email: "abc@email.com" },
  { email: "123@email.com" },
  { email: "777@email.com" }
  ])

surveys = Survey.create([
  { name: "How can we improve?"},
  { name: "Cat facts"}
  ])

questions = Question.create([
  { label: "How many printers do you have at home?", survey_id: 1, position: 1 },
  { label: "How often do you print?", survey_id: 1, position: 2 },
  { label: "Are you able to print from your mobile device now?", survey_id: 1, position: 3 },
  { label: "What kind of documents do you print?", survey_id: 1, position: 4 },

  { label: "Which famous cat loves lasagna?", survey_id: 2, position: 1 },
  { label: "What is the real name of 'Grumpy Cat'?", survey_id: 2, position: 2 },
  { label: "Who was Heathcliff's nemesis?", survey_id: 2, position: 3 },
  ])

responses = QuestionResponse.create([
  { user_id: 1, question_id: 1, response: "0" },
  { user_id: 1, question_id: 2, response: "a few times a year" },
  { user_id: 1, question_id: 3, response: "don't think so no" },
  { user_id: 1, question_id: 4, response: "legal documents" },

  { user_id: 2, question_id: 1, response: "2" },
  { user_id: 2, question_id: 2, response: "every day!" },
  { user_id: 2, question_id: 3, response: "i wish i could" },
  { user_id: 2, question_id: 4, response: "client specs" },

  { user_id: 3, question_id: 1, response: "1" },
  { user_id: 3, question_id: 2, response: "several times per week" },
  { user_id: 3, question_id: 3, response: "yes but it's a hack, want something easier" },
  { user_id: 3, question_id: 4, response: "flyers" },

  { user_id: 1, question_id: 5, response: "garfield" },
  { user_id: 1, question_id: 6, response: "tardar sauce" },
  { user_id: 1, question_id: 7, response: "spike the dog" },

  { user_id: 2, question_id: 5, response: "garfield of course!" },
  { user_id: 2, question_id: 6, response: "oh man i love grumpy cat but no clue" },
  { user_id: 2, question_id: 7, response: "who is heathcliff?" }
  ])

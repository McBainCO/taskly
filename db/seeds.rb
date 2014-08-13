User.destroy_all
TaskList.destroy_all

User.create!(
  name: "Some User",
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

TaskList.create!(name: "Work List")
TaskList.create!(name: "Household Chores")

Task.create!(task: "Walk the dog", time: Date.today, task_list_id: 2)
Task.create!(task: "Read the internets", time: Date.today, task_list_id: 1)
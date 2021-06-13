class Task {
  late List<Task> task;
  late String note;
  late DateTime time;
  late bool completed;
  late String repeats;
  late DateTime deadLine;
  late List<DateTime> reminders;
  late String taskId;
  late String title;
  Task(this.title, this.completed, this.taskId);
}

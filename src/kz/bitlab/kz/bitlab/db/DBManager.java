package kz.bitlab.kz.bitlab.db;

import kz.bitlab.models.Task;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Task> tasks = new ArrayList<>();
    private static Long id = 4L;
    static {
        tasks.add(new Task(1L, "TEST1", "TESTDESCRIP1", "07.01.2025", true));
        tasks.add(new Task(2L, "TEST2", "TESTDESCRIP2", "07.01.2025", false));
        tasks.add(new Task(3L, "TEST3", "TESTDESCRIP3", "07.01.2025", false));
    }

    public static ArrayList<Task> getTasks(){
        return tasks;
    }

    public static void addTask(Task task){
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Task getTaskById(Long id) {
        for (Task task : tasks){
            if (task.getId() == id){
                return task;
            }
        }
        return null;
    }

    public static void deleteTask(Long id){
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId() == id){
                tasks.remove(tasks.get(i));
            }
        }
    }

    public static void updateTask(Task task){
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId() == task.getId()){
                tasks.set(i, task);
            }
        }
    }

}

package ru.stankin.uits.lec3.database;

import java.util.HashMap;
import java.util.Map;

public class UserTable {
    private static Map<String, User> users = new HashMap<>();

    public static boolean addUser(User user) {
        String login = user.getLogin();

        if (!users.containsKey(login)) {
            users.put(user.getLogin(), user);
            return true;
        } else {
            return false;
        }
    }

    public static boolean checkPass(String login, String password) {
        User user = users.get(login);

        if (user != null && password.equals(user.getPass())) {
            return true;
        } else {
            return false;
        }
    }

    public static Map<String, User> getAllUsers() {
        return users;
    }
}

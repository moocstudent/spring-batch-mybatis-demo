package com.example.batchprocessing.processor;

import com.example.batchprocessing.bean.User;
import com.example.batchprocessing.bean.UserCp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.item.ItemProcessor;

import java.util.Random;

//用户中间处理器
public class UserItemProcessor implements ItemProcessor<User, User> {

    private static final Logger log = LoggerFactory.getLogger(UserItemProcessor.class);

    @Override
    public User process(final User user) throws Exception {
        int id_user = user.getId();
        String username_user = user.getUsername();
        String password_user = user.getPassword();

        //双项全能
        if (username_user.length() < 14 && password_user.length() < 15) {
            return getTheStandardUser(2, id_user, username_user, password_user);
        }
        //单杠
        else if (username_user.length() < 14) {
            return getTheStandardUser(0, id_user, username_user, password_user);
        }
        //双杠
        else if (password_user.length() < 15) {
            return getTheStandardUser(1, id_user, username_user, password_user);
        } else {
            return user;
        }
    }

    private User getTheStandardUser(int sporterNumber, int id, String username, String password) {
        String str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random = new Random();
        User userCp = null;
        if (sporterNumber == 2) {
            log.info("The user is: double decathlon.");
            StringBuffer nameStrBfr = new StringBuffer();
            StringBuffer passwordStrBfr = new StringBuffer();
            for (int i = 0; i < 14 - username.length(); i++) {
                int number = random.nextInt(62);
//                log.info("random number: " + number);
                nameStrBfr.append(str.charAt(number));
            }
            log.info("nameStrBfr: " + nameStrBfr);
            for (int i = 0; i < 15 - password.length(); i++) {
                int number = random.nextInt(62);
//                log.info("random number: " + number);
                passwordStrBfr.append(str.charAt(number));
            }
            log.info("passwordStrBfr: " + passwordStrBfr);
            userCp = new User(id, username + nameStrBfr, password + passwordStrBfr);
        } else if (sporterNumber == 0) {
            log.info("The user is: horizontal bar.");
            StringBuffer nameStrBfr = new StringBuffer();
            for (int i = 0; i < 14 - username.length(); i++) {
                int number = random.nextInt(62);
//                log.info("random number: " + number);
                nameStrBfr.append(str.charAt(number));
            }
            log.info("nameStrBfr: " + nameStrBfr);
            userCp = new User(id, username + nameStrBfr, password);
        } else if (sporterNumber == 1) {
            log.info("The user is: parallel bars.");
            StringBuffer passwordStrBfr = new StringBuffer();
            for (int i = 0; i < 15 - password.length(); i++) {
                int number = random.nextInt(62);
//                log.info("random number: " + number);
                passwordStrBfr.append(str.charAt(number));
            }
            log.info("passwordStrBfr: " + passwordStrBfr);
            userCp = new User(id, username, password + passwordStrBfr);
        }
        log.info("Converting userID:"+id+"'s user to "+userCp.toString());
        return userCp;
    }
}

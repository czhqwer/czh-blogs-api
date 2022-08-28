package cn.czh.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {

    private String account;

    private Long userId;

    private String userIp;

    private String userName;

    private String userPassword;

    private String userEmail;

    private String userProfilePhoto;

    private String userRegistrationTime;

    private String userBirthday;

    private Byte userAge;

    private String userTelephoneNumber;

    private String userNickname;
}

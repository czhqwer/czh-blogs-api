package cn.czh.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TUsers extends BaserDomain {
    private Long userId;

    private String userIp;

    private String userName;

    private String userPassword;

    private String userEmail;

    private String userProfilePhoto;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String userRegistrationTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String userBirthday;

    private Byte userAge;

    private String userTelephoneNumber;

    private String userNickname;
}
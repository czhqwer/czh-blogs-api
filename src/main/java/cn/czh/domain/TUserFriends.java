package cn.czh.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TUserFriends extends BaserDomain {
    private Long id;

    private Long userId;

    private Long userFriendsId;

    private String userNote;

    private String userStatus;
}
package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@AllArgsConstructor
@ToString
@NoArgsConstructor	//vo 클래스 모든 프로퍼티를 select 하지 않는다면 필요합니다.
public class BookMember {
	private String name;
	private String email;
	private String tel;
	private String password;
	
}

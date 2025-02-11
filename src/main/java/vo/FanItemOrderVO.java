package vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class FanItemOrderVO {
	private int orderSeq; //구매seq
	private String userid;
	private int seq;  // 상품seq
	private int count;
	private int pay;
	private Date orderDate;
		
}






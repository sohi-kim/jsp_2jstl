drop table nc_dinos; -- 필요할 때, 테이블 삭제
create table tbl_fanitem (
	seq number(8) primary key,
	title varchar2(100) not null,
	price number(8) not null,
	newitem number(8),
	soldout number(8),
	filename varchar2(100)
);

create sequence fanitem_seq;

insert into tbl_fanitem (seq,title,price,newitem,soldout,filename)
values 
(fanitem_seq.nextval , '조구만 브라키오 인형 머리띠', 19000, 1,0,'1.jpg');

insert into tbl_fanitem (seq,title,price,newitem,soldout,filename)
values (fanitem_seq.nextval , '2025년 일반 달력', 13000, 0,1,'2.jpg');
insert into tbl_fanitem (seq,title,price,newitem,soldout,filename)
values (fanitem_seq.nextval , '조구만 브라키오 봉제 키링', 19000, 0,0,'3.jpg');
insert into tbl_fanitem (seq,title,price,newitem,soldout,filename)
values ( , '최우석 쫌 부채', 2000, 0,0,'4.jpg');
values ( , '&#39;승리요정 슈야토야&#39; 토야 키링', 16000, 0,0,'5.jpg')
values ( , '조구만 유리컵', 20000, 0,0,'6.jpg')
values ( , '조구만 스마트폰 케이스', 20000, 0,1,'7.jpg')
values ( , 'NC다이노스 피규어 20 춘식이', 26000, 0,0,'8.jpg')
values ( , '레시 헤어밴드', 13000, 0,0,'9.jpg')
values ( , '레시 키링', 16000, 0,0,'10.jpg')
values ( , '조구만 미니 PVC 파우치', 5000, 0,1,'11.jpg')
values ( , '도구리 변온 머그컵 넵!', 17100, 0,1,'12.jpg')
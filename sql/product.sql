--테이블 삭제
drop table product;

--시퀀스 삭제
drop sequence p_p_ID_seq;

--회원

create table PRODUCT(
    PID         number(8) ,
    PNAME       VARCHAR2(40),
    QUANTITY    NUMBER(10) ,
    PRICE       NUMBER(10) 
);
--기본키 생성
alter table product add constraint PRODUCT_PRODUCT_ID_pk primary key(PID);

--제약조선
alter table product modify pname constraint  product_pid_nn not null;
alter table product modify QUANTITY constraint  product_QUANTITY_nn not null;
alter table product modify price constraint  product_price_nn not null;
alter table product    add constraint  product_price_ck check( price >= 1000 );
alter table product    add constraint  product_QUANTITY_ck check( quantity >= 0 );

--insert시에만 기입하는 트리거
CREATE OR REPLACE TRIGGER check_prices_quantity
BEFORE INSERT ON product
FOR EACH ROW
DECLARE
    v_total NUMBER;
BEGIN
    v_total := :NEW.price * :NEW.quantity;

    IF v_total < 100000000 THEN
        NULL;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Price * Quantity should be less than 100,000,000');
    END IF;
END;
/

create sequence p_p_ID_seq;

insert into product (pid,pname,quantity,price)
    values(p_p_ID_seq.nextval, '커피', '10', '1004');
    insert into product (pid,pname,quantity,price)
    values(p_p_ID_seq.nextval, '커피', '10', '10040');

    

select * from product;
commit;
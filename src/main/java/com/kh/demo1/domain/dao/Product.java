package com.kh.demo1.domain.dao;

import lombok.Data;

@Data
public class Product {
  private Long pid;       //상품아이디          PID	NUMBER(10,0)
  private String pname;         //상품명       PNAME	VARCHAR2(30 BYTE)
  private Long quantity;        //상품수량      QUANTITY	NUMBER(10,0)
  private Long price;           //상품가격      PRICE	NUMBER(10,0)
}

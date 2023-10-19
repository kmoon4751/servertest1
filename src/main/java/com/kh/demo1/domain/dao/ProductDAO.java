package com.kh.demo1.domain.dao;

import java.util.List;
import java.util.Optional;

public interface ProductDAO {
  //등록
  Long save(Product product);

  //조회
  Optional<Product> findById(Long pid);

  //목록
  List<Product> findAll();

  //단건삭제
  int deleteById(Long pid);

  //수정
  int updateById(Long pid, Product product);
}

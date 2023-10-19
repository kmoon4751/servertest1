package com.kh.demo1.web.form;

import jakarta.validation.constraints.*;
import lombok.Data;

@Data
public class SaveForm {
  @NotBlank // null, 빈문자열("")를 허용 안함, 문자열 타입만 사용
  @Size(min=1,max=10)
  private String pname;
  @NotNull
  @Positive   //양수
  private Long quantity;

  @NotNull
  @Positive
  @Min(1000)
  @Max(10000000)
  private Long price;
}

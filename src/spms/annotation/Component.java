package spms.annotation;

import java.lang.annotation.*;

//Retention : ������̼��� ���� ��å�� ����
//RetemtionPolicy.RUNTIME : �� ���ø����̼��� �������̸� �������� ������̼��� ������ �� �ֵ��� ����
@Retention(RetentionPolicy.RUNTIME)
public @interface Component {
	//��ü �̸��� �����ϴ� �뵵�� ���
	//@Component("memberDAO")
	//memberDAO -> value������ ���
	String value() default "";	

}

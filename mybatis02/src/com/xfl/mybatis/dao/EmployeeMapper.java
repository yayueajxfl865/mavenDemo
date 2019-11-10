package com.xfl.mybatis.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.MapKey;

import com.xfl.mybatis.bean.Employee;

public interface EmployeeMapper {
	//������¼��װ��һ��map;Map<Integer,Employee>:key����������¼��������ֵ���Ǽ�¼��װ���javabean����ɫ
	//@MapKey("id")//����mybatis��װ���map��ʱ��ʹ���Ǹ�������Ϊ����
	
	
	
	public List<Employee> getEmpReturnManyMap(String fagaw,String gwesf);
	
	
	
	//����һ����¼��map,key����������ֵ���Ƕ�Ӧ��ֵ
	public Map<String,Object> getEmpByIdReturnMap(Integer id);
	
	
	public Employee getEmpById(Integer id,String gender);
	
	public void addEmp(Employee employee);
	
	public void updateEmp(Employee employee);
	
	public void deleteEmpById(Integer id);

}

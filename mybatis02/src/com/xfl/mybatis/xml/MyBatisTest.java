package com.xfl.mybatis.xml;



import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.jupiter.api.Test;

import com.xfl.mybatis.bean.Employee;
import com.xfl.mybatis.dao.EmployeeMapper;

class MyBatisTest {

	@Test
	public void test() throws IOException{


		String resource = "mybatis-conf.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
	    SqlSessionFactory sqlSessionFactory=(SqlSessionFactory) new SqlSessionFactoryBuilder().build(inputStream);
	
	    SqlSession openSession=sqlSessionFactory.openSession();
	    try {
	    	Employee employee  = openSession.selectOne("com.atguigu.mybatis.dao.EmployeeMapper.selectEmp",1);
	    	
		    System.out.println(employee);
	    	
	    }
	    
	    finally {
	    	  openSession.close();
	    }
	
	}
	
	//�Ƽ�ʹ�����ַ�ʽ��,select,����id��ѯ������һ��javabean����
	@Test
	public void test02() throws IOException{
		String resource="mybatis-conf.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession sqlSession=sqlSessionFactory.openSession();
		
		
		try {
			
			//�õ��������EmployeeMapper�ӿڵĴ������
			EmployeeMapper mapper=sqlSession.getMapper(EmployeeMapper.class);
			
			Employee employee=mapper.getEmpById(14,"1");//��ѯ���ݿ�
			System.out.println(employee);
			
			
			
		}
		
		finally {
			sqlSession.close();
			
		}
	} 
	//����id��ѯ������һ����¼��map����
	@Test
	public void selectByIdReturnMap() throws IOException
	{
		String resource="mybatis-conf.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession sqlSession=sqlSessionFactory.openSession();
		
		//�õ��ӿڴ������
		EmployeeMapper mapper=sqlSession.getMapper(EmployeeMapper.class);
		Map map=mapper.getEmpByIdReturnMap(6);
		System.out.println(map);
		
	}
	//ģ����ѯ�����ض�����¼��map����
	@Test
	public void manyMap() throws IOException{
		
		String resource="mybatis-conf.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession sqlSession=sqlSessionFactory.openSession();
		//�õ��ӿڵĴ������
		EmployeeMapper mapper=sqlSession.getMapper(EmployeeMapper.class);
		List list=mapper.getEmpReturnManyMap("%she%","%g%");
		System.out.println(list);
		
	}
	
	/*
	 * 
	  * ����ɾ���ģ�mybatis����һ�����ͷ���ֵ
	  * long��nteger��Boolean
	 */
	
	//addTest
	@Test
	public void addTest() throws IOException{
		
		String resource="mybatis-conf.xml";//������·�����õ�ȫ�����ļ���
		InputStream inputStream=Resources.getResourceAsStream(resource);//��ȡ�ļ���������		
		
		//�õ���������
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
	    //�õ�SqlSession 
		SqlSession sqlSession=sqlSessionFactory.openSession();
		
	
		try {
			//�õ�����ӿڶ���
			
			EmployeeMapper mapper=sqlSession.getMapper(EmployeeMapper.class);
			
			//Integer id, String lastName, String email, String gender
			Employee employee=new Employee(null,"zhangsan","zhangsan@qq.com","1");
	
			
			mapper.addEmp(employee);
			System.out.println("�����ӵ�����Ϊ"+employee.getId());
			//�ֶ��ύ����
			sqlSession.commit();
		
			
			
			
		}
		finally {
			sqlSession.close();
		}
	
	
	}
	//updateTest
	@Test
	public void updateTest() throws IOException{
		String resource="mybatis-conf.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session=sqlSessionFactory.openSession();
		
		
		try {
			
			//�õ��������
			EmployeeMapper mapper=session.getMapper(EmployeeMapper.class);
			Employee employee=new Employee();
			employee.setId(1);
			employee.setEmail("lisi@qq.com");
			employee.setGender("2");
			employee.setLastName("lisi");
			mapper.updateEmp(employee);
			session.commit();
			
		}finally{
	
			session.close();
			
		}
		
	}
	//deleteTest
	@Test
	public void deleteTest() throws IOException{
		
		String resource="mybatis-conf.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession sqlSession=sqlSessionFactory.openSession();
		
		
		try {
			//�õ���̬�������
			EmployeeMapper mapper=sqlSession.getMapper(EmployeeMapper.class);
			mapper.deleteEmpById(1);
			//�ֶ��ύ����
			sqlSession.commit();
			
			
			
		}finally {
			sqlSession.close();
			
		}
		
	}
	
	
	

}

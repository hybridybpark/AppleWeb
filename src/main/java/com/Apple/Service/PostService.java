package com.Apple.Service;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Apple.Dao.PostDao;
import com.Apple.Dao.QnADao;
import com.Apple.Model.Post;
import com.Apple.Model.QnA;
import com.Apple.Model.ShopInfo;

@Service
public class PostService {
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	PostDao postdao;
	

	
	// DB List 출력
	public List<Post> selectAll() {
		List<Post> list = postdao.selectAll();
		
		return list;
		
	}
	
	// DB insert 입력
	public void insert(Post post){
		postdao.insert(post);
	}
	
	// DB delete 삭제
	public void delete(Post post){
		postdao.delete(post);
	}
	
	// DB update 수정
	public void update(Post post){
		postdao.update(post);
	}
	
	public List<Post> selectShopPost(ShopInfo shopinfo) {
		return postdao.selectShopPost(shopinfo);
	}
}

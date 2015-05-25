package com.Apple.Dao;

import java.util.List;
import java.util.Map;

import com.Apple.Model.Chain;
import com.Apple.Model.Post;
import com.Apple.Model.QnA;
import com.Apple.Model.ShopInfo;

public interface PostDao {
	public List<Post> selectAll();
	
	public void insert(Post post);
	
	public void delete(Post post);

	public void update(Post post);
	
	public List<Post> selectShopPost(ShopInfo shopinfo);
}

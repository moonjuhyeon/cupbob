package com.cupbob.persistance.mapper;

import java.util.List;

import com.cupbob.config.Mapper;
import com.cupbob.dto.Tmp_boardDTO;
import com.cupbob.dto.User_boardDTO;

@Mapper("BoardMapper")
public interface BoardMapper {
	public List<User_boardDTO> getAdminBoardList() throws Exception;
	public User_boardDTO getAdminBoardDetail(User_boardDTO bdto) throws Exception;
	public int deleteAdminBoartDetailDelete(User_boardDTO bdto) throws Exception;
	public int updateAdminBoard(User_boardDTO uDTO) throws Exception;
	public int deleteAdminBoardAllCheck(User_boardDTO bdto) throws Exception;
	void insertAdminBoard(User_boardDTO bDTO) throws Exception;
}

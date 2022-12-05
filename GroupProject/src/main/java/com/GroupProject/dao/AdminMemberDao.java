package com.GroupProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.GroupProject.dto.MembersDto;



public interface AdminMemberDao {

	ArrayList<MembersDto> selectMemberList();

	int updateMemberState( @Param("member_id") String member_id, @Param("member_state") int member_state);

	

}

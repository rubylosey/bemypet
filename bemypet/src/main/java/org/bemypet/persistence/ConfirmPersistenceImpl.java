package org.bemypet.persistence;

import org.apache.ibatis.session.SqlSession;
import org.bemypet.domain.ReservVO;
import org.springframework.stereotype.Repository;

@Repository
public class ConfirmPersistenceImpl {
	
	private SqlSession sql;
	
	private static String namespace = "org.bemypet.mappers.reserv";
	
	public void write(ReservVO rvo) throws Exception {
		sql.insert(namespace+"write", rvo);
	}

}

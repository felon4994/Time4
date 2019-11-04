package egovframework.example.sample.service.impl;

import javax.naming.AuthenticationException;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.MemberVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("loginDAO")
public class LoginDAO extends EgovAbstractDAO { //extends SqlMapClientDaoSupport

//	@Autowired
//	public LoginDao(SqlMapClient sqlMapClient) {
//		super();
//		setSqlMapClient(sqlMapClient);
//	}

	public int authenticate(String id, String password) throws Exception {
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPassword(password);

		// DB에서 확인
		/**
		 * 글 총 갯수를 조회한다.
		 * @param searchMap - 조회할 정보가 담긴 Map
		 * @return 글 총 갯수
		 * @exception
		 */
//		if ("1".equalsIgnoreCase(id) && "1".equalsIgnoreCase(password)) {
//			
//			memCheck = 1;
//		}
		return (Integer) select("memberDAO.selectMemberCnt", member);

	}
}
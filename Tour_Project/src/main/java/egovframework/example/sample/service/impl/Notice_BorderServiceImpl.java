package egovframework.example.sample.service.impl;


import java.util.List;

import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;
import egovframework.example.sample.service.Big_CityService;
import egovframework.example.sample.service.Big_CityVO;
import egovframework.example.sample.service.Notice_BorderService;
import egovframework.example.sample.service.Notice_BorderVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;



@Service("noticeborderService")
public class Notice_BorderServiceImpl extends EgovAbstractServiceImpl implements Notice_BorderService{

	private static final Logger LOGGER = LoggerFactory.getLogger(Notice_BorderServiceImpl.class);

	/** SampleDAO */
	// TODO ibatis 사용
	@Resource(name = "noticeborderDAO")
	private Notice_BorderDAO noticeborderDAO;
	// TODO mybatis 사용
	//  @Resource(name="sampleMapper")
	//	private SampleMapper sampleDAO;

	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;

	/**
	 * 글 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	@Override
	public List<?> selectNotice_BorderList(SampleDefaultVO searchVO) throws Exception {
		return noticeborderDAO.selectNotice_BorderList(searchVO);
	}

	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	@Override
	public Notice_BorderVO selectNotice_Border(Notice_BorderVO vo) throws Exception {
		Notice_BorderVO resultVO = noticeborderDAO.selectNotice_Border(vo);
		if (resultVO == null)
			throw processException("info.nodata.msg");
		return resultVO;
	}

	/**
	 * 글 총 갯수를 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 총 갯수
	 * @exception
	 */
	@Override
	public int selectNotice_BorderListTotCnt(SampleDefaultVO searchVO) {
		return noticeborderDAO.selectNotice_BorderListTotCnt(searchVO);
	}
	
	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 SampleVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public void insertNotice_Border(Notice_BorderVO vo) throws Exception {
		/*
		LOGGER.debug(vo.toString());

		*//** ID Generation Service *//*
		String deptno = egovIdGnrService.getNextStringId();
		vo.setDeptno(deptno);
		LOGGER.debug(vo.toString());
*/
		noticeborderDAO.insertNotice_Border(vo);
	}
	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 SampleVO
	 * @return void형
	 * @exception Exception
	 */
	@Override
	public void updateNotice_Border(Notice_BorderVO vo) throws Exception {
		noticeborderDAO.updateNotice_Border(vo);
	}

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 SampleVO
	 * @return void형
	 * @exception Exception
	 */
	@Override
	public void deleteNotice_Border(Notice_BorderVO vo) throws Exception {
		noticeborderDAO.deleteNotice_Border(vo);
	}

	
}

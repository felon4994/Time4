package egovframework.example.sample.service.impl;


import java.util.List;

import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;
import egovframework.example.sample.service.Big_CityService;
import egovframework.example.sample.service.Big_CityVO;
import egovframework.example.sample.service.Qanda_BorderService;
import egovframework.example.sample.service.Qanda_BorderVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;



@Service("qandaborderService")
public class Qanda_BorderServiceImpl extends EgovAbstractServiceImpl implements Qanda_BorderService{

	private static final Logger LOGGER = LoggerFactory.getLogger(Qanda_BorderServiceImpl.class);

	/** SampleDAO */
	// TODO ibatis 사용
	@Resource(name = "qandaborderDAO")
	private Qanda_BorderDAO qandaborderDAO;
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
	public List<?> selectQanda_BorderList(SampleDefaultVO searchVO) throws Exception {
		return qandaborderDAO.selectQanda_BorderList(searchVO);
	}

	/**
	 * 글을 조회한다.
	 * @param vo - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	@Override
	public Qanda_BorderVO selectQanda_Border(Qanda_BorderVO vo) throws Exception {
		Qanda_BorderVO resultVO = qandaborderDAO.selectQanda_Border(vo);
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
	public int selectQanda_BorderListTotCnt(SampleDefaultVO searchVO) {
		return qandaborderDAO.selectQanda_BorderListTotCnt(searchVO);
	}
	
	/**
	 * 글을 등록한다.
	 * @param vo - 등록할 정보가 담긴 SampleVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	@Override
	public void insertQanda_Border(Qanda_BorderVO vo) throws Exception {
		/*
		LOGGER.debug(vo.toString());

		*//** ID Generation Service *//*
		String deptno = egovIdGnrService.getNextStringId();
		vo.setDeptno(deptno);
		LOGGER.debug(vo.toString());
*/
		qandaborderDAO.insertQanda_Border(vo);
	}
	/**
	 * 글을 수정한다.
	 * @param vo - 수정할 정보가 담긴 SampleVO
	 * @return void형
	 * @exception Exception
	 */
	@Override
	public void updateQanda_Border(Qanda_BorderVO vo) throws Exception {
		qandaborderDAO.updateQanda_Border(vo);
	}

	/**
	 * 글을 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 SampleVO
	 * @return void형
	 * @exception Exception
	 */
	@Override
	public void deleteQanda_Border(Qanda_BorderVO vo) throws Exception {
		qandaborderDAO.deleteQanda_Border(vo);
	}

	
}

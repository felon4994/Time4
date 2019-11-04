/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.sample.service;

/**
 * @Class Name : Big_CityVO.java
 * @Description : Big_CityVO Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class Big_CityVO extends SampleDefaultVO {

	private static final long serialVersionUID = 1L;

	/** 대도시 코드 */
	private String big_city_code;

	/** 대도시 이름 */
	private String big_city_name;


	public String getBig_city_code() {
		return big_city_code;
	}

	public void setBig_city_code(String big_city_code) {
		this.big_city_code = big_city_code;
	}
	
	public String getBig_city_name() {
		return big_city_name;
	}

	public void setBig_city_name(String big_city_name) {
		this.big_city_name = big_city_name;
	}

}

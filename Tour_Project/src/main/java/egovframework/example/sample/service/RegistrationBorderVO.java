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
public class RegistrationBorderVO extends SampleDefaultVO {

	private static final long serialVersionUID = 1L;

	/** 지역코드 */
	private String tour_code;
	
	/** 지역특징 */
	private String tour_class;
	
	/** 지역명 */
	private String tour_name;
	
	/** 주소 */
	private String tour_add;
	
	/** 도시코드 */
	private String city_code;
	
	/** 전화번호 */
	private String tour_tell;

	public String getTour_code() {
		return tour_code;
	}

	public void setTour_code(String tour_code) {
		this.tour_code = tour_code;
	}

	public String getTour_class() {
		return tour_class;
	}

	public void setTour_class(String tour_class) {
		this.tour_class = tour_class;
	}

	public String getTour_name() {
		return tour_name;
	}

	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}

	public String getTour_add() {
		return tour_add;
	}

	public void setTour_add(String tour_add) {
		this.tour_add = tour_add;
	}

	public String getCity_code() {
		return city_code;
	}

	public void setCity_code(String city_code) {
		this.city_code = city_code;
	}

	public String getTour_tell() {
		return tour_tell;
	}

	public void setTour_tell(String tour_tell) {
		this.tour_tell = tour_tell;
	}
}

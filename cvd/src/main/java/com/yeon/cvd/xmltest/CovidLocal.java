package com.yeon.cvd.xmltest;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class CovidLocal {

	// tag값의 정보를 가져오는 함수
	public static String getTagValue(String tag, Element eElement) {

		// 결과를 저장할 result 변수 선언
		String result = "";

		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();

		result = nlList.item(0).getTextContent();

		return result;
	}

	// tag값의 정보를 가져오는 함수
	public static String getTagValue(String tag, String childTag, Element eElement) {

		// 결과를 저장할 result 변수 선언
		String result = "";

		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();

		for (int i = 0; i < eElement.getElementsByTagName(childTag).getLength(); i++) {

			// result += nlList.item(i).getFirstChild().getTextContent() + " ";
			result += nlList.item(i).getChildNodes().item(0).getTextContent() + " ";
		}

		return result;
	}

	public static void main(String[] args) {

		// 본인이 받은 api키를 추가
		String key = "cPxVAevbvzOS3Sb3NJOODLtLTflfaVUO1Aw922Wwz3HhvL8iwd1v6bRrkbBNyY1x1RQTINgW0dgsmOq1aHkaCA%3D%3D";
		int page = 1;

		try {
			// parsing할 url 지정(API 키 포함해서)
			String url = "http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19SidoInfStateJson?serviceKey="
					+ key + "&" + "pageNo=" + page + "&numOfRows=1" + "&startCreateDt=20220208";

			DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
			Document doc = dBuilder.parse(url);

			// 제일 첫번째 태그
			doc.getDocumentElement().normalize();

			// 파싱할 tag
			NodeList nList = doc.getElementsByTagName("item");

			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);

				Element eElement = (Element) nNode;

				System.out.println("##########################");
				System.out.println("지역명 : " + getTagValue("gubun", eElement));
				System.out.println("확진자 수 : " + getTagValue("defCnt", eElement));
				System.out.println("사망자 수 : " + getTagValue("deathCnt", eElement));
				System.out.println("격리해제 수 : " + getTagValue("isolClearCnt", eElement));
				System.out.println("전일대비 증감 수 : " + getTagValue("incDec", eElement));
				System.out.println("만명당 발생률 : " + getTagValue("qurRate", eElement));
				System.out.println("지역발생 수 : " + getTagValue("localOccCnt", eElement));
				System.out.println("해외유입 수 : " + getTagValue("overFlowCnt", eElement));
				System.out.println("기준일시 : " + getTagValue("stdDay", eElement));

			}

			page += 1;
			System.out.println("page number : " + page);
			if (page > 12) {
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
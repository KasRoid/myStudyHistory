#  Objectives

[ 주제 ]
성수동 주변에 위치한 카페 정보 탐색

[  구현 사항  ]
- 스토리보드/코드 자유
- 라이트모드/다크모드에서 모두 이상없도록 구현

- json 파일 정보를 파싱하여 카페 정보 읽어오기

- 홈 화면
  > 커스텀 레이아웃을 이용한 카페 정보 출력. 어려우면 일단 FlowLayout을 이용해 구현해도 무방
    * (카페 이미지, 카페명, 설명, 관심 버튼)
  > SearchController를 이용한 카페 검색 기능
  > 내비게이션 타이틀 변경 방법.  navigationItem.titleView = UILabel~~~~
    * 영상의 폰트는 Zapfino를 사용하였으나, 변경 가능

- 카페 상세 정보 화면
  > 카페 추가 이미지와 설명
    * 01~10 숫자가 뒤에 붙어서 10장씩 있음 (블루보틀은 6장). 단, 카페마다 이미지 개수가 달라져도 문제없도록 구현
  > 페이지 컨트롤을 이용한 전체 이미지 개수와 현재 페이지 표현
  > 맵뷰를 통한 카페 위치 표현
  > 추가 정보 영역 (iOS URLScheme에 대해 검색해보고 아래 링크 참고하여 구현)
    * 앱이 설치되어 있어야만 수행 가능 (시뮬레이터에서 수행 X)
    * 네이버 지도 앱으로 이동하여 현재 위치에서 카페 위치까지의 도보 경로 나타내기
      참고 - https://docs.ncloud.com/ko/naveropenapi_v3/maps/url-scheme/url-scheme.html
    * 인스타그램 앱으로 이동하여 카페 이름으로 태그 검색
      참고 - https://developers.facebook.com/docs/instagram/sharing-to-feed

- 지도 검색 화면
  > 맵에 카페 위치가 나타나도록 구현
  > 현재 보여지는 맵 영역에 위치한 카페들에 대해 하단 정보창에 출력
    * 힌트: mapView.annotations(in: mapView.visibleMapRect)
  > 정보창은 On/Off 형식으로 보이거나 숨길 수 있도록 처리
  > 어노테이션뷰(핀)는 클러스터링 될 수 있도록 처리 
    * 클러스터링 = 좁은 위치에 여러 개의 어노테이션뷰(핀)이 겹치면 묶어주는 기능
    * AnnotationView에 clusterIdentifier만 추가해주면 자동 구현됨
    * AnnotationView는 cell과 같이 delegate 메서드에서 deque하는 방식으로 사용
  > 어노테이션뷰(핀)를 선택하면 해당 카페만 정보창에 보여주도록 처리 (단, 클러스터링된 것을 누르면 그 수만큼 표현)
  > 정보창에서 특정 카페 선택 시, 맵에서 해당 위치로 이동

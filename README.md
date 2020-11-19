# samsungSDS
- 삼성SDS 사이트를 모방하여 제작한 웹 사이트 입니다.

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/main.PNG" width="800px" height="300px">

### 메인페이지
```
메인페이지입니다.
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/menu.PNG" width="800px" height="300px">

### 메뉴바
```
메뉴바입니다. CSS 속성의 overflow hidden속성을 부여 하였으며 Hover시에 visible 로 설정해주었습니다.
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/content.PNG" width="800px" height="300px">

### 메인콘텐츠
```
이미지에 Hover시 opacity 값이 변하도록 설정하였으며, 서서히 변화하는 효과를 주기위해 transition을 적용하였습니다
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/footer.PNG" width="800px" height="200px">

### Footer
```
footer 부분입니다.
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/login.PNG" width="800px" height="300px">

### 로그인 화면
```
로그인 화면입니다. 
Select / where 문을 사용하여 데이터베이스 내에 데이터와 일치여부를 확인합니다.
회원일 경우 1값을 반환하고 비회원일 경우 0 값을 반환하도록 하였습니다.
또한 로그인 시 세션에 값을 저장하도록 하였습니다
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/login_nav.PNG" width="800px" height="50px">

### 로그인 후 nav
```
로그인 후 nav입니다.
세션에 아이디값이 저장되어 있으면 정보수정 / 로그아웃으로 나타나도록 if문을 사용하여 작성하였습니다.
로그아웃을 누를 경우 session 값을 초기화 하도록 하였습니다.
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/edit.PNG" width="800px" height="300px">

### 마이페이지 + 정보수정화면
```
마이페이지 + 정보수정화면입니다.
값을 입력한 뒤 수정버튼을 누르면 Update 문을 이용하여 데이터베이스 내 정보가 변경되도록 하였습니다.
CSS가 미흡한 부분에 대해서 추후 수정 예정입니다.
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/remove.PNG" width="800px" height="150px">

### 회원탈퇴
```
회원 탈퇴 화면입니다.
비밀번호를 입력하면 Delete 문을 사용하여 데이터 베이스내 정보를 삭제하도록 하였습니다.
현재 코드가 세션의 값이 null이 아닐경우 작동되도록 짜여져있어
추후에 세션에 password 값을 따로받아 if문과 .equals 를 사용하여 비밀번호가 일치해야만 탈퇴되도록 수정 예정입니다.
(왜 이렇게 짜놨는지 기억이 잘 나지않습니다....ㅠ)
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/notice.PNG" width="800px" height="300px">

### 게시판
```
게시판 화면입니다
현재 DB내에 있는 목록을 나타내도록 작성하였습니다.
제목을 클릭하면 내용을 볼 수 있도록 하였습니다.
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/notice_view.PNG" width="800px" height="300px">

### 게시판 글 보기
```
게시판에서 제목을 클릭해서 내용을 보는 화면입니다.
Select 문을 이용하여 데이터베이스 내에 있는 값을 가져오도록 설정하였습니다.
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/write.PNG" width="800px" height="300px">

### 게시글 쓰기
```
글쓰기 버튼을 누르면 게시글을 작성할 수 있는 화면이 나타납니다.
Insert 문을 이용하여 게시글 작성시 데이터베이스 내에 기록되도록 작성하였습니다.
```

<img src="https://github.com/yoonjaesub/samsungSDS/blob/gh-pages/img/notice2.PNG" width="800px" height="300px">

### 게시글 화면_2
```
게시글을 작성하면 위와 같이 새로운 리스트에 추가됩니다.
```

### 2020/08/20

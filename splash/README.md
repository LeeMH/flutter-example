# splash


## 프로젝트 목적

flutter splash 페이지 만들기

## 정리

### 1. 의존성 추가

```bash
flutter pub add flutter_native_splash
```

### 2. 이미지 준비

기본이미지 사이즈 : 768 * 768
안드로이드12 이미지 사이즈 : 1152 * 1152

### 3. [flutter_native_splash.yaml](./flutter_native_splash.yaml) 파일 작성

splash 화면에 사용될 이미지와 color등을 설정한다.

### 4. create 명령문 수행

```bash
dart run flutter_native_splash:create
```

### 5. 실행

reload가 아니고, app을 완전히 종료한후 다시 시작한다.

만약 splash 화면이 나오지 않는다면, create 명령 출력을 자세히보자.

설정등 오류가 있으면 파일이 생성되지 않을수 있다.

## 참고 링크

https://daino.tistory.com/entry/%ED%94%8C%EB%9F%AC%ED%84%B0-Flutter-%EC%B4%88%EA%B0%84%EB%8B%A8-splash-%ED%99%94%EB%A9%B4-%EC%84%A4%EC%A0%95
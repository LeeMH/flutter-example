# splash & 아이콘


## 프로젝트 목적

1. flutter splash 페이지 만들기
2. app 아이콘 변경하기

## 정리

### 1. splash 화면 설정

#### 1.1. 의존성 추가

```bash
flutter pub add flutter_native_splash
```

#### 1.2. 이미지 준비

기본이미지 사이즈 : 768 * 768
안드로이드12 이미지 사이즈 : 1152 * 1152

#### 1.3. [flutter_native_splash.yaml](./flutter_native_splash.yaml) 파일 작성

splash 화면에 사용될 이미지와 color등을 설정한다.

#### 1.4. create 명령문 수행

```bash
dart run flutter_native_splash:create
```

#### 1.5. 실행

reload가 아니고, app을 완전히 종료한후 다시 시작한다.

만약 splash 화면이 나오지 않는다면, create 명령 출력을 자세히보자.

설정등 오류가 있으면 파일이 생성되지 않을수 있다.

### 2. app 아이콘

#### 2.1. app 아이콘 파일 생성

간단하게 [링크](https://www.appicon.co/) 에서 생성 가능하다.

#### 2.2. 파일 적용

생성된 파일 압축을 풀면 안드로이드와 iOS 각각 폴더가 있다.

안드로이드의 경우, android/app/src/main/res 폴더에 붙여넣는다.

기존에 생성된 파일이 있으면 replace 시킨다.

iOS의 경우, ios/Runner/Assets.xcassets에 AppIcon.appiconset 폴더를 통채로 붙여 넣는다.

동일하게 기존에 생성된 파일이 있으면 replace 시킨다.

#### 2.3. 확인

app을 완전히 종료한후 다시 기동하여, 아이콘이 변경되었는지 확인한다.

## 참고 링크

https://daino.tistory.com/entry/%ED%94%8C%EB%9F%AC%ED%84%B0-Flutter-%EC%B4%88%EA%B0%84%EB%8B%A8-splash-%ED%99%94%EB%A9%B4-%EC%84%A4%EC%A0%95
https://asufi.tistory.com/entry/Flutter-Flutter-%EC%95%B1-%EC%B6%9C%EC%8B%9C-%ED%95%98%EA%B8%B0-release-build-apk
# layout

[공식문서](https://docs.flutter.dev/ui/layout)

## 0. Point

> `widget`은 UI를 빌드하기 위한 클래스이다.

> `widget`은 UI 구성과 `레이아웃`에 사용된다.

> 간단한 `widget`을 조합하여, 복잡한 `widget`을 만들수 있다.

## 1. Layout multiple widgets vertically and horizontally

### 1.1. Point

> `Row`와 `Column`은 가장 일반적으로 사용되는 layout 패턴이다.

> `Row`와 `Column`은 여러 child widget (children)을 가진다.

> 자식 widget은 자기 자신(`Row`, `Column`)은 물론 다른 widget이 될수도 있다.

> 자식들의 가로방향, 세로방향 `정렬`을 명시할 수 있다.

> 특정 자식을 늘리거나 제한할 수 있다.

> 자식 widget이 `Row` or `Column`의 사용 가능 공간을 지정할 수 있다.
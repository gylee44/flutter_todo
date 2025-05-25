# 📚 Flutter 실습 과제: 페이지 이동 + setState 활용

## ✅ 목표
- 두 페이지 간의 **데이터 전달 및 상태 관리(setState)** 를 익힌다.
- `Navigator.push`와 `Navigator.pop`을 통해 **페이지 전환을 구현**한다.
- **사용자 입력을 기반으로 UI를 동적으로 갱신**하는 앱을 만든다.

---

## 🧪 과제 설명

### 🗿 구성

1. `HomePage`: 할 일 목록을 보여주고, `+` 버튼으로 추가 페이지로 이동
2. `AddTodoPage`: 사용자가 텍스트를 입력하고 돌아오면 목록에 추가

### 🧑‍💻 개발 과제

1. `DeleteTodoPage` 페이지를 생성하고, `HomePage`와 연결하여 삭제 기능을 구현해보기.
2. `Todo` 객체의 항목을 추가해보기.
3. `AddTodoPage` 에서 개선한 객체의 파라메터 값을 추가할 수 있는 텍스트 필드를 추가해보기.
4. `HomePage` 에서 setState로 장난감 기능 넣어보기 (ex : 누르면 색이 렌덤으로 바뀌는 버튼 등)

### 🧐 조사 과제

1. setState()는 어떤 역할을 하며, 언제 사용하는가?
   + 조사 포인트
   + setState()의 문법과 기본적인 구조 
   + 내부적으로 무슨 일이 일어나는지 (build가 어떻게 재실행되는지)
   + 상태를 변경할 때 setState로 감싸야 하는 이유 
   + setState 없이 변수만 바꾸면 어떤 문제가 생기는지 
   + 어떤 경우에는 setState를 사용하면 안 되는지

3. Navigator.push()와 pop()을 이용해 두 페이지 간 데이터를 전달하는 방법
   + 조사 포인트 
   + Navigator.push(context, MaterialPageRoute(...)) 문법 설명 
   + pop()으로 데이터를 어떻게 반환하는지
   + 데이터를 주고받는 흐름 (ex: “할 일 추가” → “홈으로 돌아와 목록에 반영”)
   + await Navigator.push()와 pop(value)의 관계
   + 이 구조를 언제, 왜 사용하는지

4. Flutter에서 상태(state)와 UI는 어떤 관계를 갖고 있는가? 
   + 조사 포인트
   + 상태(state)의 정의 (앱이 기억해야 할 데이터)
   + Flutter의 reactive UI: 상태가 변경되면 UI가 자동으로 다시 그려지는 구조 
   + 상태 변경이 없는 UI는 어떻게 동작하는가? 
   + 예제를 통해 상태 변화가 UI에 어떤 영향을 주는지 설명

5. StatelessWidget과 StatefulWidget의 차이 
   + 조사 포인트
   + 두 위젯의 역할과 차이점 
   + 각 위젯의 기본 코드 구조 
   + 어떤 상황에서 StatefulWidget이 필요하고, 어떤 상황에서는 StatelessWidget으로 충분한지 
   + 실생활 예시와 비교해보기 (ex: 시계 앱, 버튼, 폼 등)

6. BuildContext란 무엇이며 왜 필요한가? 
   + 조사 포인트
   + BuildContext란 무엇인가? (정의 + 비유적 설명)
   + 어떤 경우에 꼭 필요한가? (Navigator, Theme, ScaffoldMessenger 등)
   + BuildContext는 위젯 트리에서 어떤 역할을 하나? 
   + initState() 안에서 context를 쓸 수 없는 이유


---

### 조사과제 예시 템플릿
```
# 조사 과제: setState()란?

## 1. 개념 정리
- setState는 무엇인가요?

## 2. 예제 코드
- 간단한 코드와 실행 결과 설명

## 3. 내부 동작 방식
- 왜 build()가 다시 실행되나요?

## 4. 실무에서의 사용 예시
- 어떤 앱에 자주 쓰이나요?

## 5. 궁금하거나 어려웠던 점
- 조사 중 헷갈리거나 궁금했던 내용
```

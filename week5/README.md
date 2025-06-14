# ✅ 최종 과제 – Todo 앱 편집 기능 + 개념 조사

## 🎯 목표
- MVVM + GetX 기반의 Todo 앱에서 **편집 기능**까지 완성합니다.
- 실전 프로젝트 개발에 필요한 핵심 개념들을 **조사 정리**합니다.

---

## 1️⃣ 개발 과제 – Todo 편집 기능 구현

### 🧩 구현 목표
- 리스트 아이템을 **길게 누르면 편집 화면(EditTodoPage)으로 이동**
- 기존 내용이 `TextField`에 **자동으로 채워짐**
- 편집 후 저장 시, 해당 할 일이 **바로 수정되어 반영**됨

### 🔧 구현 조건
- 상태 관리: `GetxController`, `.obs`, `Obx` 활용
- 구조 분리: MVVM 구조 (Controller / Service / View / Binding / Route)
- 저장 방식: `SharedPreferences` + JSON

### 🗿 기본 제공
- EditPage외 기능은 모두 구현되어있음.
- 롱 클릭은 어떤것을 쓰면 될지 한번 고민해보시기를.

### 🗂️ 파일 구조
```

lib/
├── models/             # TodoModel 정의
├── services/           # TodoService: CRUD 구현 (SharedPreferences)
├── controllers/        # TodoController
├── views/              # HomePage, AddTodoPage, EditTodoPage
├── routes/             # Routes 정의 및 페이지 등록
├── bindings/           # TodoBinding 등록
└── main.dart           # 앱 실행 진입점

```

---

## 2️⃣ 조사 과제 – 핵심 개념 조사 (Notion / Markdown)

각 항목에 대해 **요약 정리 및 개인 해석 포함**해 제출합니다.

### 🧠 조사 항목 및 포인트

#### 1. RESTful API란?
- REST vs RESTful
- HTTP 메서드 / URI 설계 규칙
- API 통신 흐름 (Flutter ↔ 서버)
- 예시: `GET /users`, `POST /todos`
- ✍️ postman 사용해보기.
- [api 란?](https://youtu.be/ckSdPNKM2pY?feature=shared)

#### 2. JWT(Json Web Token)
- 구조: Header, Payload, Signature
- 세션 vs 토큰
- 탈취되면 어떤 문제 발생?
- Flutter에서 사용 방식
- ✍️ jwt.io에서 jwt 생성해보기.
- [jwt 란?](https://youtu.be/XXseiON9CV0?feature=shared)

#### 3. 애자일 개발 방식
- 워터폴 vs 애자일
- 스크럼, 스프린트, 칸반 개념
- Trello, Jira 등 도구
- ✍️ 질문: “혼자 개발할 때도 애자일 사고가 필요한가?”
- [스크럼](https://youtu.be/PAp9fSY6FYY?feature=shared)

#### 4. 프론트엔드 vs 백엔드
- 역할, 사용하는 언어/도구
- Flutter는 프론트인가 백엔드인가?
- 앱 ↔ 서버 관계도 직접 그려보기

#### 5. JSON, XML, YAML 비교
- 공통점과 차이점
- 각 형식의 예시
- `pubspec.yaml`은 왜 YAML일까?
- API 응답에 가장 많이 쓰이는 형식은?

---

## ✅ 조사 과제 작성 가이드 (형식 예시)

```

# 주제: RESTful API

## 1. 개념 정리

REST는 ...
RESTful API는 ...

## 2. 왜 필요한가?

...

## 3. 예시 / 흐름도

...

## 4. Flutter 앱과의 연관성

...

## 5. 어려웠던 점 / 개인 해석

...

```

---

## 📤 제출 방식

1. GitHub에 개인 레포지토리 생성 (예: `flutter_todo`)
2. 프로젝트 전체 코드 업로드.
3. 블로그에 조사과제 작성 및 업로드.
4. 모르면 물어보기 카톡으로든 무엇으로든 물어보시면 빠른 답변 가능합니다.

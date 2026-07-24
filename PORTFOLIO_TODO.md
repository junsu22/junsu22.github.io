# 포트폴리오 개선 TODO (React 소스에 적용)

> 이 파일은 다른 PC의 React 소스에서 적용할 내용 모음.
> 라이브는 매트릭스 테마로 잘 만들어져 있음 — **테마는 유지**, 아래 콘텐츠 우선순위만 조정.

---

## 🚨 우선순위 1 — WithBuddy를 대표 프로젝트(PRJ-001)로 최상단에

현재 SYSTEMS 섹션이 COVID-19 Dashboard / Travel Package Predictor(부트캠프 토이)로 시작함.
→ **가장 강한 자산(프로덕션 RAG + 최우수상 + 정량성과)이 안 보이는 게 최대 손실.**
→ WithBuddy를 **1번 카드**로 올리고, COVID/Travel은 아래로 강등.

### WithBuddy 카드 문안 (그대로 사용)

```
[PRJ-001] // PRODUCTION RAG // FLAGSHIP            🏆 최우수상
WithBuddy — 사내 문서 기반 HR RAG 어시스턴트

수습사원 HR 질문에 사내 문서를 근거로 즉시 답변하는 프로덕션 RAG 서비스.
6인 팀 / AI 파트 단독 설계·구현. (2026.03 – 2026.07)

▹ E2E 정확도   72.5% → 97.5%
▹ LLM 비용     -54% (프롬프트 캐싱)
▹ TTFT         0.75s (SSE 스트리밍)
▹ 구조         LangGraph 멀티에이전트 · 멀티테넌시 · 자동 폴백 · Self-Verifier

Stack: Python · FastAPI · LangGraph · ChromaDB · Redis ·
       Claude Haiku · Gemini Embedding · LangSmith · RAGAS · GitHub Actions

[ 기술 리포트 → https://junsu22.github.io/withbuddy-showcase/withbuddy_ai_report.html ]
```

---

## 우선순위 2 — 프로젝트 카드에 "성과 숫자" 추가

각 카드가 "무엇을 했다"만 있고 outcome(숫자)이 약함. 채용담당자는 결과를 봄.
- WithBuddy: 위 4개 지표 (완료)
- Travel Predictor: "LightGBM ROC-AUC 최고 달성" → 가능하면 실제 수치 명기
- COVID Dashboard: "240개국·6년치, 2022 피크 4.24억 건" (이미 있음, 유지)

---

## 우선순위 3 — 수상 이력을 상단/눈에 띄게

지금 잘 안 보임. 히어로나 별도 AWARDS 블록으로:

```
AWARDS
★ 2026.07  Builders League Round 3 FINAL — 최우수상   (구름 Builders League)
  2026.06  Builders League Round 2 — Best Pivot
  2026.05  Builders League Round 1 — Best MVP
  2024.09  전국 장애공감 포스터 공모전 — 우수상 (국립특수교육원)
           └ 언론보도: https://daily.hankooki.com/news/articleView.html?idxno=1127117
```

---

## 우선순위 4 — "이 사이트 내가 만들었다" 크레딧 명시

디자인 어필을 "취향"이 아니라 "스펙"으로 전환. 하단 또는 STACK 근처:

```
THIS SITE // React + Vite + 커스텀 캔버스 애니메이션 · 직접 설계·구현 (템플릿 아님)
```

---

## 우선순위 5 — 스캔성 (테마는 유지)

- 화려함 유지하되 **핵심 성과 숫자(97.5%, -54%, 0.75s)만 흰색/고대비**로 튀게.
- 핵심 텍스트 위 타이핑/모션은 살짝 완화(읽기 지연 방지). 의미 있는 NETWORK_MAP 등은 유지.

---

## 참고 — SEO / 봇 렌더 (선택)

React SPA라 JS 미실행 도구(링크 프리뷰·일부 ATS)엔 빈 페이지로 잡힘.
OG 태그는 이미 있음(title/description) → 링크 프리뷰는 최소 방어됨.
여유되면 프리렌더(vite-plugin-ssr / react-snap 등)로 정적 스냅샷 생성 검토.

---

## 정리

**30탈락은 이 포트폴리오 탓이 아님** (시장 빙하기 + 콜드 지원 채널 + 프로필 필터).
포트폴리오에서 고칠 핵심은 **"WithBuddy를 주인공으로"** 하나. 나머진 플러스알파.
채널 전략(스타트업·레퍼럴·직접컨택·도메인 매칭)이 지원 결과엔 더 큰 레버.

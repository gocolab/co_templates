- RAG langGraph 위한 dev langGraph Studio와 mongoDB 연계하는 기본 설정
- URI 통한 image 접속 제공
  
#### Main package
- python:3.11
- mongo:7
- langGraph Studio

ports:
  - "8000:8000"  # LangGraph Studio
  - "8080:8080"  # VS Code 서버    

#### connect remote Docker container
- @VS Code Server: http://localhost:8080 (비밀번호: docker-compose.yml에서 설정한 값)
```
~$ langgraph dev --port 8000 --host 0.0.0.0
```

#### samples
```
~$ cp .env_copy .env
~$ vi .env
OPENAI_API_KEY=<your api key>
```
- @LangGraph Studio: https://smith.langchain.com/studio/?baseUrl=http://127.0.0.1:8000


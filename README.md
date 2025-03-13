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
```
~$ uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
```
- @VS Code Server: http://localhost:8080 (비밀번호: docker-compose.yml에서 설정한 값)
` @LangGraph Studio: http://localhost:8000

#### samples
- [app/samples/sample_mongodb_connection.py](./app/samples/sample_mongodb_connection.py)
- [app/main.py](./app/main.py)

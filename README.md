1. mirror 옵션을 이용한 clone
```
$ git clone --mirror { git repository 주소 }

- 만약 특정 브랜치만 가져오고 싶다면
$ git clone -b { 브랜치명 } --single-branch --mirror { git repository 주소 }
```

2. 새로운 repo와 연결
```
- clone을 정상적으로 완료됐다면 repository명.git 파일이 생성되어 있을 것이다.
$ cd { repository명.git }

- 위 명령으로 경로 이동 후 .git으로 변경한 디렉토리에서 아래 명령을 실행
$ git remote set-url origin { 새로운 repository 주소 }
```

3. 새로운 repo와 push
```
.git으로 변경한 디렉토리에서 아래 명령을 실행
아래의 명령을 실행하게 되면 새로운 repository로 push 된다.
$ git push --mirror
```

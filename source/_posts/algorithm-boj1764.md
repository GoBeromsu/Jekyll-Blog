---
emoji: 🏃
categories: algorithm
title: 백준 1764 듣보잡
author: 범수
date: '2022-03-10 18:00:00'
tags: 블로그
description:
---
<!-- 
튜토리얼, 하우 투 가이드, 설명 ,레퍼런스 
https://documentation.divio.com/tutorials/
-->

## 문제

김진영이 듣도 못한 사람의 명단과, 보도 못한 사람의 명단이 주어질 때, 듣도 보도 못한 사람의 명단을 구하는 프로그램을 작성하시오.

1. 첫째 줄에 듣도 못한 사람의 수 N, 보도 못한 사람의 수 M이 주어진다.
2. 둘재 줄부터 순서대로 듣도 못한 사람과 보도 못한 사람의 이름이 순서대로 입력됨

### 출력

듣도 보도 못한 사람의 수와 이름을 출력하라

## 풀이

```python
import sys

n, m = map(int, sys.stdin.readline().split())
nset = set()
mset = set()
for i in range(n):
    nset.add(sys.stdin.readline().rstrip())
for j in range(m):
    mset.add(sys.stdin.readline().rstrip())

result = list(nset.intersection(mset))

print(len(result))
for r in sorted(result):
    print(r)

```
교집합을 사용하면 쉽게 문제를 풀 수 있을거라 생각했다.
각각 공집합을 만들어 원소를 입력하고, 교집합을 구한 후 list로 변환하고 제출하였다
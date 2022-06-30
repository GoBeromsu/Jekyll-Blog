---
emoji: 🏃
categories: algorithm
title: 백준 1074 Z
author: 범수
date: '2022-03-10 18:00:00'
tags: 블로그
---
<!-- 
튜토리얼, 하우 투 가이드, 설명 ,레퍼런스 
https://documentation.divio.com/tutorials/
-->

# 백준 1074 Z

## 문제

한수는 크기가 2N × 2N인 2차원 배열을 Z모양으로 탐색하려고 한다. 예를 들어, 2×2배열을 왼쪽 위칸, 오른쪽 위칸, 왼쪽 아래칸, 오른쪽 아래칸 순서대로 방문하면 Z모양이다.

N > 1인 경우, 배열을 크기가 2N-1 × 2N-1로 4등분 한 후에 재귀적으로 순서대로 방문한다.
N이 주어졌을 때, r행 c열을 몇 번째로 방문하는지 출력하는 프로그램을 작성하시오.

## 풀이

```python
import sys

N,r,c = map(int,sys.stdin.readline().split())

ans = 0

while N!=0:
    N-=1
    if r<2**N and c<2**N:
        continue
    elif r<2**N and c>=2**N:
        ans +=(2**N)*(2**N)*1
        c-=(2**N)
    elif r>=2 **N and c<2**N:
        ans+=(2**N)*(2**N)*2
        r-=(2**N)
    else:
        ans+=(2**N)*(2**N)*3
        r-=(2**N)
        c-=(2**N)

print(ans)
```

[이 블로그](https://ggasoon2.tistory.com/11)를 참고했습니다. 꽤나 까다로운 문제였습니다.

분할과 재귀 문제라는데 머리론 이해가 되는데 구현을 못하는 상황에 직면했습니다.

문제는 말 그대로 쪼개면 됩니다. N 크기의 맵에서 어느 사분면에 해당하는지 찾은 후 쪼갠 맵에서 다시 어느 사분면에 해당하는지 찾습니다.

복습이 필요한 문제이다.
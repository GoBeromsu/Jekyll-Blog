---
emoji: 🏃
categories: algorithm
title: 백준 1149 RGB 거리
author: 범수
date: '2022-03-10 18:00:00'
tags: 블로그
---
<!-- 
튜토리얼, 하우 투 가이드, 설명 ,레퍼런스 
https://documentation.divio.com/tutorials/
-->

# 백준 1149 RGB 거리
## 문제
RGB거리에는 집이 N개 있다. 거리는 선분으로 나타낼 수 있고, 1번 집부터 N번 집이 순서대로 있다.

집은 빨강, 초록, 파랑 중 하나의 색으로 칠해야 한다. 각각의 집을 빨강, 초록, 파랑으로 칠하는 비용이 주어졌을 때, 아래 규칙을 만족하면서 모든 집을 칠하는 비용의 최솟값을 구해보자.

1번 집의 색은 2번 집의 색과 같지 않아야 한다.
N번 집의 색은 N-1번 집의 색과 같지 않아야 한다.
i(2 ≤ i ≤ N-1)번 집의 색은 i-1번, i+1번 집의 색과 같지 않아야 한다.
## 풀이
## 코드
```PYTHON
import sys

n = int(sys.stdin.readline())
dp = [[0]*3 for i in range(n)]
numbers=[]
for i in range(n):
    numbers.append(list(map(int,sys.stdin.readline().split())))
dp[0]=numbers[0]
for i in range(1,n):
    dp[i][0]=min(dp[i-1][1],dp[i-1][2])+numbers[i][0]
    dp[i][1]=min(dp[i-1][0],dp[i-1][2])+numbers[i][1]
    dp[i][2]=min(dp[i-1][1],dp[i-1][0])+numbers[i][2]

print(min(dp[n-1]))
```
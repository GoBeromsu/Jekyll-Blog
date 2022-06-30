---
emoji: 🏃
categories: algorithm
title: 백준 4673 - 셀프 넘버
author: 범수
date: '2022-03-10 18:00:00'
tags: 블로그
---
<!-- 
튜토리얼, 하우 투 가이드, 설명 ,레퍼런스 
https://documentation.divio.com/tutorials/
-->

# 백준 4673 - 셀프 넘버

## 문제

10000보다 작거나 같은 셀프 넘버를 한 줄에 하나씩 출력하라

### 셀프 넘버란

양의 정수 n에 대해서 d(n)을 n과 n의 각 자리수를 더하는 함수라고 정의하자. 예를 들어, d(75) = 75+7+5 = 87이다.
이 때 n을 d(n)의 생성자라한다. 즉 75는 87이다.

셀프 넘버는 생성자가 없는 수이다.

## 문제 풀이

### 셀프 넘버를 어떻게 찾을 것인가?

셀프 넘버는 전체 정수에서 생성자가 있는 숫자들의 차집합이다.
셀프 넘버를 직접 구하기 보단 생성자가 있는 숫자들을 구해서 제거하는게 더 빠를거라 생각했다.

### 풀이 순서

1. 0으로 초기화된 index 10000개 배열 arr을 생성
2. 입력 값 n에 따라 생성자를 반환하는 함수 checkD 선언
3. 인덱스 1~10000을 checkD()에 넣어 arr에 생성자를 체크한다
4. arr 내에 체크되지 않은 인덱스(셀프 넘버)를 출력한다

### Code

```python
arr =[0 for i in range(10000)]
count=1

def checkD(n:int):z
    sum=n
    divValue=0
    while True:
        dLength=len(str(n))
        if(dLength==1):
            sum+=n
            break
        else:
            number= (10**(dLength-1))
            divValue=int(n/number)
            sum+=divValue
            n=n%(divValue*number)
    return sum    

for i in range(1,len(arr)+1):
    target=checkD(i)
    if (target>=10000):
        continue
    else:
        arr[target] = 1


for i in range(1,len(arr)):
    if (arr[i]!=1):
        print(i)

```

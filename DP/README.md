# 动态规划

* 动态规划问题的一般形式是求最值

* 求解动态规划问题的核心是穷举

  * 存在**「重叠子问题」**
  * 具备**「最优子结构」**

  * 穷举的关键是**「状态转移方程」**

状态转移方程思维框架：

```
明确「状态」 -> 定义 DP 数组/函数的含义 -> 明确「选择」 -> 明确 base case
```

## 斐波那契数列

* 简单递归暴力求解

```c
int fib(int N) {
    if (N == 1 || N == 2) return 1;
    return fib(N - 1) + fib(N - 2);
}
```



> 递归问题的时间复杂度怎么算？子问题个数 * 子问题的时间复杂度

```c
int fib(int N) {
    vector<int> dp(N + 1, 0);
    // base case
    dp[1] = dp[2] = 1;
    for (int i = 3; i <= N; i++)
        dp[i] = dp[i - 1] + dp[i - 2];
    return dp[N];
}
```

动态转移方程：

![img](https://gblobscdn.gitbook.com/assets%2F-LrtQOWSnDdXhp3kYN4k%2F-M3U3aNXgGJVkKZ-TldN%2F-M0SeazMTJ4s2Y0pPdIz%2Ffib.png?generation=1585364271219618&alt=media)

* 进一步优化：仅保留之前的两个状态即可

```c
int fib(int n) {
    if (n == 2 || n == 1) 
        return 1;
    int prev = 1, curr = 1;
    for (int i = 3; i <= n; i++) {
        int sum = prev + curr;
        prev = curr;
        curr = sum;
    }
    return curr;
}
```

## 凑零钱问题

> 要符合「最优子结构」，子问题间必须互相独立

```c
int coinChange(vector<int>& coins, int amount) {
    // 数组大小为 amount + 1，初始值也为 amount + 1
    vector<int> dp(amount + 1, amount + 1);
    // base case
    dp[0] = 0;
    for (int i = 0; i < dp.size(); i++) {
        // 内层 for 在求所有子问题 + 1 的最小值
        for (int coin : coins) {
            // 子问题无解，跳过
            if (i - coin < 0) continue;
            dp[i] = min(dp[i], 1 + dp[i - coin]);
        }
    }
    return (dp[amount] == amount + 1) ? -1 : dp[amount];
}
```

## 总结

* 先思考「如何穷举」，再追求「如何聪明地穷举」
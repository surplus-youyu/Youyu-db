# database
something about database
## 问卷格式
```
{
  "1": {
    title: "...",
    options: { // 输入题的话字段为空对象
      "A": ".....",
      ...
    },
    inputs: "..."
  },
  "2": ...
}
```
## 问卷答案格式
```
{
  uid: ...,
  answer: {
    "1": {
      options: [...],
      inputs: "..."
    },
    "2": ...
  }
}
```

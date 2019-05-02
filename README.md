# database
something about database
## 问卷格式
```
{
  id: ...,
  title: ...,
  publisher_id: ...,
  content: {
    "1": {
      title: "...",
      type: "short answer" // 或者"choice", "multiple choice"
      options: { // 输入题的话字段为空对象
        "A": ".....",
        ...
      }
    },
    "2": ...
  }
}
```
## 问卷答案格式
```
{
  uid: ...,
  answer: {
    "1": {
      options: [...],
      input: "..."
    },
    "2": ...
  }
}
```

# database
something about database
## 问卷格式
```
{
    "id": 1,
    "title": "Survey",
    "publisher_id": 1,
    "content": [
        {
            "title": "How do you like...",
            "type": 1, // 单选 1, 多选 2, 填空 3
            "options": { // 输入题的话字段为空对象
                "...",
                "..."
            },
            "optional": True, // 是否可以不填，选填
            "limit": 2 // 多选时，判断最多可选多少项，没有限制为0或者为空
        },
        {
            ...
        }
    ]
}
```
## 问卷答案格式
```
{
  uid: ...,
  answer: [
    {
      options: [...],
      input: "..."
    },
    ...
  ]
}
```


### Have a MongoDB running for the correct execution of the application
***Docker configuration in proccess***


### Run tests

```sh
bundle exec rspec
```


### Run application
```sh
rails server
```

### Now sign up and sign in a user
- Sign up: Endpoint: http://localhost:3000/users
```sh
{
	"email": "everson@gmail.com",
	"password": "123456"
}
```
- Sign in: http://localhost:3000/api/v1/auth
```sh
{
	"email": "everson@gmail.com",
	"password": "123456"
}
```
- Response
```sh
{
  "token": "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOnsiJG9pZCI6IjYwYTQzOTg0OGQwZmJmNzI1MzU5ZWQ1ZCJ9LCJleHAiOjE2MjI1ODUwMjh9.qQGErKur2k2UgYh1hJ2O_5GRAe0Ext6bKZV1zp11v24"
}
```

### Add the token in headers and make a request
- quotes: Endpoint: http://localhost:3000/api/v1/quotes/edison
- Response
```sh
{
  "quotes": [
    {
      "_id": {
        "$oid": "60a460da8d0fbf0c8cdf9f40"
      },
      "author": "“I have not failed. I've just found 10,000 ways that won't work.”",
      "author_link": "http://quotes.toscrape.com/page/1/author/Thomas-A-Edison",
      "quote": "Thomas A. Edison",
      "tags": [
        "edison",
        "failure",
        "inspirational",
        "paraphrased"
      ]
    }
  ]
}
```




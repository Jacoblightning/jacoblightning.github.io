# Welcome to the blog
Here I will be writing my opinion of privacy, security, open source, and other matters.

Remember, this is all my opinion. Don't get angry over it.

If you see a factual error, don't hesitate to point it out in the [issues](https://github.com/Jacoblightning/jacoblightning.github.io/issues/new).

Anyway Here are the posts: (If you prefer a more tag sorted list, that's over [here](/tags))
# Blog posts:
{% for post in site.posts %}
- [{{ post.title }}]({{ post.url }})
{% endfor %}
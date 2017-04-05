# rails-practice-jkf
> Rails practice jkf.cn

## step by step:
+ routes:
```ruby
resources :news, :only=>[:index, :show]
resources :works, :only=>[:index, :show]
resources :links, :only=>[:index, :show]

get 'index=>pages#index'
get 'about=>pages#about'
get 'news=>pages#news'
get 'contact=>pages#contact'
```

+ sanfocad:
```bash
rl-gs news title:string content:text
rl-gs works title:string desc:string image:string
rl-gs links title:string image:string link:string
rails db:migrate

rl-gc pages index about news works contact
```


## databases:
+ news  (新闻中心)
+ works (作品)
+ links (友情链接)

## resources:
+ http://www.jkf.cn/
+ https://github.com/windy/wblog
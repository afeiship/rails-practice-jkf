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
rl-gs admin/news title:string content:text
rl-gs admin/works title:string desc:string image:string
rl-gs admin/links title:string image:string link:string

rails db:migrate

rl-gc pages index about news works contact
```


## databases:
+ news  (新闻中心)
+ works (作品)
+ links (友情链接)

## mock admin:
```bash
## add this to your env profile:
export ADMIN_USER='admin';
export ADMIN_PASSWORD='test';
```

## resources:
+ http://www.jkf.cn/
+ https://github.com/windy/wblog
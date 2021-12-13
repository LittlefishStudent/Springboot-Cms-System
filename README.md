# 基于SpringBoot的企业cms内容管理系统
## 项目介绍
- 关于该项目，是本人本科毕业时写的完整毕设项目，对于学习Springboot是个挺不错的练手项目，可以让你在烦恼的业务逻辑中保持一颗纯洁的心
- 使用maven进行项目配置管理，让小白也能轻松上手
- 开发前的一些准备工作，以及思考项目整体结构与思路
- 前端：前端页面大部分页面使用LAYUI框架，前端使用jsp结合jquery，js，ajax，css展示页面和跟后端进行交互，
- 后端：后台使用Springboot框架，使用服务器session对当前登录用户进行缓存，使用Maven项目构建和管理工具，上传文件通过将文件复制到tomcat路径下，然后使用url进行访问实现，数据库使用mysql存储数据
- 数据流说明：当用户使用链接访问页面时，实际是先访问控制器（即controller的接口），控制器通过定义@RequestMapping定义链接路径，例如：

![image](https://user-images.githubusercontent.com/57835580/145515172-5b14512a-cb3b-42cf-9ba6-be38d0108e10.png)

上图的访问路径是：http://ip:端口/commonapi/admin_login，结果返回”admin_login”，实际是指向：admin_login.jsp页面，系统配置前缀（例如：/WEB-INF/views）,后缀（.jsp），所以返回”admin_login”
Controller中带有： @ResponseBody的接口返回的是对象，前端通常使用ajax请求请求此类接口：例如：
![image](https://user-images.githubusercontent.com/57835580/145515900-b874c8d7-8aaa-47e4-8ce7-d7cc6e46fccc.png)
![image](https://user-images.githubusercontent.com/57835580/145515903-eeb3bc58-4186-4c6e-8078-6ca77abb0b01.png)

## 视频展示

https://user-images.githubusercontent.com/57835580/145515659-725b7bf3-5cf7-4692-9957-6a4917c1c2b0.mp4

## 前台展示
#### 首页展示
![image](https://user-images.githubusercontent.com/57835580/145516278-f26f02ab-5dd1-40cb-8ea0-381a64a1f42b.png)
![image](https://user-images.githubusercontent.com/57835580/145516299-5b004650-55f0-455d-81d3-98bf46484ac3.png)
![image](https://user-images.githubusercontent.com/57835580/145516320-52bc69c2-22d1-4400-a6fa-3f0c6336d14d.png)
![image](https://user-images.githubusercontent.com/57835580/145516334-39016edf-923d-41c7-b2ad-0d35dc8ecc0c.png)
![image](https://user-images.githubusercontent.com/57835580/145516364-b7bfbfba-8ae0-466e-ad33-2b55ed742f42.png)
![image](https://user-images.githubusercontent.com/57835580/145516387-181aee0d-45ec-463f-aa8b-2e01408db7ba.png)
#### 新闻页展示
![image](https://user-images.githubusercontent.com/57835580/145516439-a05b69a9-1f7d-4268-9f64-8e60d79f718a.png)
#### 案例页展示
![image](https://user-images.githubusercontent.com/57835580/145516475-795c8bec-8458-4ccc-85e6-6baf923411bd.png)
#### 常见问题页展示
![image](https://user-images.githubusercontent.com/57835580/145516535-f3567471-dbbb-4046-883f-95167364c4e8.png)

## 后端展示
#### 后台首页展示
![image](https://user-images.githubusercontent.com/57835580/145516607-d4fcb98f-f448-46aa-863e-7f9efcf3605c.png)
#### 新闻查询发布展示
![image](https://user-images.githubusercontent.com/57835580/145516650-69b36558-ee8d-4a9f-a84a-6a95cd4ddae1.png)
![image](https://user-images.githubusercontent.com/57835580/145516679-190db9f6-4918-4d40-8c00-5dda37d97f6d.png)

## 总体设计
- 本项目用到的技术和框架
1. 项目构建：Maven
2. web框架：Springboot
3. 数据库ORM：Mybatis
4. 数据库：MySql5.7
5. 缓存：Redis
6. 前端模板：LAYUI-Html5

- 本项目中的关键点
1. 采用Springboot开发，数据库使用连接池加orm框架的模式
2. 整体系统采用企业+后台管理+后台内容管理系统的方式搭建，门户网站展示企业产品内容以及企业介绍，后台管理用于编辑新闻，发布产品。




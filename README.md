# 基于SpringBoot的企业cms内容管理系统
# 项目介绍
- 关于项目，对于学习Springboot是个挺不错的练手项目，可以让你在烦恼的业务逻辑中保持一颗纯洁的心
- 如何从零开始，使用Springboot开发项目
开发前的一些准备工作，以及思考项目整体结构与思路
记录开发过程中遇到的一些难题以及bug
总结目前博客网站的一些优缺点
思考整个项目有哪些可以优化的地方，以及有哪些可增加的功能
前端：前端页面大部分页面使用LAYUI框架，前端使用jsp结合jquery，js，ajax，css展示页面和跟后端进行交互，
后端：后台使用Springboot框架，使用服务器session对当前登录用户进行缓存，使用Maven项目构建和管理工具，上传文件通过将文件复制到tomcat路径下，然后使用url进行访问实现，数据库使用mysql存储数据
数据流说明：当用户使用链接访问页面时，实际是先访问控制器（即controller的接口），控制器通过定义@RequestMapping定义链接路径，例如：
![image](https://user-images.githubusercontent.com/57835580/145515172-5b14512a-cb3b-42cf-9ba6-be38d0108e10.png)

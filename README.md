# Springboot-Cms-System
基于SpringBoot的企业cms内容管理系统
前端：前端页面大部分页面使用LAYUI框架，前端使用jsp结合jquery，js，ajax，css展示页面和跟后端进行交互，
后端：后台使用Springboot框架，使用服务器session对当前登录用户进行缓存，使用Maven项目构建和管理工具，上传文件通过将文件复制到tomcat路径下，然后使用url进行访问实现，数据库使用mysql存储数据
数据流说明：当用户使用链接访问页面时，实际是先访问控制器（即controller的接口），控制器通过定义@RequestMapping定义链接路径，例如：
![image](https://user-images.githubusercontent.com/57835580/145515172-5b14512a-cb3b-42cf-9ba6-be38d0108e10.png)

package com.seckillproject.seckill;

import com.seckillproject.dao.UserDOMapper;
import com.seckillproject.dataobject.UserDO;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication(scanBasePackages = {"com.seckillproject"})
@MapperScan("com.seckillproject.dao")
@RestController
public class SeckillApplication {

    @Autowired
    public UserDOMapper userDOMapper;

    @RequestMapping("/")
    public String home(){
        UserDO userDO = userDOMapper.selectByPrimaryKey(1);
        if(userDO == null) {
            return "用户对象不存在";
        } else
            return userDO.getName();
    }

    public static void main(String[] args) {
        SpringApplication.run(SeckillApplication.class, args);
    }

}

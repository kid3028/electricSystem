package com.electric.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "tb_user")
@Entity
@Data
@DynamicUpdate
@DynamicInsert
@NoArgsConstructor
@ToString
public class User {
    @Id
    @GeneratedValue
    private Integer id;

    /**
     * 用户名
     */
    private String userName;

    /**
     * 姓名
     */
    private String fullName;

    /**
     * 密码
     */
    private String password;

    /**
     * 工号
     */
    private Integer empNumber;

    /**
     * 部门
     */
    private String dept;

    /**
     * 电话
     */
    private String phone;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 是否为管理人员 0：普通 1：管理
     */
    private Integer IsMgn;

    private Date createTime;

    private Date updateTime;


    public User(String userName, String fullName, String password, Integer empNumber, String dept, String phone, Integer age, Integer isMgn) {
        this.userName = userName;
        this.fullName = fullName;
        this.password = password;
        this.empNumber = empNumber;
        this.dept = dept;
        this.phone = phone;
        this.age = age;
        IsMgn = isMgn;
    }
}

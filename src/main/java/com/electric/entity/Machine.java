package com.electric.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "tb_machine")
@Entity
@Data
@DynamicUpdate
@DynamicInsert
@NoArgsConstructor
public class Machine {

    @Id
    @GeneratedValue
    private Integer id;

    /**
     * 设备名称
     */
    private String machineName;

    /**
     * 设备编号
     */
    private String serialNumber;

    /**
     * 电压等级
     */
    private String voltageGrade;

    /**
     * 品牌
     */
    private String brand;

    private Date createTime;

    private Date updateTime;






}

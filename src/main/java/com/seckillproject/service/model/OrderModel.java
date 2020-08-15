package com.seckillproject.service.model;

import java.math.BigDecimal;

//用户下单的交易模型
public class OrderModel {

    //2020081200001812
    private String id;//id为String类型而不是Integer,因为会有明显的字符串拼接,前面是年月日后面是什么什么
    //购买的用户id
    private Integer userId;

    //购买的商品id
    private Integer itemId;//商品的单价可能会变化，这里记录当时购买的时候的单价是多少

    //购买商品的单价，若promoId非空则表示秒杀单价
    private BigDecimal itemPrice;

    //若非空则以秒杀商品方式下单
    private Integer promoId;

    //购买的数量
    private Integer amount;

    //购买的金额，若promoId非空则表示秒杀金额
    private BigDecimal orderPrice;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public BigDecimal getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(BigDecimal orderPrice) {
        this.orderPrice = orderPrice;
    }

    public BigDecimal getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(BigDecimal itemPrice) {
        this.itemPrice = itemPrice;
    }

    public Integer getPromoId() {
        return promoId;
    }

    public void setPromoId(Integer promoId) {
        this.promoId = promoId;
    }
}

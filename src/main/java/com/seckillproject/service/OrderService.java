package com.seckillproject.service;

import com.seckillproject.error.BusinessException;
import com.seckillproject.service.model.OrderModel;

public interface OrderService {
    //1通过前端传过来promoId,然后下单接口内校验对应id是否属于对应商品且活动已开始
    //2直接在下单接口内判断对应的商品是否存在秒杀活动，若存在进行中的则以秒杀价格下单
    //倾向于第一种，第一个原因因为一个商品可能会存在不同APP的有不同的秒杀活动，所以让前端传promoId
    //第二个原因因为如果在订单接口里还要判断秒杀活动领域模型，相当于任何平销商品也要去判断，性能低
    OrderModel createOrder(Integer userId, Integer itemId, Integer promoId, Integer amount) throws BusinessException;

}

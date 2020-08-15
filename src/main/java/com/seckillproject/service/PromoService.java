package com.seckillproject.service;

import com.seckillproject.service.model.PromoModel;

public interface PromoService {
    //根据ItemId获取即将进行或正在进行的秒杀活动
    PromoModel getPromoByItemId(Integer itemId);
}

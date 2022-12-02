package com.gjm.mall.service;

import com.gjm.mall.entity.Goods;
import com.gjm.mall.entity.Rating;

import java.util.List;

public interface GoodsService {
    Goods queryGoodsById(int goods_id);
    Goods queryGoodsByUser_GoodsId(int user_id,int goods_id);
    Rating queryRatingByGoodsId(int goods_id);

    int updateRating(Rating rating);

    List<Goods> queryGoodsByTypeId(int type_id);
}

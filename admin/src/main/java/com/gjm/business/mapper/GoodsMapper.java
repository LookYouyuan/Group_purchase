package com.gjm.business.mapper;

import com.gjm.business.entity.Goods;

import java.util.List;

public interface GoodsMapper {
    List<Goods> queryGoods();

    int updateGoods(Goods goods);
    Goods queryGoodsById(int goods_id);

    int deleteGoods(int goods_id);

    int addGoods(Goods goods);
}

package com.gjm.mall.service.Impl;

import com.gjm.mall.entity.Goods;
import com.gjm.mall.entity.Rating;
import com.gjm.mall.mapper.GoodsMapper;
import com.gjm.mall.service.GoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Resource
    private GoodsMapper goodsMapper;

    @Override
    public Goods queryGoodsById(int goods_id) {
        return this.goodsMapper.queryGoodsById(goods_id);
    }

    @Override
    public Goods queryGoodsByUser_GoodsId(int user_id,int goods_id) {
        return this.goodsMapper.queryGoodsByUser_GoodsId(user_id,goods_id);
    }

    @Override
    public Rating queryRatingByGoodsId(int goods_id) {
        return this.goodsMapper.queryRatingByGoodsId(goods_id);
    }

    @Override
    public int updateRating(Rating rating) {
        return this.goodsMapper.updateRating(rating);
    }

    @Override
    public List<Goods> queryGoodsByTypeId(int type_id) {
        return this.goodsMapper.queryGoodsByTypeId(type_id);
    }


}

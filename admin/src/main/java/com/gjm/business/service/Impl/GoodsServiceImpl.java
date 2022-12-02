package com.gjm.business.service.Impl;

import com.gjm.business.entity.Goods;
import com.gjm.business.mapper.GoodsMapper;
import com.gjm.business.service.GoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Resource
    private GoodsMapper goodsMapper;

    @Override
    public List<Goods> queryGoods() {
        return this.goodsMapper.queryGoods();
    }

    @Override
    public int updateGoods(Goods goods) {
        return this.goodsMapper.updateGoods(goods);
    }

    @Override
    public Goods queryGoodsById(int goods_id) {
        return this.goodsMapper.queryGoodsById(goods_id);
    }

    @Override
    public int deleteGoods(int goods_id) {
        return this.goodsMapper.deleteGoods(goods_id);
    }

    @Override
    public int addGoods(Goods goods) {
        return this.goodsMapper.addGoods(goods);
    }
}

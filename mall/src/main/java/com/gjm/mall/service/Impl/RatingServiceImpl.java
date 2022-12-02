package com.gjm.mall.service.Impl;

import com.gjm.mall.entity.Rating;
import com.gjm.mall.mapper.RatingMapper;
import com.gjm.mall.service.RatingService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RatingServiceImpl implements RatingService {

    @Resource
    private  RatingMapper ratingMapper;
    @Override
    public List<Rating> queryRating(int user_id) {
        return this.ratingMapper.queryRating(user_id);
    }

    @Override
    public Rating queryRatingById(int id) {
        return this.ratingMapper.queryRatingById(id);
    }

    @Override
    public int addRating(Rating rating) {
        return this.ratingMapper.addRating(rating);
    }


}

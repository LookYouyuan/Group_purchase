package com.gjm.mall.mapper;

import com.gjm.mall.entity.Rating;

import java.util.List;

public interface RatingMapper {
    List<Rating> queryRating(int user_id);

    Rating queryRatingById(int id);

    int addRating(Rating rating);

}

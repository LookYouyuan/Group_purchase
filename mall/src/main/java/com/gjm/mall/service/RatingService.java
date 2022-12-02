package com.gjm.mall.service;

import com.gjm.mall.entity.Rating;

import java.util.List;

public interface RatingService {
    List<Rating> queryRating(int user_id);
    Rating queryRatingById(int id);

    int addRating(Rating rating);

}

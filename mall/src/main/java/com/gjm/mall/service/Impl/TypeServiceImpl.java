package com.gjm.mall.service.Impl;

import com.gjm.mall.entity.Type;
import com.gjm.mall.mapper.TypeMapper;
import com.gjm.mall.service.TypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TypeServiceImpl implements TypeService {
    @Resource
    private TypeMapper typeMapper;
    @Override
    public List<Type> queryType() {
        return this.typeMapper.queryType();
    }
}

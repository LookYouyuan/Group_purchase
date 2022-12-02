package com.gjm.business.service.Impl;

import com.gjm.business.entity.Type;
import com.gjm.business.mapper.TypeMapper;
import com.gjm.business.service.TypeService;
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

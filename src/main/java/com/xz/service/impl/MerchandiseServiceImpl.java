package com.xz.service.impl;

import com.xz.mapper.MerchandiseMapper;
import com.xz.pojo.Merchandise;
import com.xz.service.MerchandiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("merchandise")
public class MerchandiseServiceImpl implements MerchandiseService {


    @Autowired
    public MerchandiseMapper merchandiseMapper;


    @Override
    public boolean add_Merchandise(Merchandise merchandise) {

        int row   = merchandiseMapper.addMerchandise(merchandise);
        return row == 1 ? true:false;
    }

    @Override
    public List<Merchandise> selectAllMerchandise() {
        List<Merchandise> list = merchandiseMapper.select_allMerchandise();
        return list;
    }
}

package com.xz.service.impl;

import com.xz.mapper.M_merchandiseMapper;
import com.xz.pojo.M_merchandise;
import com.xz.service.M_merchandiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("m_merchandiseService")
public class M_merchandiseServiceImpl implements M_merchandiseService {

    @Autowired
    public M_merchandiseMapper m_merchandiseMapper;


    @Override
    public boolean add_M_merchandise(M_merchandise m_merchandise) {

        int row = m_merchandiseMapper.addM_merchandise(m_merchandise);
        return row == 1 ? true:false;
    }

    @Override
    public List<M_merchandise> selectAllM_merchandise(int machineId) {
        List<M_merchandise> list = m_merchandiseMapper.select_allM_merchandise(machineId);
        return list;
    }

    @Override
    public boolean deleteAM_merchandise(M_merchandise m_merchandise) {
        int row = m_merchandiseMapper.delete_AM_merchandise(m_merchandise);
        return row == 1 ? true:false;
    }

    @Override
    public boolean updateAM_merchandise(M_merchandise m_merchandise) {
        int row = m_merchandiseMapper.update_AM_merchandise(m_merchandise);
        return row == 1 ? true:false;
    }
}

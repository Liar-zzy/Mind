package com.xz.service;

import com.xz.pojo.M_merchandise;

import java.util.List;

public interface M_merchandiseService {

    boolean add_M_merchandise(M_merchandise m_merchandise);

    List<M_merchandise> selectAllM_merchandise();
}

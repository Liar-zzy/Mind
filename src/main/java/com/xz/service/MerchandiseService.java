package com.xz.service;

import com.xz.pojo.Merchandise;

import java.util.List;

public interface MerchandiseService {

    boolean add_Merchandise(Merchandise merchandise);

    List<Merchandise> selectAllMerchandise();
}

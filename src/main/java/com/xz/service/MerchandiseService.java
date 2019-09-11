package com.xz.service;

import com.xz.pojo.Merchandise;

import java.util.List;

public interface MerchandiseService {

    boolean add_Merchandise(Merchandise merchandise);

    List<Merchandise> selectAllMerchandise();

    boolean deleteAMerchandise(int merchandiseId);

    boolean updateAMerchandise(Merchandise merchandise);

    Merchandise checkMerchandise(Merchandise merchandise);
}

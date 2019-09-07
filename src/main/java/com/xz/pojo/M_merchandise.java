package com.xz.pojo;

public class M_merchandise {

    private int machine_id;

    private int merchandise_id;

    private int margin;

    private int item_id;

    private int sold_num;

    private double sold_sum;

    public int getMachine_id() {
        return machine_id;
    }

    public void setMachine_id(int machine_id) {
        this.machine_id = machine_id;
    }

    public int getMerchandise_id() {
        return merchandise_id;
    }

    public void setMerchandise_id(int merchandise_id) {
        this.merchandise_id = merchandise_id;
    }

    public int getMargin() {
        return margin;
    }

    public void setMargin(int margin) {
        this.margin = margin;
    }

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }

    public int getSold_num() {
        return sold_num;
    }

    public void setSold_num(int sold_num) {
        this.sold_num = sold_num;
    }

    public double getSold_sum() {
        return sold_sum;
    }

    public void setSold_sum(double sold_sum) {
        this.sold_sum = sold_sum;
    }
}

package com.xz.pojo;

public class M_merchandise {

    private int machineId;

    private int merchandiseId;

    private int margin;

    private int itemId;

    private int soldNum;

    private double soldSum;

    public int getMachineId() {
        return machineId;
    }

    public void setMachineId(int machineId) {
        this.machineId = machineId;
    }

    public int getMerchandiseId() {
        return merchandiseId;
    }

    public void setMerchandiseId(int merchandiseId) {
        this.merchandiseId = merchandiseId;
    }

    public int getMargin() {
        return margin;
    }

    public void setMargin(int margin) {
        this.margin = margin;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public int getSoldNum() {
        return soldNum;
    }

    public void setSoldNum(int soldNum) {
        this.soldNum = soldNum;
    }

    public double getSoldSum() {
        return soldSum;
    }

    public void setSoldSum(double soldSum) {
        this.soldSum = soldSum;
    }

    @Override
    public String toString() {
        return "M_merchandise{" +
                "machineId=" + machineId +
                ", merchandiseId=" + merchandiseId +
                ", margin=" + margin +
                ", itemId=" + itemId +
                ", soldNum=" + soldNum +
                ", soldSum=" + soldSum +
                '}';
    }
}

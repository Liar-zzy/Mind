package com.xz.pojo;

public class Machine {

    private int machineId;

    private String name;

    private String type;

    private String screen;

    private String possessor;

    private int itemNum;

    private int capacity;

    private String gps;

    private String addr;

    private String distriDate;

    private String endDate;

    private int state;

    public int getMachineId() {
        return machineId;
    }

    public void setMachineId(int machineId) {
        this.machineId = machineId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getScreen() {
        return screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
    }

    public String getPossessor() {
        return possessor;
    }

    public void setPossessor(String possessor) {
        this.possessor = possessor;
    }

    public int getItemNum() {
        return itemNum;
    }

    public void setItemNum(int itemNum) {
        this.itemNum = itemNum;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public String getGps() {
        return gps;
    }

    public void setGps(String gps) {
        this.gps = gps;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getDistriDate() {
        return distriDate;
    }

    public void setDistriDate(String distriDate) {
        this.distriDate = distriDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Machine{" +
                "machineId='" + machineId + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", screen='" + screen + '\'' +
                ", possessor='" + possessor + '\'' +
                ", itemNum=" + itemNum +
                ", capacity=" + capacity +
                ", gps='" + gps + '\'' +
                ", addr='" + addr + '\'' +
                ", distriDate='" + distriDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", state=" + state +
                '}';
    }
}

package model;

import java.util.List;

public class PageBean {
	/**当前页数据*/
    List<Goods> data;
    public List<Message> getMdata() {
		return mdata;
	}

	public void setMdata(List<Message> mdata) {
		this.mdata = mdata;
	}

	List<Message> mdata;
    /**首页*/
    int firstPage;
    /**上一页*/
    int prePage;
    /**下一页*/
    int nextPage;
    /**尾页,也是总页数*/
    int totalPage;

    /**当前页*/
    int currentPage;
    /**每页显示记录数*/
    int pageSize;
    /**总记录数*/
    int totalCount;

    public List<Goods> getData() {
        return data;
    }

    public void setData(List<Goods> data) {
        this.data = data;
    }

    /**
     * 计算首页
     *  写死了就是1
     * @return
     */
    public int getFirstPage() {
        return 1;
    }

    public void setFirstPage(int firstPage) {
        this.firstPage = firstPage;
    }

    /**
     * 上一页
     *   算法:如果当前页为1,那么上一页就是当前页;否则就当前页-1
     * @return
     *
     */
    public int getPrePage() {
        return this.getCurrentPage()==this.getFirstPage()?1:
                this.getCurrentPage()-1;
    }

    public void setPrePage(int prePage) {
        this.prePage = prePage;
    }

    /**
     * 下一页
     *  算法:若当前页是末页,则为末页;否则为当前页+1
     * @return
     */
    public int getNextPage() {
        return this.getCurrentPage()==this.getTotalPage()?this
                .getTotalPage():
                this.getCurrentPage()+1;
    }

    public void setNextPage(int nextPage) {
        this.nextPage = nextPage;
    }

    /**
     * 计算末页:
     *     算法:如果总记录数%每页显示记录数==0
     *          如果不能整数,等于总记录数/每页显示记录数+1
     * @return
     */
    public int getTotalPage() {
        return this.getTotalCount()%this.getPageSize()==0?this.getTotalCount()/this.getPageSize()
                :
                this.getTotalCount()/this.getPageSize()+1;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

}
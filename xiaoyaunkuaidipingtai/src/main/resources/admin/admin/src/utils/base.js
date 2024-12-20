const base = {
    get() {
        return {
            url : "http://localhost:8080/xiaoyaunkuaidipingtai/",
            name: "xiaoyaunkuaidipingtai",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/xiaoyaunkuaidipingtai/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "校园快递平台系统"
        } 
    }
}
export default base

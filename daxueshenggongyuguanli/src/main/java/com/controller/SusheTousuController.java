
package com.controller;

import java.io.File;
import java.math.BigDecimal;
import java.net.URL;
import java.text.SimpleDateFormat;
import com.alibaba.fastjson.JSONObject;
import java.util.*;
import org.springframework.beans.BeanUtils;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.context.ContextLoader;
import javax.servlet.ServletContext;
import com.service.TokenService;
import com.utils.*;
import java.lang.reflect.InvocationTargetException;

import com.service.DictionaryService;
import org.apache.commons.lang3.StringUtils;
import com.annotation.IgnoreAuth;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.entity.*;
import com.entity.view.*;
import com.service.*;
import com.utils.PageUtils;
import com.utils.R;
import com.alibaba.fastjson.*;

/**
 * 宿舍投诉
 * 后端接口
 * @author
 * @email
*/
@RestController
@Controller
@RequestMapping("/susheTousu")
public class SusheTousuController {
    private static final Logger logger = LoggerFactory.getLogger(SusheTousuController.class);

    private static final String TABLE_NAME = "susheTousu";

    @Autowired
    private SusheTousuService susheTousuService;


    @Autowired
    private TokenService tokenService;

    @Autowired
    private DictionaryService dictionaryService;//字典
    @Autowired
    private GonggaoService gonggaoService;//宿舍公告
    @Autowired
    private NewsService newsService;//校园资讯信息
    @Autowired
    private ShangpinService shangpinService;//二手商品
    @Autowired
    private ShangpinCollectionService shangpinCollectionService;//二手商品收藏
    @Autowired
    private ShangpinCommentbackService shangpinCommentbackService;//二手商品评价
    @Autowired
    private ShangpinOrderService shangpinOrderService;//二手商品订单
    @Autowired
    private SuguanService suguanService;//宿管
    @Autowired
    private SusheService susheService;//宿舍
    @Autowired
    private SusheTuisuService susheTuisuService;//退宿申请
    @Autowired
    private SusheYuyueService susheYuyueService;//入住申请
    @Autowired
    private SushexueshengService sushexueshengService;//宿舍学生
    @Autowired
    private XueshengService xueshengService;//学生
    @Autowired
    private XueshengKaoqinService xueshengKaoqinService;//学生考勤
    @Autowired
    private XueshengKaoqinListService xueshengKaoqinListService;//学生考勤详情
    @Autowired
    private UsersService usersService;//管理员


    /**
    * 后端列表
    */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, HttpServletRequest request){
        logger.debug("page方法:,,Controller:{},,params:{}",this.getClass().getName(),JSONObject.toJSONString(params));
        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永不会进入");
        else if("学生".equals(role))
            params.put("xueshengId",request.getSession().getAttribute("userId"));
        else if("宿管".equals(role))
            params.put("suguanId",request.getSession().getAttribute("userId"));
        CommonUtil.checkMap(params);
        PageUtils page = susheTousuService.queryPage(params);

        //字典表数据转换
        List<SusheTousuView> list =(List<SusheTousuView>)page.getList();
        for(SusheTousuView c:list){
            //修改对应字典表字段
            dictionaryService.dictionaryConvert(c, request);
        }
        return R.ok().put("data", page);
    }

    /**
    * 后端详情
    */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id, HttpServletRequest request){
        logger.debug("info方法:,,Controller:{},,id:{}",this.getClass().getName(),id);
        SusheTousuEntity susheTousu = susheTousuService.selectById(id);
        if(susheTousu !=null){
            //entity转view
            SusheTousuView view = new SusheTousuView();
            BeanUtils.copyProperties( susheTousu , view );//把实体数据重构到view中
            //级联表 学生
            //级联表
            XueshengEntity xuesheng = xueshengService.selectById(susheTousu.getXueshengId());
            if(xuesheng != null){
            BeanUtils.copyProperties( xuesheng , view ,new String[]{ "id", "createTime", "insertTime", "updateTime", "xueshengId"});//把级联的数据添加到view中,并排除id和创建时间字段,当前表的级联注册表
            view.setXueshengId(xuesheng.getId());
            }
            //级联表 宿舍
            //级联表
            SusheEntity sushe = susheService.selectById(susheTousu.getSusheId());
            if(sushe != null){
            BeanUtils.copyProperties( sushe , view ,new String[]{ "id", "createTime", "insertTime", "updateTime", "xueshengId"});//把级联的数据添加到view中,并排除id和创建时间字段,当前表的级联注册表
            view.setSusheId(sushe.getId());
            }
            //修改对应字典表字段
            dictionaryService.dictionaryConvert(view, request);
            return R.ok().put("data", view);
        }else {
            return R.error(511,"查不到数据");
        }

    }

    /**
    * 后端保存
    */
    @RequestMapping("/save")
    public R save(@RequestBody SusheTousuEntity susheTousu, HttpServletRequest request){
        logger.debug("save方法:,,Controller:{},,susheTousu:{}",this.getClass().getName(),susheTousu.toString());

        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永远不会进入");
        else if("学生".equals(role))
            susheTousu.setXueshengId(Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId"))));

            susheTousu.setInsertTime(new Date());
            susheTousu.setCreateTime(new Date());
            susheTousuService.insert(susheTousu);
            return R.ok();
    }

    /**
    * 后端修改
    */
    @RequestMapping("/update")
    public R update(@RequestBody SusheTousuEntity susheTousu, HttpServletRequest request) throws NoSuchFieldException, ClassNotFoundException, IllegalAccessException, InstantiationException {
        logger.debug("update方法:,,Controller:{},,susheTousu:{}",this.getClass().getName(),susheTousu.toString());
        SusheTousuEntity oldSusheTousuEntity = susheTousuService.selectById(susheTousu.getId());//查询原先数据

        String role = String.valueOf(request.getSession().getAttribute("role"));
        if(false)
            return R.error(511,"永远不会进入");
        else if("宿管".equals(role)) {
            susheTousu.setSusheTousuZhuangtaiTypes(2);
        }
            susheTousuService.updateById(susheTousu);//根据id更新
            return R.ok();
    }



    /**
    * 删除
    */
    @RequestMapping("/delete")
    public R delete(@RequestBody Integer[] ids, HttpServletRequest request){
        logger.debug("delete:,,Controller:{},,ids:{}",this.getClass().getName(),ids.toString());
        List<SusheTousuEntity> oldSusheTousuList =susheTousuService.selectBatchIds(Arrays.asList(ids));//要删除的数据
        susheTousuService.deleteBatchIds(Arrays.asList(ids));

        return R.ok();
    }


    /**
     * 批量上传
     */
    @RequestMapping("/batchInsert")
    public R save( String fileName, HttpServletRequest request){
        logger.debug("batchInsert方法:,,Controller:{},,fileName:{}",this.getClass().getName(),fileName);
        Integer xueshengId = Integer.valueOf(String.valueOf(request.getSession().getAttribute("userId")));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            List<SusheTousuEntity> susheTousuList = new ArrayList<>();//上传的东西
            Map<String, List<String>> seachFields= new HashMap<>();//要查询的字段
            Date date = new Date();
            int lastIndexOf = fileName.lastIndexOf(".");
            if(lastIndexOf == -1){
                return R.error(511,"该文件没有后缀");
            }else{
                String suffix = fileName.substring(lastIndexOf);
                if(!".xls".equals(suffix)){
                    return R.error(511,"只支持后缀为xls的excel文件");
                }else{
                    URL resource = this.getClass().getClassLoader().getResource("static/upload/" + fileName);//获取文件路径
                    File file = new File(resource.getFile());
                    if(!file.exists()){
                        return R.error(511,"找不到上传文件，请联系管理员");
                    }else{
                        List<List<String>> dataList = PoiUtil.poiImport(file.getPath());//读取xls文件
                        dataList.remove(0);//删除第一行，因为第一行是提示
                        for(List<String> data:dataList){
                            //循环
                            SusheTousuEntity susheTousuEntity = new SusheTousuEntity();
//                            susheTousuEntity.setSusheTousuUuidNumber(data.get(0));                    //投诉编号 要改的
//                            susheTousuEntity.setXueshengId(Integer.valueOf(data.get(0)));   //学生 要改的
//                            susheTousuEntity.setSusheId(Integer.valueOf(data.get(0)));   //宿舍 要改的
//                            susheTousuEntity.setSusheTousuText(data.get(0));                    //投诉事由 要改的
//                            susheTousuEntity.setInsertTime(date);//时间
//                            susheTousuEntity.setSusheTousuTypes(Integer.valueOf(data.get(0)));   //投诉类型 要改的
//                            susheTousuEntity.setSusheTousuZhuangtaiTypes(Integer.valueOf(data.get(0)));   //投诉状态 要改的
//                            susheTousuEntity.setXueshengKaoqinContent("");//详情和图片
//                            susheTousuEntity.setCreateTime(date);//时间
                            susheTousuList.add(susheTousuEntity);


                            //把要查询是否重复的字段放入map中
                                //投诉编号
                                if(seachFields.containsKey("susheTousuUuidNumber")){
                                    List<String> susheTousuUuidNumber = seachFields.get("susheTousuUuidNumber");
                                    susheTousuUuidNumber.add(data.get(0));//要改的
                                }else{
                                    List<String> susheTousuUuidNumber = new ArrayList<>();
                                    susheTousuUuidNumber.add(data.get(0));//要改的
                                    seachFields.put("susheTousuUuidNumber",susheTousuUuidNumber);
                                }
                        }

                        //查询是否重复
                         //投诉编号
                        List<SusheTousuEntity> susheTousuEntities_susheTousuUuidNumber = susheTousuService.selectList(new EntityWrapper<SusheTousuEntity>().in("sushe_tousu_uuid_number", seachFields.get("susheTousuUuidNumber")));
                        if(susheTousuEntities_susheTousuUuidNumber.size() >0 ){
                            ArrayList<String> repeatFields = new ArrayList<>();
                            for(SusheTousuEntity s:susheTousuEntities_susheTousuUuidNumber){
                                repeatFields.add(s.getSusheTousuUuidNumber());
                            }
                            return R.error(511,"数据库的该表中的 [投诉编号] 字段已经存在 存在数据为:"+repeatFields.toString());
                        }
                        susheTousuService.insertBatch(susheTousuList);
                        return R.ok();
                    }
                }
            }
        }catch (Exception e){
            e.printStackTrace();
            return R.error(511,"批量插入数据异常，请联系管理员");
        }
    }




    /**
    * 前端列表
    */
    @IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, HttpServletRequest request){
        logger.debug("list方法:,,Controller:{},,params:{}",this.getClass().getName(),JSONObject.toJSONString(params));

        CommonUtil.checkMap(params);
        PageUtils page = susheTousuService.queryPage(params);

        //字典表数据转换
        List<SusheTousuView> list =(List<SusheTousuView>)page.getList();
        for(SusheTousuView c:list)
            dictionaryService.dictionaryConvert(c, request); //修改对应字典表字段

        return R.ok().put("data", page);
    }

    /**
    * 前端详情
    */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id, HttpServletRequest request){
        logger.debug("detail方法:,,Controller:{},,id:{}",this.getClass().getName(),id);
        SusheTousuEntity susheTousu = susheTousuService.selectById(id);
            if(susheTousu !=null){


                //entity转view
                SusheTousuView view = new SusheTousuView();
                BeanUtils.copyProperties( susheTousu , view );//把实体数据重构到view中

                //级联表
                    XueshengEntity xuesheng = xueshengService.selectById(susheTousu.getXueshengId());
                if(xuesheng != null){
                    BeanUtils.copyProperties( xuesheng , view ,new String[]{ "id", "createDate"});//把级联的数据添加到view中,并排除id和创建时间字段
                    view.setXueshengId(xuesheng.getId());
                }
                //级联表
                    SusheEntity sushe = susheService.selectById(susheTousu.getSusheId());
                if(sushe != null){
                    BeanUtils.copyProperties( sushe , view ,new String[]{ "id", "createDate"});//把级联的数据添加到view中,并排除id和创建时间字段
                    view.setSusheId(sushe.getId());
                }
                //修改对应字典表字段
                dictionaryService.dictionaryConvert(view, request);
                return R.ok().put("data", view);
            }else {
                return R.error(511,"查不到数据");
            }
    }


    /**
    * 前端保存
    */
    @RequestMapping("/add")
    public R add(@RequestBody SusheTousuEntity susheTousu, HttpServletRequest request){
        logger.debug("add方法:,,Controller:{},,susheTousu:{}",this.getClass().getName(),susheTousu.toString());
        Wrapper<SusheTousuEntity> queryWrapper = new EntityWrapper<SusheTousuEntity>()
            .eq("sushe_tousu_uuid_number", susheTousu.getSusheTousuUuidNumber())
            .eq("xuesheng_id", susheTousu.getXueshengId())
            .eq("sushe_id", susheTousu.getSusheId())
            .eq("sushe_tousu_text", susheTousu.getSusheTousuText())
            .eq("sushe_tousu_types", susheTousu.getSusheTousuTypes())
            .eq("sushe_tousu_zhuangtai_types", susheTousu.getSusheTousuZhuangtaiTypes())
//            .notIn("sushe_tousu_types", new Integer[]{102})
            ;
        logger.info("sql语句:"+queryWrapper.getSqlSegment());
        SusheTousuEntity susheTousuEntity = susheTousuService.selectOne(queryWrapper);
        if(susheTousuEntity==null){
            susheTousu.setInsertTime(new Date());
            susheTousu.setCreateTime(new Date());
        susheTousuService.insert(susheTousu);

            return R.ok();
        }else {
            return R.error(511,"表中有相同数据");
        }
    }

}


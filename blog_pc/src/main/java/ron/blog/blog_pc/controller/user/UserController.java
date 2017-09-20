package ron.blog.blog_pc.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ron.blog.blog_common.constant.VerifyCodeEnum;
import ron.blog.blog_common.resp.ResCode;
import ron.blog.blog_common.resp.Resp;
import ron.blog.blog_common.utils.IdGenerator;
import ron.blog.blog_common.utils.ImageVerifyCodeUtils;
import ron.blog.blog_domain.user.BlogUserBase;
import ron.blog.blog_facade.user.UserBaseFacade;
import ron.blog.blog_facade.user.VerifyCodeFacade;
import ron.blog.blog_pc.controller.base.BaseController;

/**
 * @Comment 用户控制器
 * @Author Ron
 * @Date 2017年8月22日 下午3:20:12
 * @return
 */
@RequestMapping("/user")
@Controller
public class UserController extends BaseController {
private Logger logger = LogManager.getLogger(this.getClass());
	
	@Autowired
	UserBaseFacade userBaseService;
	
	/**
	 * @Comment 登录页面
	 * @Author Ron
	 * @Date 2017年9月13日 下午5:06:29
	 * @return
	 */
	@RequestMapping(value="/usercenter",method=RequestMethod.GET)
	public String login(HttpServletRequest request){
		logger.info("用户进入用户个人首页");
		return "user/index";
	}
}

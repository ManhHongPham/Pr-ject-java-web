package Homework.JW12.ArtFurniture.service.serverside.controller.Admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Homework.JW12.ArtFurniture.service.serverside.controller.User.BaseController;

@Controller
public class AdminController extends BaseController {
	@RequestMapping(value = { "/admin/index" }, method = RequestMethod.GET)
	public String admin(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		return "admin/admin-index";
	}
	
}
// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.multiselect.web;

import io.springlets.web.mvc.util.MethodLinkFactory;
import java.util.Map;
import org.springframework.roo.multiselect.web.VetsItemThymeleafController;
import org.springframework.roo.multiselect.web.VetsItemThymeleafLinkFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect VetsItemThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: VetsItemThymeleafLinkFactory implements MethodLinkFactory<VetsItemThymeleafController>;
    
    declare @type: VetsItemThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String VetsItemThymeleafLinkFactory.SHOW = "show";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String VetsItemThymeleafLinkFactory.EDIT_FORM = "editForm";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String VetsItemThymeleafLinkFactory.UPDATE = "update";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String VetsItemThymeleafLinkFactory.DELETE = "delete";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents VetsItemThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        Assert.notEmpty(pathVariables, "VetsItemThymeleafController links need at least "
            + "the Vet id Path Variable with the 'vet' key");
            
        Assert.notNull(pathVariables.get("vet"),
            "VetsItemThymeleafController links need at least "
            + "the Vet id Path Variable with the 'vet' key");
            
        if (methodName.equals(SHOW)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).show(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(UPDATE)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).update(null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(EDIT_FORM)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).editForm(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(DELETE)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).delete(null)).buildAndExpand(pathVariables);
        }
        
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<VetsItemThymeleafController> VetsItemThymeleafLinkFactory.getControllerClass() {
        return VetsItemThymeleafController.class;
    }
    
}

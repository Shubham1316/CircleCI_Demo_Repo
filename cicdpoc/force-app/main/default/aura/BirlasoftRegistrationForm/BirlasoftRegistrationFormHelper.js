({
	doSave : function(component, event, helper) {
		//alert('Alert Called !!');
        var ename = component.get("v.empName");
        //		alert(ename);
        
        var action = component.get('c.insertEmp');
        
        action.setParams({"enm":ename,
                          "efnm":ename,
                          "eadr":ename,
                          "edept":ename,
                          "esal":ename});
        
        
        action.setCallback(this,function(a){
            var state = a.getState(); // to get response state 
            if(state == 'SUCCESS')
            { 
            alert('Saved successfully');}            
        });
        $A.enqueueAction(action);
        

	}
})
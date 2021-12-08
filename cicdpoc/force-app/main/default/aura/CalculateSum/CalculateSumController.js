({
	Add : function(component, event, helper) {
        var a = component.get("v.num1");
        var b = component.get("v.num2");
        var total = parseInt(a) + parseInt(b);
        component.set("v.total",total);
		
	}
})
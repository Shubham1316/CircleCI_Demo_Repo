public class ConsumeRest {

    @future (callout=true)   // used for asynchronous calls
    public static void setDate()
    {
        Http h= new Http();
        HttpRequest req = new HttpRequest();
        req.setHeader('Content-Type', 'application/json');
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setMethod('POST');
        req.setBody('{"name":"my Tiger"}');
        HttpResponse res = h.send(req);
        
        System.debug(res.getBody());
        
        
    }
}
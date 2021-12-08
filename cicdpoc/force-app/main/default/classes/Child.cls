public  class Child extends Parent {

    public void Engineer()
    {
        System.debug('Engineer');
    }
    
    public override void Doctor()
    {
       super.Doctor();
       // System.debug('Child doctor');
    }
}
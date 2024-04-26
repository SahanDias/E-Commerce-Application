
package Mypackages;

/**
 *
 * @author Mr.Kshan
 */
public class Products {

    private int id;
    private String name;
    private String catagory;
    private String cartimage;
    private String subimage;
    private String price;
    private String des;
    
     public Products(int id ,String name,String catagory,String cartimage,String subimage ,String price, String des){
         this.name=name;
         this.id=id;
         this.cartimage=cartimage;
         this.catagory=catagory;
         this.subimage=subimage;
         this.price=price;
         this.des=des;
     }
      public Products(String name , String price, String des,String catagory,String cartimage,String subimage ){
        this.name=name;
        this.price=price;
        this.des=des;
        this.cartimage=cartimage;
        this.catagory=catagory;
        this.subimage=subimage;
    }
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id=id;
    }
    
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name=name;
    }
    public String getPrice(){
        return price;
    }
    public void setPrice(String price){
        this.price=price;
    }
      public String getDescription(){
        return des;
    }
    public void setDecription(String des){
        this.des=des;
    
}   
     public String getCartImage(){
        return cartimage;
    }
    public void setCartImage(String cartimage){
        this.cartimage=cartimage;
    
}   
      public String getCatagory(){
        return catagory;
    }
    public void setCatagory(String catagory){
        this.catagory=catagory;
    
}   
     public String getSubimage(){
        return subimage;
    }
    public void setSubimage(String subimage){
        this.subimage=subimage;
    
}   
      
    
    


}

<?php
class cart{
    private $session =null;
    private $yourcart =null;
    private $id = null;
    private $quantity=null;
    function __construct($id,$quantity){
        $this->session = JFactory::getSession();
        $this->yourcart =$this->session->get('yourcart');
        $this->id = $id;
        $this->quantity =$quantity;
    }
    public function getCart(){
    	return $this->yourcart;
    }
    public function addProduct(){
        if(!$this->yourcart)
            $this->yourcart = array();
        $flag = true;
        if($this->check_exist()){
            foreach($this->yourcart as $key=>$value){
                if($value['id'] == $this->id){
                    $this->yourcart[$key]['quantity']+=1;
                    $flag=false;
                }   
            }
        }
        if($flag){
            $product = $this->product();
            $temp['id']=$product['id'];
            $temp['quantity']=1;
            $temp['price']= $this->getPrice($product['id']);
            $temp['name']= $product['name'];
                        
            $this->yourcart[$this->rand_id()]=$temp;  
        }
        $this->session->set('yourcart',$this->yourcart);
    }
    public function getPrice($combo_id){
    	$db =&JFactory::getDBO();
        $query = 'SELECT sum(price) as total FROM #__services where comboid ='.$combo_id;
        $db->setQuery($query);
        $total= $db->loadResult();
        if ($db->getErrorNum()) {
             echo $db->stderr();
             return 0;
        }
        return $total;
    }
    public function updateproduct($id){
        //$id is product id
        $this->yourcart[$this->id]['quantity']=$this->quantity;
        $this->session->set('yourcart',$this->yourcart);
    }
    public function deleteproduct(){
        unset($this->yourcart[$this->id]);
        $this->session->set('yourcart',$this->yourcart);
         
    }
    public function count_product(){
        $this->yourcart =$this->session->get('yourcart');
        $tatal =0;
        foreach($this->yourcart as $key=>$value){
            $tatal+=$value['quantity'];
        }
        return $tatal;
    }
    private function check_exist(){
        foreach($this->yourcart as $key=>$value){
            if($value['id'] == $this->id){
                return true;    
            }
        }
        return false;
    }
    private function rand_id(){
        return substr(md5(time().rand(1,5)),0,6);   
    }
    private function product(){
        $db =&JFactory::getDBO();
        $query = 'SELECT * FROM #__combos_combo where id ='.$this->id;
        $db->setQuery($query);
        $row= $db->loadAssoc();
        if ($db->getErrorNum()) {
             echo $db->stderr();
             return false;
        }
        return $row;
    }
    public function delete_cart(){
        $this->yourcart='';
        $this->session->set('yourcart',$this->yourcart);
    }
}
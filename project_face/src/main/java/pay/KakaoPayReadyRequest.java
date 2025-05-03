package pay;

/**
 * 2025-05-03
 * 카카오페이 결제 요청 객체
 */
public class KakaoPayReadyRequest {
	
	/* 가맹점코드, 테스트일 때는 TC0ONETIME 고정 */
	private String cid;
	
	/* 가맹점 주문번호, 임의 */
    private String partner_order_id;
    
    /* 가맹점 회원 아이디, 임의 */
    private String partner_user_id;
    
    /* 상품명, 임의 */
    private String item_name;
    
    /* 상품수량, 임의 */
    private Integer quantity;
    
    /* 상품 총액, 임의 */
    private Integer total_amount;
    
    /* 상품 비과세 금액, 임의 */
    private Integer tax_free_amount;
    
    /* 결제 성공 리다이렉트 url, 임의 */
    private String approval_url;
    
    /* 결제 취소 리다이렉트 url, 임의 */
    private String cancel_url;
    
    /* 결제 실패 리다이렉트 url, 임의 */
    private String fail_url;
    
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getPartner_order_id() {
		return partner_order_id;
	}
	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}
	public String getPartner_user_id() {
		return partner_user_id;
	}
	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(Integer total_amount) {
		this.total_amount = total_amount;
	}
	public Integer getTax_free_amount() {
		return tax_free_amount;
	}
	public void setTax_free_amount(Integer tax_free_amount) {
		this.tax_free_amount = tax_free_amount;
	}
	public String getApproval_url() {
		return approval_url;
	}
	public void setApproval_url(String approval_url) {
		this.approval_url = approval_url;
	}
	public String getCancel_url() {
		return cancel_url;
	}
	public void setCancel_url(String cancel_url) {
		this.cancel_url = cancel_url;
	}
	public String getFail_url() {
		return fail_url;
	}
	public void setFail_url(String fail_url) {
		this.fail_url = fail_url;
	}
}

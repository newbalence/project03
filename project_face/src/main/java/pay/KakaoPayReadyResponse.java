package pay;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * 2025-05-03
 * 카카오페이 결제 응답 객체
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class KakaoPayReadyResponse {
	/* 결제 고유번호 */
    private String tid;
    
    /* 모바일 앱 결제 페이지 url */
    private String next_redirect_app_url;
    
    /* 모바일 웹 결제 페이지 url */
    private String next_redirect_mobile_url;
    
    /* pc 웹 결제 페이지 url */
    private String next_redirect_pc_url;
    
    /* 안드로이드 앱 스키마 */
    private String android_app_scheme;
    
    /* iOS 앱 스키마 */
    private String ios_app_scheme;
    
    /* 결제 준비 요청시간 */
    private String created_at;

    // Getter, Setter
    public String getTid() { return tid; }
    public void setTid(String tid) { this.tid = tid; }

    public String getNext_redirect_app_url() { return next_redirect_app_url; }
    public void setNext_redirect_app_url(String next_redirect_app_url) { this.next_redirect_app_url = next_redirect_app_url; }

    public String getNext_redirect_mobile_url() { return next_redirect_mobile_url; }
    public void setNext_redirect_mobile_url(String next_redirect_mobile_url) { this.next_redirect_mobile_url = next_redirect_mobile_url; }

    public String getNext_redirect_pc_url() { return next_redirect_pc_url; }
    public void setNext_redirect_pc_url(String next_redirect_pc_url) { this.next_redirect_pc_url = next_redirect_pc_url; }

    public String getAndroid_app_scheme() { return android_app_scheme; }
    public void setAndroid_app_scheme(String android_app_scheme) { this.android_app_scheme = android_app_scheme; }

    public String getIos_app_scheme() { return ios_app_scheme; }
    public void setIos_app_scheme(String ios_app_scheme) { this.ios_app_scheme = ios_app_scheme; }

    public String getCreated_at() { return created_at; }
    public void setCreated_at(String created_at) { this.created_at = created_at; }
    
	@Override
	public String toString() {
		return "KakaoPayReadyResponse [tid=" + tid + ", next_redirect_app_url=" + next_redirect_app_url
				+ ", next_redirect_mobile_url=" + next_redirect_mobile_url + ", next_redirect_pc_url="
				+ next_redirect_pc_url + ", android_app_scheme=" + android_app_scheme + ", ios_app_scheme="
				+ ios_app_scheme + ", created_at=" + created_at + "]";
	}
    
}

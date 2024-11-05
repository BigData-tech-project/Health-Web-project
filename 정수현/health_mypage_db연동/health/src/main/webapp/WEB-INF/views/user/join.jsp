<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="/WEB-INF/views/include/head.jsp" />
        <style>
        	#contact{
        		padding-top:300px;
        	}
        </style>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <jsp:include page="/WEB-INF/views/include/nav-bar.jsp" />
        <!-- Contact Section-->
        <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">회원가입</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                    <!-- form action이 가입성공하면 로그인페이지 가입실패하면 조인페이지 -->
                        <form action="/health/user/join" method="post" id="contactForm" data-sb-form-api-token="API_TOKEN">
                            <!-- id input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="id" type="text" name="id"
                                	data-sb-validations="required" />
                                <label for="id">아이디</label>
                            </div>
                            <!-- pw1 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="pw" type="password" name="pw"
                                	data-sb-validations="required,email" />
                                <label for="pw">비밀번호</label>
                            </div>
                            <!-- pw2 input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="pwCheck" type="password" name="pwCheck"
                                	data-sb-validations="required,email" />
                                <label for="pwCheck">비밀번호 다시입력</label>
                            </div>
                            <!-- name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="name" type="text" name="name"
                                	data-sb-validations="required" />
                                <label for="name">이름</label>
                            </div>
                            <!-- gender check-->
                            <div class="form-floating mb-3">
                                <select name="gender" class="form-control" id="gender"
                                	data-sb-validations="required" data-sb-can-submit="no">
                                	<option value=""disabled selected>성별을 선택하세요.</option>
                                	<option value="Male">남성</option>
                                	<option value="Female">여성</option>
                                </select>
                                <label for="gender">성별</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">
                                	birthday is required.
                                </div>
                            </div>
                            <!-- age input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="age" type="text" name="age"
                                	data-sb-validations="required" />
                                <label for="age">나이</label>
                            </div>
                            
                            <!-- Submit Button-->
                            <button class="btn btn-primary btn-xl" id="submitButton" type="submit" >회원가입</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <jsp:include page="/WEB-INF/views/include/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/resources/js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
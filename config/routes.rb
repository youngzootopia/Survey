Rails.application.routes.draw do
  root :to => 'sessions#new'

  resources :shot_infos
  resources :clists
  
  # 문의사항
  get	 '/contact',						            	 to: 'home#contact'
  
  # 관리자 페이지
  get	 '/admin',							             	 to: 'home#admin'
  
  # 유저 관리
  get	 '/admin/users',				          		 to: 'users#index'
  get	 '/admin/users/admin_new',    				 to: 'users#admin_new'
  post '/admin/users/admin_new',	     			 to: 'users#admin_create'
  get	 '/admin/users/edit:sUserID',   		 	 to: 'users#admin_edit'
  post '/admin/users/edit:sUserID',   			 to: 'users#admin_update'
  get	 '/admin/users/delete', 	       			 to: 'users#destroy'
  
  # 필터링 관리
  get	 '/admin/filterings',				         	 to: 'filterings#index'
  get	 '/admin/filterings/admin_new', 			 to: 'filterings#admin_new'
  post '/admin/filterings/admin_new',     	 to: 'filterings#admin_create'
  get	 '/admin/filterings/edit:sUserID',	 	 to: 'filterings#edit'
  post '/admin/filterings/edit:sUserID',		 to: 'filterings#update'
  get	 '/admin/filterings/delete', 		     	 to: 'filterings#destroy'
  
  # 1차 설문조사 관리
  get  '/admin/first',                       to: 'first#index'
  get  '/admin/first/edit:id',               to: 'first#edit'
  post '/admin/first/edit:id',               to: 'first#update'
  get  '/admin/first/delete',                to: 'first#destroy'
  
  
  # 회원가입, 정보 수정(비밀번호 포함), 로그인-아웃, 필터링 정보 수집 
  get	 '/signup',					            			 to: 'users#new'
  post '/signup',				             				 to: 'users#create'
  get	 '/users/edit',		           					 to: 'users#edit'
  post '/users/edit',			          				 to: 'users#update'
  get	 '/users/password',		         				 to: 'users#password_edit'
  post '/users/password',		         				 to: 'users#password_update'
  get  '/login', 					            			 to: 'sessions#new'
  post '/login',			               				 to: 'sessions#create'
  get	 '/logout',				             				 to: 'sessions#destroy'
  get	 '/filtering',		          					 to: 'filterings#new'
  post '/filtering',		          					 to: 'filterings#create'
  
  # 1차 설문
  get	 '/first',				            				 to: 'first#get_page'
  get	 '/get_first_infomation',     				 to: 'first#get_json'
  post '/get_first_infomation',	      			 to: 'first#survey_commit'
  
  # 2차 설문
  get  '/second',                            to: 'second#get_page'
end
<%@page import="java.sql.Date"%>
<%@page import="com.example.demo.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
    
<html>
<head>
    <title>ȸ������ ó�� JSP</title>
    <style>
        #wrap{
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        table{
            margin-left:auto; 
            margin-right:auto;
            border:3px solid skyblue
        }
        
        td{
            border:1px solid skyblue
        }
        
        #title{
            background-color:skyblue
        }
    </style>
</head>
<body>
    <%-- JoinForm.jsp���� �Է��� ������ �Ѱ� �޾� ó���Ѵ�. --%>
    <% 
        // �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
        request.setCharacterEncoding("euc-kr"); 
    	Member member = (Member)request.getAttribute("member");
    %>
    
    <div id="wrap">
        <br><br>
        <b><font size="5" color="gray">ȸ������ ������ Ȯ���ϼ���.</font></b>
        <br><br>
        <font color="blue"></font><%=member.getName()%>�� ������ ���ϵ帳�ϴ�.
        <br><br>
        
        <%-- �ڹٺ󿡼� �Էµ� ���� �����Ѵ�. --%>
        <table>
            <tr>
                <td id="title">���̵�</td>
                <td><%=member.getId()%></td>
            </tr>
                        
            <tr>
                <td id="title">��й�ȣ</td>
                <td><%=member.getPassword()%></td>
            </tr>
                    
            <tr>
                <td id="title">�̸�</td>
                <td><%=member.getName()%></td>
            </tr>
                    
            <tr>
                <td id="title">����</td>
                <td><%=member.getGender()%></td>
            </tr>
                    
            <tr>
                <td id="title">����</td>
                <td>
                   <%=member.getBirthyy() %>�� 
                   <%=member.getBirthmm() %>�� 
                   <%=member.getBirthdd() %>��
                </td>
            </tr>
                    
            <tr>
                <td id="title">�̸���</td>
                <td>
                   <%=member.getMail1() %>@<%=member.getMail2() %>
                </td>
            </tr>
                    
            <tr>
                <td id="title">�޴���ȭ</td>
                <td><%=member.getPhone() %></td>
            </tr>
            <tr>
                <td id="title">�ּ�</td>
                <td>
                    <%=member.getAddress() %>
                </td>
            </tr>
        </table>
        
        <br>
        <input type="button" onClick="location.href='/member/MemberList.jsp'" value="����Ʈ��ȸ">
    </div>
</body>
</html>


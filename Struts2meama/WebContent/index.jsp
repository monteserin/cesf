<%@ taglib prefix="s" uri="/struts-tags"%>
<s:url action="enlace1.action" var="urlTag" >
    <s:param name="age">99</s:param>
</s:url>
<a href="enlace1.action">enlace 1</a><br/>
<a href="enlace_2.action">enlace 2 - usa * en el struts.xml</a><br/>
<!-- El atributo value pone la ruta tal cual, mientras que action a�ade la ruta absoluta  -->
<a href="<s:url value="enlace1.action" />">enlace 3</a><br/>
<a href="<s:url action="enlace1.action" />" >enlace 4 </a><br/>
<a href="<s:url value="https://www.pablomonteserin.com" />" >enlace 4 </a><br/>
<s:a href="%{urlTag}">enlace 5 - usa %</s:a>
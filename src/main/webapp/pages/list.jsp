<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<p>Persons</p>
<s:if test="persons.size > 0">
	<table>
		<s:iterator value="persons">
			<tr id="row_<s:property value="id"/>">
				<td>
					<s:property value="firstName" />
				</td>
				<td>
					<s:property value="lastName" />
				</td>
				<td>
					<s:url id="removeUrl" action="remove">
						<s:param name="id" value="id" />
					</s:url>
					<sx:a href="%{removeUrl}" targets="persons">Remove</sx:a>
					<sx:a id="a_%{id}" notifyTopics="/edit">Edit</sx:a>
				</td>
			</tr>
		</s:iterator>
	</table>
</s:if>


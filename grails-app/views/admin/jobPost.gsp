<%--
  Created by IntelliJ IDEA.
  User: shiva
  Date: 16/3/18
  Time: 11:41 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="customLayout"/>
</head>

<body>
<div>
    <h4><b style="margin-left:42%">
        Submit Job Detail</b></h4>
    <form id="newJobForm">
        <table class="table" align="center" style="width: 40%;">
            <tr>
                <td>
                    Job Title*
                </td>
                <td>
                    <input type="text" name="jobtitle" class="form-control" size="35%" id="jobtitle" placeholder="Enter Job Title">
                </td>
            </tr>
            <tr>
                <td>
                    Date*
                </td>
                <td>
                    <input type="date" name="Date" class="form-control" id="Date" size="35%" placeholder="Enter Job Posting Date">
                </td>
            </tr>
            <tr>
                <td>
                    City*
                </td>
                <td>
                    <input type="text" name="city" id="city" class="form-control" size="35%" placeholder="Enter Job Location(City)">
                </td>
            </tr>

            <tr>
                <td>
                    State*
                </td>
                <td>
                    <select aria-required="true" aria-label="State of Residence" id="state" class="form-control" name="state">

                        <option value="">SELECT STATE</option>
                        <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option value="Assam">Assam</option>
                        <option value="Bihar">Bihar</option>
                        <option value="Chandigarh">Chandigarh</option>
                        <option value="Chhattisgarh">Chhattisgarh</option>
                        <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                        <option value="Daman and Diu">Daman and Diu</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Goa">Goa</option>
                        <option value="Gujarat">Gujarat</option>
                        <option value="Haryana">Haryana</option>
                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                        <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                        <option value="Jharkhand">Jharkhand</option>
                        <option value="Karnataka">Karnataka</option>
                        <option value="Kerala">Kerala</option>
                        <option value="Lakshadweep">Lakshadweep</option>
                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                        <option value="Maharashtra">Maharashtra</option>
                        <option value="Manipur">Manipur</option>
                        <option value="Meghalaya">Meghalaya</option>
                        <option value="Mizoram">Mizoram</option>
                        <option value="Nagaland">Nagaland</option>
                        <option value="Orissa">Orissa</option>
                        <option value="Pondicherry">Pondicherry</option>
                        <option value="Punjab">Punjab</option>
                        <option value="Rajasthan">Rajasthan</option>
                        <option value="Sikkim">Sikkim</option>
                        <option value="Tamil Nadu">Tamil Nadu</option>
                        <option value="Tripura">Tripura</option>
                        <option value="Uttaranchal">Uttaranchal</option>
                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                        <option value="West Bengal">West Bengal</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    Experiance*
                </td>
                <td>
                    <input type="text" name="exp" size="35%" id="exp" class="form-control" placeholder="Enter Desired Experiance for the Post">
                </td>
            </tr>
            <tr>
                <td>
                    Detail*
                </td>
                <td>
                    <textarea rows="3" cols="35" name="detail" id="detail" class="form-control" form="newJobForm" placeholder="Enter Job Description"></textarea>

                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" class="btn btn-success"onclick="submitJobDetail()"  style="background-color:#721c24;color:white;border-color: #721c24;border-radius: 5px;margin-left: 40%;width: 17%">
                </td>
            </tr>
        </table>

    </form>
    <h3 id="msg" style="text-align: center;font-weight: bolder;color: green"></h3>
</div>
<asset:javascript src="jquery.min.js"/>
<script>


    function submitJobDetail(){
        var jobtitle=$('#jobtitle').val();
        var date=$('#Date').val();
        var city=$('#city').val();
        var state=$('#state').val();
        var exp = $('#exp').val();
        var detail = $('#detail').val();

        if(jobtitle != "" && date != "" && exp != "" && detail != "" && city != "" && state != ""){
            console.log('SUBMITTED');
            var status = $.parseJSON($.ajax({
                     url:  "/Admin/saveNewJob?title="+jobtitle+"&date="+date+"&location="+city+", "+state+"&exp="+exp+"&detail="+detail,
                     dataType: "json",
                     async: false
                 }).responseText);

            }
        else{
            console.log('!SUBMITTED');
            alert('all Feilds are mendatory');

        }


    }


</script>
</body>
</html>
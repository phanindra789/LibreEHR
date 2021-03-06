<?php
/*
 *  new.php for the creation of the misc_billing_form
 *
 *  This program creates the misc_billing_form
 *
 * @copyright Copyright (C) 2016-2017 Terry Hill <teryhill@librehealth.io>
 *
 *
 * LICENSE: This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see http://opensource.org/licenses/gpl-license.php.
 *
 * LICENSE: This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
 * See the Mozilla Public License for more details.
 * If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.
 *
 * @package LibreHealth EHR
 * @author Terry Hill <teryhill@librehealth.io>
 * @link http://librehealth.io
 *
 * Please help the overall project by sending changes you make to the author and to the LibreHealth EHR community.
 *
 */
$fake_register_globals=false;
$sanitize_all_escapes=true;

require_once("../../globals.php");
require_once("$srcdir/options.inc.php");
require_once("$srcdir/api.inc");
require_once("$srcdir/formdata.inc.php");
require_once("date_qualifier_options.php");
require_once("$srcdir/formsoptions.inc.php");
$DateFormat = DateFormatRead();
$DateLocale = getLocaleCodeForDisplayLanguage($GLOBALS['language_default']);

    
if (! $encounter) { // comes from globals.php
 die(xl("Internal error: we do not seem to be in an encounter!"));
}

$formid   = 0 + formData('id', 'G');
$form_name = 'form_misc_billing_options';
if (empty($formid)) {
    $formid = checkFormIsActive($form_name,$encounter);
}
$obj = $formid ? formFetch("form_misc_billing_options", $formid) : array();

?>
<html>
<head>
<?php html_header_show(); ?>

<link rel="stylesheet" href="<?php echo $css_header;?>" type="text/css">
<link rel="stylesheet" href="<?php echo $GLOBALS['webroot'] ?>/library/css/jquery.datetimepicker.css">
<link href="<?php echo $GLOBALS['standard_js_path']; ?>/bootstrap-3-3-4/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="<?php echo $GLOBALS['standard_js_path']; ?>/jquery-min-1-9-1/index.js"></script>
<script type="text/javascript" src="<?php echo $GLOBALS['standard_js_path']; ?>/bootstrap-3-3-4/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo $GLOBALS['webroot'] ?>/library/js/jquery.datetimepicker.full.min.js"></script>
<script language="JavaScript">

</script>

</head>
<body class="body_top">
<div id="form-main">
  <div id="form-div">
   <div class='container'>
   <style>form label{font-weight:normal;}</style>
<form method=post <?php echo "name='my_form' " .  "action='$rootdir/forms/misc_billing_options/save.php?id=" . attr($formid) . "'>\n";?> >

<span class="title"><?php echo xlt('Misc Billing Options for HCFA-1500'); ?></span><br><br>
<span class=text><?php echo xlt('Checked box = yes ,  empty = no');?><br><br>
<label><span class=text><?php echo xlt('BOX 10 A. Employment related '); ?>: </span><input type=checkbox name="employment_related" value="1" <?php if ($obj['employment_related'] == "1") echo "checked";?>></label><br><br>
<label><span class=text><?php echo xlt('BOX 10 B. Auto Accident '); ?>: </span><input type=checkbox name="auto_accident" value="1" <?php if ($obj['auto_accident'] == "1") echo "checked";?>></label>
     <span class=text><?php echo xlt('State'); ?>: </span>
          <tr>
       <td>
          <?php
                echo generate_select_list('accident_state', 'state', $obj{"accident_state"}, 'State');
          ?>
       </td>
     </tr>
     <br>
     <br>
<label><span class=text><?php echo xlt('BOX 10 C. Other Accident '); ?>: </span><input type=checkbox name="other_accident" value="1" <?php if ($obj['other_accident'] == "1") echo "checked";?>></label><br><br>
<span class=text><?php echo xlt('BOX 10 D. EPSDT Referral Code ');?></span><input type=entry style="width: 25px;" size=2 name="medicaid_referral_code" value="<?php echo attr($obj{"medicaid_referral_code"});?>" >&nbsp;&nbsp;&nbsp;&nbsp;
<label><span class=text><?php echo xlt('EPSDT '); ?>: </span><input type=checkbox name="epsdt_flag" value="1" <?php if ($obj['epsdt_flag'] == "1") echo "checked";?>></label><br><br>
<span class="text" title="<?php echo xla("For HCFA 02/12 Onset date specified on the Encounter Form needs a qualifier");?>"></span>
<span class=text title="<?php echo xla('For HCFA 02/12 Box 15 is Other Date with a qualifier to specify what the date indicates');?>"></span>    
 <tr>
  <td><span class=text><?php echo xlt('BOX 14. Is Populated from the Encounter Screen as the Onset Date');?>.</span></td>
 </tr><br><br> 
 <tr>
  <td><span class=text><?php echo xlt('BOX 16. Date unable to work from');?>:</span></td>
  <td><?php $off_work_from = $obj{"off_work_from"}; ?>
   <input type='text' name='off_work_from' id="off_work_from"
          size='10' value='<?php echo oeFormatShortDate(attr($off_work_from)) ?>'/>
  </td>
 </tr>
 &nbsp;&nbsp;
<tr>
 <td><span class=text><?php echo xlt('BOX 16. Date unable to work to');?>:</span></td>
  <td><?php $off_work_to = $obj{"off_work_to"}; ?>
   <input type='text' name='off_work_to' id="off_work_to"
          size='10' value='<?php echo oeFormatShortDate(attr($off_work_to)) ?>'/>
  </td>
 </tr>
    <br><br>

    <td class='label'><?php echo xlt('BOX 17. Provider') ?>:</td>
     <td>
      <?php  # Build a drop-down list of providers. # Added (TLH)
               genProviderSelect('provider_id', '-- '.xl("Please Select").' --',$obj{"provider_id"}, false, true);
      ?>
     </td>
    &nbsp;&nbsp;
    <td><span class=text><?php  echo xlt('BOX 17. Provider Qualifier'); ?>: </span>
     <tr>
       <td>
          <?php
                echo generate_select_list('provider_qualifier_code', 'provider_qualifier_code',$obj{"provider_qualifier_code"}, 'Provider Qualifier Code');
          ?>
       </td>
     </tr>
    </td>
<br><br>
<tr>
 <td><span class=text><?php echo xlt('BOX 18. Hospitalization date from');?>:</span></td>
  <td><?php $hospitalization_date_from = $obj{"hospitalization_date_from"}; ?>
   <input type='text' name='hospitalization_date_from' id="hospitalization_date_from"
          size='10' value='<?php echo oeFormatShortDate(attr($hospitalization_date_from)) ?>'/>
  </td>
 </tr>
 &nbsp;&nbsp;
 <tr>
  <td><span class=text><?php echo xlt('BOX 18. Hospitalization date to');?>:</span></td>
  <td><?php $hospitalization_date_to = $obj{"hospitalization_date_to"}; ?>
   <input type='text' name='hospitalization_date_to' id="hospitalization_date_to"
          size='10' value='<?php echo oeFormatShortDate(attr($hospitalization_date_to)) ?>'/>
  </td>

 </tr>
    <br><br>
    <label><span class=text><?php echo xlt('BOX 20. Is Outside Lab used?'); ?>: </span><input type=checkbox name="outside_lab" value="1" <?php if ($obj['outside_lab'] == "1") echo "checked";?>></label>
<span class=text><?php echo xlt('Amount Charges'); ?>: </span><input type=entry size=7 align='right' name="lab_amount" value="<?php echo attr($obj{"lab_amount"});?>" ><br><br>
<span class=text><?php echo xlt('BOX 22. Medicaid Resubmission Code (ICD-9) ');?></span><input type=entry size=9 name="medicaid_resubmission_code" value="<?php echo attr($obj{"medicaid_resubmission_code"});?>" >
<span class=text><?php echo xlt(' Medicaid Original Reference No. ');?></span><input type=entry size=15 name="medicaid_original_reference" value="<?php echo attr($obj{"medicaid_original_reference"});?>" ><br><br>
<span class=text><?php echo xlt('BOX 23. Prior Authorization No. ');?></span><input type=entry size=15 name="prior_auth_number" value="<?php echo attr($obj{"prior_auth_number"});?>" ><br><br>
<label><span class=text><?php echo xlt('X12 only: Replacement Claim '); ?>: </span><input type=checkbox name="replacement_claim" value="1" <?php if ($obj['replacement_claim'] == "1") echo "checked";?>></label><br><br>
<span class=text><?php echo xlt('X12 only ICN resubmission No. ');?></span><input type=entry size=35 name="icn_resubmission_number" value="<?php echo attr($obj{"icn_resubmission_number"});?>" ><br><br>

<table>
<tr>
<td valign=top>
<span class=text><?php echo xlt('Additional Notes'); ?>: </span><br><textarea cols=40 rows=8 wrap=virtual name="comments" ><?php echo text($obj{"comments"});?></textarea><br>
</td>
</table>
<br>
</tr>

 <div>
<!-- Save/Cancel buttons -->
<input type="button" class="save" value="<?php echo xla('Save'); ?>"> &nbsp &nbsp &nbsp &nbsp; 
<input type="button" class="dontsave" value="<?php echo xla('Don\'t Save Changes'); ?>"> &nbsp; 
</div>
</form>
  </div>
 </div>
</div>

<script language="javascript">
// jQuery stuff to make the page a little easier to use

$(document).ready(function(){
    $(".save").click(function() { top.restoreSession(); document.my_form.submit(); });
    $(".dontsave").click(function() { location.href='<?php echo "$rootdir/patient_file/encounter/encounter_top.php";?>'; });
});
</script>
</body>
<script>
    $(function() {
        $("#hospitalization_date_from, #hospitalization_date_to, #off_work_from, #off_work_to" ).datetimepicker({
            timepicker: false,
            format: "<?= $DateFormat; ?>"
        });
        $.datetimepicker.setLocale('<?= $DateLocale;?>');
    });
</script>
</html>
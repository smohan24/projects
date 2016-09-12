
var company_name = '';
var industry = '';
var employee_count = '';
var ip = '';
var sub_industry = '';
var primary_sic = '';
var city = '';
var state = '';
var zip = '';
var main_phone = '';

      // Demandbase Callback
      function dbase_parse(data) {
        if (! data) return '';
        try { // minor error handling
          company_name = data['company_name'] || 'Not Defined';
          industry = data['industry'] || 'Not Defined';
          employee_count = data['employee_count'] || 'Not Defined';
          sub_industry = data['sub_industry'] || 'Not Defined';
          primary_sic = data['primary_sic'] || 'Not Defined';
          city = data['city'] || 'Not Defined';
          state = data['state'] || 'Not Defined';
          zip = data['zip'] || 'Not Defined';
          main_phone = data['main_phone'] || 'Not Defined';
        } catch(e) { } // do nothing on error
      }

document.write(unescape("%3Cscript type='text/javascript' src='" + location.protocol + "//api.demandbase.com/api/v2/ip.json?token=b155ec5d50b5dcb41662f36b4d10a6f7702c87e6&callback=dbase_parse'%3E%3C/script%3E"));

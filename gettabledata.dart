import 'package:html/parser.dart' as parser;

void main() {
  var document = parser.parse(r'''
  <html>
  <body>
  ...
  <table class="newtable">
    <tbody>
      ...
    </tbody>
  </table>
  <br>
  <table border="0">
    <tbody>
      <tr> 
        <td>
          ...
        </td>
      </tr>
      <tr>
        <td>
          ...
        </td>  
      </tr>
    </tbody>
  </table>
  </body>
  </html>''');

  var secondTable = document.getElementsByTagName('table')[1];
  var firstRow = secondTable.children[0].children[0];
  print(firstRow.text); // prints the text content of the first <td> in the first <tr>
}

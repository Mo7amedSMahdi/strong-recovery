<%@page import="java.util.zip.ZipEntry"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.util.zip.ZipOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%
String zipFile = "E:/archive.zip";
String[] srcFiles = { "E:/sample.txt", "E:/sample2.txt", "E:/sample3.txt"};
try {
    byte[] buffer=new byte[1024];
    FileOutputStream fos=new FileOutputStream(zipFile);
    ZipOutputStream zos=new ZipOutputStream(fos);
    for (int i=0; i < srcFiles.length; i++) {
        File srcFile = new File(srcFiles[i]);
FileInputStream fis = new FileInputStream(srcFile);
zos.putNextEntry(new ZipEntry(srcFile.getName()));
int length;
while ((length = fis.read(buffer)) > 0) {
zos.write(buffer, 0, length);
}
zos.closeEntry();
fis.close();
    }
     zos.close();
    
}catch(Exception e){
    out.println(e);
}
%>
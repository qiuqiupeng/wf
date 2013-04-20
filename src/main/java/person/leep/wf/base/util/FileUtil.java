package person.leep.wf.base.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.io.FilenameUtils;


public class FileUtil {
	public static char[] hexChar = { '0', '1', '2', '3', '4', '5', '6', '7',
			'8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

	
	public static void deleteDirectory(File fileObject){
		
		if(fileObject.exists() && fileObject.isDirectory()){
            String[] subFileObjectArray = fileObject.list();
            for(int i=0; i<subFileObjectArray.length; i++){
                File file = new File(fileObject.getAbsolutePath() + "/" + subFileObjectArray[i]);
                if(file.isFile()){
                	file.delete();
                }else if(file.isDirectory()){
                    deleteDirectory(file);
                }
            }
            fileObject.delete();
		}
    }
	
	public static void clearDirectory(File fileObject){
		
		if(fileObject.exists() && fileObject.isDirectory()){
            String[] subFileObjectArray = fileObject.list();
            for(int i=0; i<subFileObjectArray.length; i++){
                File file = new File(fileObject.getAbsolutePath() + "/" + subFileObjectArray[i]);
                if(file.isFile()){
                	file.delete();
                }else if(file.isDirectory()){
                    deleteDirectory(file);
                }
            }
		}
    }
	
	public static void copy(File src, File dst){
		InputStream is = null;
		OutputStream os = null;
		try {
			is = new BufferedInputStream(new FileInputStream(src),
					1024 * 8);
			os = new BufferedOutputStream(new FileOutputStream(dst),
					1024 * 8);
			byte[] buffer = new byte[1024 * 8];
			int len = 0;
			while ((len = is.read(buffer)) > 0) {
				os.write(buffer, 0, len);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException ex) {
			ex.printStackTrace();
		} catch (Exception ex){
			ex.printStackTrace();
		}finally {
			if (null != is) {
				try {
					is.close();
				} catch (IOException e) {
				}
			}
			if (null != os) {
				try {
					os.close();
				} catch (IOException e) {
				}
			}
		}
	}

	public static String getFileType(String fileName) {
		return fileName.substring(fileName
				.lastIndexOf(".") + 1, fileName
				.length());
	}
	
	public static String getFileName(String file){
		String fileName = "";
		int i = file.lastIndexOf("\\");
		if(i > 0){
			fileName = file.substring(i + 1);
		}
		return fileName;
	}
	
	public static String getRandFileName(){
		return StringUtil.getUuid();
	}

	public static String getFileMd5(File file) throws Exception {
		InputStream fis;
		try {
			fis = new FileInputStream(file);

			byte[] buffer = new byte[1024];
			MessageDigest md5;
			md5 = MessageDigest.getInstance("MD5");

			int numRead = 0;
			while ((numRead = fis.read(buffer)) > 0) {
				md5.update(buffer, 0, numRead);
			}
			fis.close();

			byte[] bt = md5.digest();
			StringBuilder sb = new StringBuilder(bt.length * 2);
			for (int i = 0; i < bt.length; i++) {
				sb.append(hexChar[(bt[i] & 0xf0) >>> 4]);
				sb.append(hexChar[bt[i] & 0x0f]);
			}
			return sb.toString();
		} catch (FileNotFoundException e) {
			throw new Exception("error.FileNotFoundException");
		} catch (IOException e) {
			throw new Exception("error.IOException");
		} catch (NoSuchAlgorithmException e) {
			throw new Exception("error.NoSuchAlgorithmException");
		}
	}
	
	 public static boolean createDirectory(String directory)
	    {
	        try
	        {
	            org.apache.commons.io.FileUtils.forceMkdir(new File(directory));
	            return true;
	        }
	        catch (IOException ex)
	        {
	            
	        }
	        return false;
	    }
	 
	 	/**
	     * 拷贝文件
	     *
	     * @param srcFile  源文件
	     * @param destFile 目的文件
	     * @return true:拷贝成功   false:拷贝失败
	     */
	    public static boolean copyFile(File srcFile, File destFile)
	    {
	        return copyFile(srcFile, destFile, true);
	    }
	    
	    /**
	     * 拷贝文件
	     *
	     * @param srcFile          源文件
	     * @param destFile         目的文件
	     * @param preserveFileDate 是否保留文件日期
	     * @return true:拷贝成功   false:拷贝失败
	     */
	    public static boolean copyFile(File srcFile, File destFile, boolean preserveFileDate)
	    {
	        try
	        {
	            org.apache.commons.io.FileUtils.copyFile(srcFile, destFile, preserveFileDate);
	            return true;
	        }
	        catch (IOException ex)
	        {
	           
	        }
	        return false;
	    }
	    
	    public static boolean createNewFile(String filePathName)
	    {
	        String filePath = FileUtil.getFullPath(filePathName);
	        //若目录不存在，则建立目录
	        if (!FileUtil.exists(filePath))
	        {
	            if (!createDirectory(filePath))
	                return false;
	        }

	        try
	        {
	            File file = new File(filePathName);
	            return file.createNewFile();
	        }
	        catch (IOException ex)
	        {
	            
	            return false;
	        }
	    }
	    public static boolean exists(String filePath)
	    {
	        File file = new File(filePath);
	        return file.exists();
	    }
	    public static String getFullPath(String filename)
	    {
	        return FilenameUtils.getFullPath(filename);
	    }
}
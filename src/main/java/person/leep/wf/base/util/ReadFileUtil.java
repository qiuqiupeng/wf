package person.leep.wf.base.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.JTable;
import javax.swing.table.TableModel;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;

/**
package person.leep.tools.util;

import java.io.BufferedReader;

/**
 * @author pengLee
 *
 */
public class ReadFileUtil {
	/**
	 * 获取文件扩展名
	 * 
	 * @param filename
	 * @return
	 */
	public static String getExtension(String filename) {
		String defExt = "";
		if ((filename != null) && (filename.length() > 0)) {
			int i = filename.lastIndexOf('.');

			if ((i > -1) && (i < (filename.length() - 1))) {
				defExt = filename.substring(i + 1);
			}
		}
		return defExt;
	}
	
	/**
	 * 读取txt文件
	 * 
	 * @param path
	 */
	public static List readTxtData(String path, String regex) {
		List dataList = new ArrayList();
		BufferedReader text;
		String data = null;
		try {
			text = new BufferedReader(new InputStreamReader(
					new FileInputStream(path)));
			while ((data = text.readLine()) != null) {
				// System.out.println(data);
				if (!"".equals(data))
					dataList.add(data.split(regex));
			}
			text.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO add your code for jButton1.actionPerformed
		catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return dataList;
	}
	
	/**
	 * 读取xls文件
	 * 
	 * @param file
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public static List getDataFromExcel(File file) throws FileNotFoundException,
			IOException {
		List list = new ArrayList();
		HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(file));
		int intCols = workbook.getSheetAt(0).getRow(0).getLastCellNum();
		int intRows = workbook.getSheetAt(0).getLastRowNum();
		for (int i = 0; i <= intRows; i++) {
			String[] data = new String[intCols];
			for (int j = 0; j < intCols; j++) {
				data[j] = ExcelUtil.getStringCellValue(workbook, 0, i,
						j);
			}
			list.add(data);
		}
		return list;

	}
	
	/**
	 * 从文件获取数据
	 * 
	 * @param file
	 * @param table
	 */
	public static void getDataFromFile(File file, JTable table) {
		List list;
		try {
			if ("xls".equals(getExtension(file.getAbsolutePath())))
				list = getDataFromExcel(file.getAbsoluteFile());
			else
				list = readTxtData(file.getAbsolutePath(), "\t");
			String[] column = (String[]) list.get(0);
			list.remove(0);
			Object[][] data = new Object[list.size()][column.length];
			for (int i = 0; i < data.length; i++) {
				data[i] = (String[]) list.get(i);
			}
			TableModel dataModel = new javax.swing.table.DefaultTableModel(
					data, column);
			table.setModel(dataModel);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 从文件获取数据
	 * 
	 * @param file
	 * @param table
	 */
	public static boolean getDataFromFile(File file) {
		boolean result = false;
		List list;
		try {
			if ("xls".equals(getExtension(file.getAbsolutePath())))
				list = getDataFromExcel(file.getAbsoluteFile());
			else
				list = readTxtData(file.getAbsolutePath(), "\t");
			String[] column = (String[]) list.get(0);
			list.remove(0);
			Object[][] data = new Object[list.size()][column.length];
			for (int i = 0; i < data.length; i++) {
				data[i] = (String[]) list.get(i);
			}
			
//			TableModel dataModel = new javax.swing.table.DefaultTableModel(
//					data, column);
//			table.setModel(dataModel);
			result = true;
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			return result;
		}
	}
	
	/**
	 * 获取数据列表List套Map[]
	 * 
	 * @param table
	 * @return
	 */
	public static List getDataList(JTable table) {
		List list = new ArrayList();
		int rows = table.getModel().getRowCount();
		int cols = table.getModel().getColumnCount();
		if (table.getColumn("分录号") == null) {
		} else {
			for (int i = rows - 1; i > 0;) {
				int temp = Integer.parseInt((String) table.getValueAt(i, table
						.getColumn("分录号").getModelIndex()));
				Map[] vouchers = new Map[temp];
				for (int j = 0; j < temp; j++) {
					Map voucher = new HashMap();
					for (int k = 0; k < cols; k++) {
						voucher.put(table.getColumnName(k),
								table.getValueAt(i - j, k));
					}
					vouchers[j] = voucher;
				}
				i = i - temp;
				list.add(vouchers);
			}
		}
		return list;
	}
}

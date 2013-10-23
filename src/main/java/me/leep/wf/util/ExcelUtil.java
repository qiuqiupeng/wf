package me.leep.wf.util;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.hssf.util.Region;

/**
 * @author pengLee
 * 
 */
public class ExcelUtil {
	public final static int SHEET_0 = 0;

	public final static int SHEET_1 = 1;

	/**
	 * 得到单个文本单元格的字符串数据
	 * 
	 * @param workbook
	 * @param sheetAt
	 * @param argRow
	 * @param argCol
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public static String getStringCellValue(HSSFWorkbook workbook, int sheetAt,
			int argRow, int argCol) throws FileNotFoundException, IOException {
		String result = "";
		HSSFCell cell = getCellValue(workbook, sheetAt, argRow, argCol);
		if (cell != null) {
			int type = cell.getCellType();
			if (type == HSSFCell.CELL_TYPE_NUMERIC) {
				if (HSSFDateUtil.isCellDateFormatted(cell)) {
					result = getDateFromCell(cell);
				} else {
					result = getNumberFromCell(cell);
				}
			} else if (type == HSSFCell.CELL_TYPE_STRING) {
				result = cell.getStringCellValue();
			} else if (type == HSSFCell.CELL_TYPE_FORMULA) {
				result = cell.getStringCellValue();
			} else if (type == HSSFCell.CELL_TYPE_BLANK) {
				result = "";
			} else if (type == HSSFCell.CELL_TYPE_BOOLEAN) {
				result = cell.getBooleanCellValue() + "";
			} else if (type == HSSFCell.CELL_TYPE_ERROR) {
				result = cell.getErrorCellValue() + "";
			} else {
				result = cell.getStringCellValue();
			}
		}

		return result;
	}
	
	/**
	 * 获取日期单元格数据
	 * @param cell
	 * @return
	 */
	public static String getDateFromCell(HSSFCell cell) {
		String s = "";
		s = (cell.getCellStyle().getDataFormatString().contains("y")) ? "yyyy-MM-dd" : "hh:mm:ss";
		String result = new SimpleDateFormat(s)
				.format(HSSFDateUtil.getJavaDate(cell
						.getNumericCellValue()));
		return result;
	}
	
	/**
	 * 获取数字单元格数据
	 * @param cell
	 * @return
	 */
	public static String getNumberFromCell(HSSFCell cell) {
		String result = "";
		DecimalFormat decimalFormat = new DecimalFormat("#######");  
        String resultStr = decimalFormat.format(new Double(cell.getNumericCellValue() + ""));
		 if (Double.parseDouble(resultStr) != cell.getNumericCellValue()) 
			 result = cell.getNumericCellValue() + "";
		 else 
			 result = resultStr;
		 return result;
	}

	/**
	 * 得到单个文本单元格的数据
	 * 
	 * @param workbook
	 * @param sheetAt
	 * @param argRow
	 * @param argCol
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public static String getSingleCellValue(HSSFWorkbook workbook, int sheetAt,
			int argRow, int argCol) throws FileNotFoundException, IOException {
		HSSFCell cell = getCellValue(workbook, sheetAt, argRow, argCol);
		return cell == null ? "" : cell.toString();
	}

	/**
	 * 得到单个时间单元格的数据
	 * 
	 * @param workbook
	 * @param sheetAt
	 * @param argRow
	 * @param argCol
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public static String getSingleTimeCellValue(HSSFWorkbook workbook,
			int sheetAt, int argRow, int argCol) throws FileNotFoundException,
			IOException {
		HSSFCell cell = getCellValue(workbook, sheetAt, argRow, argCol);
		return DoFormatDate(cell.getDateCellValue());
	}

	/**
	 * 得到单个数字单元格的数据
	 * 
	 * @param workbook
	 * @param sheetAt
	 * @param argRow
	 * @param argCol
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public static String getSingleNumCellValue(HSSFWorkbook workbook,
			int sheetAt, int argRow, int argCol) throws FileNotFoundException,
			IOException {
		HSSFCell cell = getCellValue(workbook, sheetAt, argRow, argCol);
		return cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC ? (int) Float
				.parseFloat(cell.toString()) + "" : cell.toString();
	}

	/**
	 * 按照“MM-dd”格式来格式化时间单元格
	 * 
	 * @param dt_in
	 * @return
	 */
	public static String printFormatDate(Date dt_in) {

		return (new SimpleDateFormat("MM-dd")).format(dt_in);
	}

	/**
	 * 设置单元格数据
	 * 
	 * @param workbook
	 *            工作薄
	 * @param sheetAt
	 *            工作页签
	 * @param argRow
	 *            行
	 * @param argCol
	 *            列
	 * @param cs
	 *            格式类型
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public static void setCellValue(HSSFWorkbook workbook, int sheetAt,
			int argRow, int argCol, HSSFCellStyle cs, String value)
			throws FileNotFoundException, IOException {
		// 创建对工作表的引用。
		HSSFSheet sheet = workbook.getSheetAt(sheetAt);
		// 读取行
		HSSFRow row = sheet.getRow(argRow);
		if (row == null) {
			row = sheet.createRow(argRow);
		}
		//
		HSSFCell cell = row.getCell((short) argCol);
		if (cell == null) {
			cell = row.createCell((short) argCol);
		}
		//
		if (cs != null) {
			cell.setCellStyle(cs);
		}
		cell.setCellType(HSSFCell.CELL_TYPE_STRING);
		cell.setCellValue(new HSSFRichTextString(value));
	}

	/**
	 * 设置单元格数据
	 * 
	 * @param workbook
	 *            工作薄
	 * @param sheetAt
	 *            工作页签
	 * @param argRow
	 *            行
	 * @param argCol
	 *            列
	 * @param cs
	 *            格式类型
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public static void setFormulaCellValue(HSSFWorkbook workbook, int sheetAt,
			int argRow, int argCol, HSSFCellStyle cs, String value)
			throws FileNotFoundException, IOException {
		// 创建对工作表的引用。
		HSSFSheet sheet = workbook.getSheetAt(sheetAt);
		// 读取行
		HSSFRow row = sheet.createRow(argRow);
		HSSFCell cell = row.createCell((short) argCol);
		if (cs != null) {
			cell.setCellStyle(cs);
		}
		cell.setCellType(HSSFCell.CELL_TYPE_FORMULA);
		cell.setCellFormula(value);
	}

	/**
	 * 设置数字单元格数据
	 * 
	 * @param workbook
	 *            工作薄
	 * @param sheetAt
	 *            工作页签
	 * @param argRow
	 *            行
	 * @param argCol
	 *            列
	 * @param cs
	 *            格式类型
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public static void setNumCellValue(HSSFWorkbook workbook, int sheetAt,
			int argRow, int argCol, HSSFCellStyle cs, String value)
			throws FileNotFoundException, IOException {
		// 创建对工作表的引用。
		HSSFSheet sheet = workbook.getSheetAt(sheetAt);
		// 读取行
		HSSFRow row = sheet.createRow(argRow);
		HSSFCell cell = row.createCell((short) argCol);
		if (cs != null) {
			cell.setCellStyle(cs);
		}
		cell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
		if (value.equals("")) {
			value = "0";
		}
		cell.setCellValue(Double.parseDouble(value));
	}

	/**
	 * 按照参数打印出表头。
	 * 
	 * @param workbook
	 *            工作薄
	 * @param sheetAt
	 *            工作页签
	 * @param argRow
	 *            表头所在行
	 * @param argStartCol
	 *            表头开始列
	 * @param cs
	 *            表头风格
	 * @param arrayValue
	 *            表头字符串数组
	 * @throws FileNotFoundException
	 *             文件没找到
	 * @throws IOException
	 *             io错误
	 */
	public static void setHeader(HSSFWorkbook workbook, int sheetAt,
			int argRow, int argStartCol, HSSFCellStyle cs, String[] arrayValue)
			throws FileNotFoundException, IOException {
		for (int i = argStartCol; i < arrayValue.length; i++) {
			setCellValue(workbook, sheetAt, argRow, argStartCol + i, cs,
					(String) arrayValue[i]);
		}
	}

	/**
	 * 按照参数打印出表头。
	 * 
	 * @param workbook
	 *            工作薄
	 * @param sheetAt
	 *            工作页签
	 * @param argRow
	 *            表头所在行
	 * @param argStartCol
	 *            表头开始列
	 * @param cs
	 *            表头风格
	 * @param arrayValue
	 *            表头字符串数组
	 * @throws FileNotFoundException
	 *             文件没找到
	 * @throws IOException
	 *             io错误
	 */
	public static void setReginValue(HSSFWorkbook workbook, int sheetAt,
			int argRow, int argStartCol, HSSFCellStyle cs, List arrayValue)
			throws FileNotFoundException, IOException {
		setHeader(workbook, sheetAt, argRow, argStartCol, cs,
				(String[]) arrayValue.toArray());
	}

	/**
	 * 得到单元格数据
	 * 
	 * @param workbook
	 * @param sheetAt
	 * @param argRow
	 * @param argCol
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	private static HSSFCell getCellValue(HSSFWorkbook workbook, int sheetAt,
			int argRow, int argCol) throws FileNotFoundException, IOException {
		// 创建对工作表的引用。
		HSSFSheet sheet = workbook.getSheetAt(sheetAt);
		// 读取行
		HSSFRow row = sheet.getRow(argRow);
		HSSFCell cell = row.getCell((short) argCol);

		return cell;
	}

	/**
	 * 格式化时间单元格
	 * 
	 * @param dt_in
	 * @return
	 */
	private static String DoFormatDate(Date dt_in) {
		return (new SimpleDateFormat("HH:mm")).format(dt_in);
	}

	public static void setCellValue(HSSFWorkbook wb, int i, int j, int k,
			HSSFCellStyle cs) {
		// 创建对工作表的引用。
		HSSFSheet sheet = wb.getSheetAt(i);
		// 读取行
		HSSFRow row = sheet.createRow(j);
		HSSFCell cell = row.createCell((short) k);
		if (cs != null) {
			cell.setCellStyle(cs);
		}
		cell.setCellType(HSSFCell.CELL_TYPE_FORMULA);
	}

	/**
	 * 设置公司logo图片
	 * 
	 * @param wb
	 * @param sheet
	 * @param argsInt
	 *            ，
	 * @param imagePath
	 * @throws IOException
	 */
	public static void getLogoImage(HSSFWorkbook wb, HSSFSheet sheet,
			int[] argsInt, String imagePath) throws IOException {
		setLogoImg(wb, sheet, argsInt, imagePath);

	}

	/**
	 * 设置公司logo图片具体实现
	 * 
	 * @param wb
	 * @param sheet
	 * @param argsInt
	 * @param imagePath
	 * @throws IOException
	 */
	public static void setLogoImg(HSSFWorkbook wb, HSSFSheet sheet,
			int[] argsInt, String imagePath) throws IOException {
		ByteArrayOutputStream byteArrayOut = new ByteArrayOutputStream();
		BufferedImage bufferImg = ImageIO.read(new File(imagePath));
		ImageIO.write(bufferImg, "jpg", byteArrayOut);
		HSSFPatriarch patriarch = sheet.createDrawingPatriarch();
		HSSFClientAnchor anchor = new HSSFClientAnchor(argsInt[0], argsInt[1],
				argsInt[2], argsInt[3], (short) argsInt[4], argsInt[5],
				(short) argsInt[6], argsInt[7]);
		patriarch.createPicture(anchor, wb.addPicture(
				byteArrayOut.toByteArray(), HSSFWorkbook.PICTURE_TYPE_JPEG));

	}

	/**
	 * 
	 * @param wb
	 * @param i
	 * @param j
	 * @param k
	 * @param cs
	 * @param l
	 */
	public static void setCellValue(HSSFWorkbook wb, int i, int j, int k,
			HSSFCellStyle cs, double l) {
		// 创建对工作表的引用。
		HSSFSheet sheet = wb.getSheetAt(i);
		// 读取行
		HSSFRow row = sheet.createRow(j);
		HSSFCell cell = row.createCell((short) k);
		if (cs != null) {
			cell.setCellStyle(cs);
		}
		cell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
		cell.setCellValue(l);
	}

	/**
	 * 读取Excel文件.
	 * 
	 * @param filePath
	 *            读取文件文件路径.
	 * @param fileName
	 *            文件名称.
	 * @param sheetIndex
	 *            文件模板最大索引值.
	 * @serialData 2009-08-22
	 * @author 1.0
	 * @author 
	 */
	public static HSSFWorkbook readExcelFile(String filePath, String fileName,
			int sheetIndex) {

		// 读取文件.
		HSSFWorkbook workbook = null;

		try {
			// 读取文件.
			try {
				workbook = new HSSFWorkbook(new FileInputStream(filePath));
				workbook.getSheetAt(sheetIndex);
			} catch (FileNotFoundException fne) {
				throw new FileNotFoundException();
			} catch (IOException ioe) {
				throw new IOException();
			} catch (Exception we) {
				throw new Exception();
			}
		} catch (Exception fe) {
			// MsgBox.showError("模板选择有错误,请确认!");
			fe.printStackTrace();
		}

		return workbook;
	}

	/**
	 * @author 
	 * @param workbook
	 *            工作薄.
	 * @param filePath
	 *            文件路径.
	 * @param fileName
	 *            文件名.
	 */
	public static void writeExcelFile(HSSFWorkbook workbook, String filePath,
			String fileName) {
		// 设备卡片信息.
		try {
			File file = null;
			FileOutputStream fileOut = null;
			try {
				// 输出数据文件.
				file = new File(filePath + "\\" + fileName);
				fileOut = new FileOutputStream(file);
				workbook.write(fileOut);
				fileOut.flush();
				// MsgBox.showInfo("文件输出成功!");
			} catch (FileNotFoundException fn) {
				fn.printStackTrace();
				throw new FileNotFoundException();
			} catch (IOException oe) {
				oe.printStackTrace();
				throw new IOException();
			} catch (Exception fe) {
				fe.printStackTrace();
				throw new Exception();
			} finally {
				if (fileOut != null) {
					fileOut.close();
				}
			}
		} catch (Exception fe) {
			fe.printStackTrace();
			// MsgBox.showError("文件输出失败!");
		}
	}

	/**
	 * 输出客户关系管理Excel.
	 * 
	 * @author 
	 * @param workbook
	 *            工作薄.
	 * @param filePath
	 *            文件路径.
	 * @param fileName
	 *            文件名.
	 */
	public static void writeCMExcelFile(HSSFWorkbook workbook, String filePath,
			String fileName) {
		// 设备卡片信息.
		try {
			File file = null;
			FileOutputStream fileOut = null;
			try {
				// 输出数据文件.
				file = new File(filePath + "\\" + fileName);
				fileOut = new FileOutputStream(file);
				workbook.write(fileOut);
				fileOut.flush();
			} catch (FileNotFoundException fn) {
				fn.printStackTrace();
				throw new FileNotFoundException();
			} catch (IOException oe) {
				oe.printStackTrace();
				throw new IOException();
			} catch (Exception fe) {
				fe.printStackTrace();
				throw new Exception();
			} finally {
				if (fileOut != null) {
					fileOut.close();
				}
			}
		} catch (Exception fe) {
			fe.printStackTrace();
		}
	}

	/**
	 * 设置EXCEL数据文件.
	 * 
	 * @param list
	 * @param workbook
	 * @param sheetIndex
	 * @param cs
	 * @param equipment
	 * @param row
	 * @param col
	 */
	public static void setExcelData(List list, HSSFWorkbook workbook,
			int sheetIndex, int row, int col, HSSFCellStyle cs) {
		for (int i = 0; i < list.size(); i++) {
			// 卡片设备
			// 卡片设备
			// 出租车
			// 出租车车队
			// 出租车公司
			// 卡片设备
			// 卡片设备
			// 检查单业务日期
			// 检查单内容
			// 维修单业务日期
			// 维修单内容
			String[] equip = (String[]) list.get(i);
			try {
				setHeader(workbook, sheetIndex, row++, col, cs, equip);
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 设置客户关系管理EXCEL数据文件.
	 * 
	 * @param list
	 * @param workbook
	 * @param sheetIndex
	 * @param cs
	 * @param equipment
	 * @param row
	 * @param col
	 */
	public static void setCMExcelData(List list, HSSFWorkbook workbook,
			int sheetIndex, int row, int col, HSSFCellStyle cs) {
		for (int i = 0; i < list.size(); i++) {
			String[] equip = (String[]) list.get(i);
			// 序列号.
			// 项目编码.
			// 文件名称.
			// 项目名称.
			// 客户名称.
			// 视频类型.
			// 时长.
			// 频次.
			try {
				String[] writeData = new String[equip.length - 1];
				// 拷贝数组:将数组equip数据拷贝到数组writeData中，长度为equip.length -1.
				System.arraycopy(equip, 0, writeData, 0, equip.length - 1);
				if (Integer.valueOf(equip[7]).intValue() <= 1) {
					setHeader(workbook, sheetIndex, row++, col, cs, writeData);
				} else {
					for (int j = 0; j < Integer.valueOf(equip[7]).intValue(); j++) {
						setHeader(workbook, sheetIndex, row++, col, cs,
								writeData);
					}
				}
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * @author 
	 * @param workbook
	 *            工作薄.
	 * @param filePath
	 *            文件路径.
	 * @param fileName
	 *            文件名.
	 */
	public static HSSFWorkbook getHSSFWorkbook() {
		// .
		return new HSSFWorkbook();
	}

	/**
	 * 设置表头.
	 * 
	 * @param workbook
	 * @param sheetIndex
	 * @param fieldName
	 */
	public static void setSheetHeaderFieldName(HSSFWorkbook workbook,
			int sheetIndex, String[] fieldName) {
		HSSFSheet sheet = workbook.getSheetAt(sheetIndex);

		// 设置默认行.
		int row = 0;
		sheet.createRow(row);
		for (int f = 0; f < fieldName.length; f++) {
			try {
				if (sheetIndex != 3 || f != 0) {
					setCellValue(workbook, sheetIndex, row, f,
							setSheetCellBorderStyle(workbook), fieldName[f]);// 标题.
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 获取当前输出Excel文件名.
	 * 
	 * @param fileName
	 *            文件名称.
	 * @param dateRange
	 *            日期范围.
	 * @return
	 */
	public static String getExcelFileName(String fileName, String[] dateRange) {
		if (fileName != null && dateRange != null && dateRange.length > 1) {
			return fileName + "(" + dateRange[0].replaceAll("-", "") + "-"
					+ dateRange[1].replaceAll("-", "") + ").xls";
		}

		return fileName;
	}

	/**
	 * 设置列宽.
	 * 
	 * @param workbook
	 * @param sheetIndex
	 * @param columnWidth
	 */
	public static void setSheetColumnWidth(HSSFWorkbook workbook,
			int sheetIndex, int[] columnWidth) {
		HSSFSheet sheet = workbook.getSheetAt(sheetIndex);

		for (int c = 0; c < columnWidth.length; c++) {
			sheet.setColumnWidth((short) c, (short) columnWidth[c]);
		}
	}

	/**
	 * 设置边框风格.
	 * 
	 * @param workbook
	 * @return
	 */
	public static HSSFCellStyle setSheetCellStyle(HSSFWorkbook workbook) {
		HSSFCellStyle cellStyle = workbook.createCellStyle();
		// 边框风格设置.
		cellStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框.
		cellStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);// 下边框.
		cellStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框.
		cellStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框.

		return cellStyle;
	}

	/**
	 * 设置边框风格.
	 * 
	 * @param workbook
	 * @return
	 */
	public static HSSFCellStyle setSheetCellBorderStyle(HSSFWorkbook workbook) {
		HSSFCellStyle cellStyle = workbook.createCellStyle();
		// 边框风格设置.
		cellStyle.setBorderTop(HSSFCellStyle.BORDER_MEDIUM);// 上边框.
		cellStyle.setBorderBottom(HSSFCellStyle.BORDER_MEDIUM);// 下边框.
		cellStyle.setBorderLeft(HSSFCellStyle.BORDER_MEDIUM);// 左边框.
		cellStyle.setBorderRight(HSSFCellStyle.BORDER_MEDIUM);// 右边框.

		return cellStyle;
	}

	/**
	 * 设置字体和内容位置.
	 * 
	 * @param workBook
	 * @param style
	 * @return HSSFCellStyle
	 */
	public static HSSFCellStyle borderCellStyle(HSSFWorkbook workBook,
			HSSFCellStyle style, short hssfFont, short hssfColor) {
		// 媒介监测汇总:全部正常率.
		HSSFFont font = workBook.createFont();

		font.setBoldweight(hssfFont);// 正常.
		font.setColor(hssfColor);// 字体颜色.
		font.setFontHeightInPoints((short) 10);// 字号.
		font.setFontName("宋体"); // 宋体.

		style.setFont(font);
		style.setWrapText(true);// 换行.
		style.setFillForegroundColor(HSSFColor.GREY_25_PERCENT.index);// 背景色.
		style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);// 填充模式.
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);// 左右居中.
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);// 上下居中.

		return style;
	}

	/**
	 * 设置字体和内容位置.
	 * 
	 * @param workBook
	 * @param style
	 * @return HSSFCellStyle
	 */
	public static HSSFCellStyle fontCellStyle(HSSFWorkbook workBook,
			HSSFCellStyle style, short hssfFont, short hssfColor) {
		// 媒介监测汇总:全部正常率.
		HSSFFont font = workBook.createFont();

		font.setBoldweight(hssfFont);// 正常.
		font.setColor(hssfColor);// 字体颜色.
		font.setFontHeightInPoints((short) 10);// 字号.
		font.setFontName("宋体"); // 宋体.

		style.setFont(font);
		style.setWrapText(true);// 换行.
		style.setFillForegroundColor(HSSFColor.YELLOW.index);// 背景色.
		style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);// 填充模式.
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);// 左右居中.
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);// 上下居中.

		return style;
	}

	/**
	 * 合并单元格.
	 * 
	 * @param workBook
	 * @param sheet
	 *            工作表索引值.
	 * @param startRow
	 *            开始行.
	 * @param endRow
	 *            结束行.
	 * @param startCol
	 *            开始列.
	 * @param endCol
	 *            结束列.
	 */
	public static void mergedRegionCell(HSSFWorkbook workBook, HSSFSheet sheet,
			int startRow, int endRow, int startCol, int endCol) {
		sheet.addMergedRegion(new Region(startRow, (short) startCol, endRow,
				(short) endCol));
	}

}

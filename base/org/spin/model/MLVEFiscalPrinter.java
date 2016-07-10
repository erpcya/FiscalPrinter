/**
 * 
 */
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;

/**
 * @author erpcya_tt
 *
 */
public class MLVEFiscalPrinter extends X_LVE_FiscalPrinter {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8718055162226194988L;

	/**
	 * @param ctx
	 * @param LVE_FiscalPrinter_ID
	 * @param trxName
	 */
	public MLVEFiscalPrinter(Properties ctx, int LVE_FiscalPrinter_ID,
			String trxName) {
		super(ctx, LVE_FiscalPrinter_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEFiscalPrinter(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

}

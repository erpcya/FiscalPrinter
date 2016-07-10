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
public class MLVEFPDevice extends X_LVE_FP_Device {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6995180875307936011L;

	/**
	 * @param ctx
	 * @param LVE_FP_Device_ID
	 * @param trxName
	 */
	public MLVEFPDevice(Properties ctx, int LVE_FP_Device_ID, String trxName) {
		super(ctx, LVE_FP_Device_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEFPDevice(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

}

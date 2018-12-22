using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WCF_Proyecto_DAL.BD;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WCF_Proyecto_BLL.BD
{
    public class Cls_BD_BLL
    {
        public string ConectarBD()
        {
            try
            {
                Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();
                Obj_BD_DAL.scadena_conexion = ConfigurationManager.ConnectionStrings[1].ToString();

                Obj_BD_DAL.Obj_sql_cnx = new SqlConnection(Obj_BD_DAL.scadena_conexion);

                if (Obj_BD_DAL.Obj_sql_cnx.State == ConnectionState.Closed)
                {
                    Obj_BD_DAL.Obj_sql_cnx.Open();
                }

                return string.Empty;
            }
            catch (SqlException e)
            {
                return e.Message.ToString();
            }
        }

        public DataTable ExecuteDataAdapter(string sNombre_SP, string sNombreParametro, 
                                            SqlDbType DbType, string sValorParametro, ref string sMsjError)
        {
            try
            {
                Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();
                Obj_BD_DAL.scadena_conexion = ConfigurationManager.ConnectionStrings[1].ToString();

                Obj_BD_DAL.Obj_sql_cnx = new SqlConnection(Obj_BD_DAL.scadena_conexion);

                if (Obj_BD_DAL.Obj_sql_cnx.State == ConnectionState.Closed)
                {
                    Obj_BD_DAL.Obj_sql_cnx.Open();
                }

                Obj_BD_DAL.Obj_sql_adap = new SqlDataAdapter(sNombre_SP, Obj_BD_DAL.Obj_sql_cnx);

                DataSet DS = new DataSet();

                Obj_BD_DAL.Obj_sql_adap.SelectCommand.CommandType = CommandType.StoredProcedure;

                if (sValorParametro != string.Empty)
                {
                    Obj_BD_DAL.Obj_sql_adap.SelectCommand.Parameters.Add(sNombreParametro, DbType).Value = sValorParametro;
                }

                Obj_BD_DAL.Obj_sql_adap.Fill(DS);

                sMsjError = string.Empty;

                return DS.Tables[0];
            }
            catch (SqlException ex)
            {
                sMsjError = ex.Message.ToString();
                return null;
            }
            
        }

        public bool ExecuteNonQuery(string sNombre_SP, DataTable dtParametros, ref string sMsjError)
        {
            try
            {
                Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();
                Obj_BD_DAL.scadena_conexion = ConfigurationManager.ConnectionStrings[1].ToString();

                Obj_BD_DAL.Obj_sql_cnx = new SqlConnection(Obj_BD_DAL.scadena_conexion);

                if (Obj_BD_DAL.Obj_sql_cnx.State == ConnectionState.Closed)
                {
                    Obj_BD_DAL.Obj_sql_cnx.Open();
                }

                Obj_BD_DAL.Obj_sql_cmd = new SqlCommand(sNombre_SP, Obj_BD_DAL.Obj_sql_cnx);

                Obj_BD_DAL.Obj_sql_cmd.CommandType = CommandType.StoredProcedure;


                #region Área de Agregar Parámetros

                    if (dtParametros.Rows.Count > 0)
                    {
                        foreach (DataRow dr in dtParametros.Rows)
                        {
                            SqlDbType dbt = SqlDbType.VarChar;

                            switch (dr[1].ToString())
                            {
                                case "1":                                    
                                    dbt = SqlDbType.Int;
                                    break;                                
                                case "2":
                                    {
                                        dbt = SqlDbType.VarChar;
                                        break;
                                    }
                                case "3":
                                    {
                                        dbt = SqlDbType.NVarChar;
                                        break;
                                    }
                                case "4":
                                    {
                                        dbt = SqlDbType.Char;
                                        break;
                                    }
                                case "5":
                                    {
                                        dbt = SqlDbType.NChar;
                                        break;
                                    }
                                default:
                                        break;
                            }

                            Obj_BD_DAL.Obj_sql_cmd.Parameters.Add(dr[0].ToString(), dbt).Value = dr[2].ToString();
                        }                        
                    }

                #endregion

                Obj_BD_DAL.Obj_sql_cmd.ExecuteNonQuery();

                sMsjError = string.Empty;
                return true;
            }
            catch (SqlException ex)
            {
                sMsjError = ex.Message.ToString();
                return false;
            }
        }

        public bool ExecuteScalar(string sNombre_SP, DataTable dtParametros, ref string sValorScalar, ref string sMsjError)
        {
            try
            {
                Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();
                Obj_BD_DAL.scadena_conexion = ConfigurationManager.ConnectionStrings[1].ToString();

                Obj_BD_DAL.Obj_sql_cnx = new SqlConnection(Obj_BD_DAL.scadena_conexion);

                if (Obj_BD_DAL.Obj_sql_cnx.State == ConnectionState.Closed)
                {
                    Obj_BD_DAL.Obj_sql_cnx.Open();
                }

                Obj_BD_DAL.Obj_sql_cmd = new SqlCommand(sNombre_SP, Obj_BD_DAL.Obj_sql_cnx);

                Obj_BD_DAL.Obj_sql_cmd.CommandType = CommandType.StoredProcedure;


                #region Área de Agregar Parámetros

                if (dtParametros.Rows.Count > 0)
                {
                    foreach (DataRow dr in dtParametros.Rows)
                    {
                        SqlDbType dbt = SqlDbType.VarChar;

                        switch (dr[1].ToString())
                        {
                            case "1":
                                dbt = SqlDbType.Int;
                                break;
                            case "2":
                                {
                                    dbt = SqlDbType.VarChar;
                                    break;
                                }
                            case "3":
                                {
                                    dbt = SqlDbType.NVarChar;
                                    break;
                                }
                            case "4":
                                {
                                    dbt = SqlDbType.Char;
                                    break;
                                }
                            case "5":
                                {
                                    dbt = SqlDbType.NChar;
                                    break;
                                }
                            default:
                                break;
                        }

                        Obj_BD_DAL.Obj_sql_cmd.Parameters.Add(dr[0].ToString(), dbt).Value = dr[2].ToString();
                    }
                }

                #endregion

                sValorScalar = Obj_BD_DAL.Obj_sql_cmd.ExecuteScalar().ToString();

                sMsjError = string.Empty;
                return true;
            }
            catch (SqlException ex)
            {
                sMsjError = ex.Message.ToString();
                return false;
            }
        }


    }
}

import snowflake.snowpark.functions as F
def model(dbt, session):

    my_sql_model_df = dbt.ref("chicagocrimedata")

    final_df = my_sql_model_df

    return final_df

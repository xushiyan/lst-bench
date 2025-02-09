CREATE
    TABLE
        ${catalog}.${database}.web_returns(
            wr_returned_time_sk INT,
            wr_item_sk INT,
            wr_refunded_customer_sk INT,
            wr_refunded_cdemo_sk INT,
            wr_refunded_hdemo_sk INT,
            wr_refunded_addr_sk INT,
            wr_returning_customer_sk INT,
            wr_returning_cdemo_sk INT,
            wr_returning_hdemo_sk INT,
            wr_returning_addr_sk INT,
            wr_web_page_sk INT,
            wr_reason_sk INT,
            wr_order_number BIGINT,
            wr_return_quantity INT,
            wr_return_amt DECIMAL(
                7,
                2
            ),
            wr_return_tax DECIMAL(
                7,
                2
            ),
            wr_return_amt_inc_tax DECIMAL(
                7,
                2
            ),
            wr_fee DECIMAL(
                7,
                2
            ),
            wr_return_ship_cost DECIMAL(
                7,
                2
            ),
            wr_refunded_cash DECIMAL(
                7,
                2
            ),
            wr_reversed_charge DECIMAL(
                7,
                2
            ),
            wr_account_credit DECIMAL(
                7,
                2
            ),
            wr_net_loss DECIMAL(
                7,
                2
            ),
            wr_returned_date_sk INT
        )
            USING ${table_format} OPTIONS(
            PATH '${data_path}${experiment_start_time}/${repetition}/web_returns/'
        ) PARTITIONED BY(wr_returned_date_sk) TBLPROPERTIES(
            'primaryKey' = 'wr_item_sk,wr_order_number' ${table_props_suffix}
        );

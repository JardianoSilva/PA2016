CREATE OR REPLACE VIEW VW_CENARIOS_QUANTCLI_PORITEM
   AS
      SELECT 
          A.ID_ITEM AS ID_ITEM,A.NOME_ITEM AS NM_ITEM,
          A.CENARIOTIMISTACLIENTE AS CENARIOOTIMISTA_CLI,
          A.CENARIOPESSIMISTACLIENTE AS CENARIOPESSIMISTA_CLI,
          A.CENARIOPROVAVELCLI AS CENARIOPROVAVEL_CLI,
          A.MESFUTURO AS MES_NUM,
          CASE 
            WHEN A.MESFUTURO = 1 THEN 'Jan'
            WHEN A.MESFUTURO = 2 THEN 'Fev'
            WHEN A.MESFUTURO = 3 THEN 'Mar'
            WHEN A.MESFUTURO = 4 THEN 'Abr'
            WHEN A.MESFUTURO = 5 THEN 'Mai'
            WHEN A.MESFUTURO = 6 THEN 'Jun'
            WHEN A.MESFUTURO = 7 THEN 'Jul'
            WHEN A.MESFUTURO = 8 THEN 'Ago'
            WHEN A.MESFUTURO = 9 THEN 'Set'
            WHEN A.MESFUTURO = 10 THEN 'Out'
            WHEN A.MESFUTURO = 11 THEN 'Nov'
            WHEN A.MESFUTURO = 12 THEN 'Dez'
          END MES_DESC,  
          A.ANOFUTURO AS ANO
      FROM DADOS_FUTUROS_ITEM A
      WHERE A.TIPO_PROCESSAMENTO = 2
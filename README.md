# oracle-to-postgresql-migration

Oracle Database から PostgreSQL にマイグレーションを行う

## Ora2Pg

DMLまたはDDLが記載されているSQLファイルをOracle形式からPostgreSQL形式に変更する。

### セットアップ

以下のDockerイメージを用いる

- [georgmoser/ora2pg](https://hub.docker.com/r/georgmoser/ora2pg)

### 実行

- input.sql:入力ファイル
- output.sql:出力ファイル

```bash
#!/bin/bash -xv

docker run --rm --net="host" --name pgloader \
    -v $(pwd)/config:/config \
    -v $(pwd)/data:/data \
    georgmoser/ora2pg:21.0 \
    ora2pg -c /config/ora2pg.conf -i /data/input.sql -o /data/output.sql -t QUERY
```

## refs

- [Ora2Pg](https://ora2pg.darold.net/)
- [darold/ora2pg](https://github.com/darold/ora2pg)
- [Ora2Pg (Oracle/PostgreSQLマイグレーションツール)](https://www.sraoss.co.jp/tech-blog/pgsql/ora2pg/)- 
- [OracleからPostgreSQL移行について](https://qiita.com/yaju/items/7cf5ab6987ecd1d83b13)
- [ora2pgを使用してOracleのSQLをPostgreSQLへ変換する](https://qiita.com/mkyz08/items/8629cfb221a864469a55)
- [データベースマイグレーション ～OracleからPostgreSQLへ～　ー第１回ー](https://future-architect.github.io/articles/20180529/)
- [データベースマイグレーション ～OracleからPostgreSQLへ～　－第２回ー](https://future-architect.github.io/articles/20180809/)
- [このora2pgがすごい！Oracleのストアドプロシージャ2種をPostgreSQLに移行してみた！](https://www.ntt-tx.co.jp/column/postgresql_blog/20171027/)
- [Oracle や SQL Server のコードを PostgreSQL に変換する開発者向けの移行のヒント](https://aws.amazon.com/jp/blogs/news/code-conversion-challenges-while-migrating-from-oracle-or-microsoft-sql-server-to-postgresql/)
- [Data and Analytics Platform Migration - SQLines](http://www.sqlines.com/)
- [SQLines - Online SQL Conversion](http://www.sqlines.com/online)

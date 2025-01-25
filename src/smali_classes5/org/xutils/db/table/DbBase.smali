.class public abstract Lorg/xutils/db/table/DbBase;
.super Ljava/lang/Object;
.source "DbBase.java"

# interfaces
.implements Lorg/xutils/DbManager;


# instance fields
.field private final tableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addColumn(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->getColumnMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/table/ColumnEntity;

    .line 81
    if-eqz v0, :cond_68

    .line 82
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v2

    if-nez v2, :cond_17

    .line 89
    :goto_16
    return-void

    .line 83
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v3, "ALTER TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, " ADD COLUMN "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->getProperty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->execNonQuery(Ljava/lang/String;)V

    goto :goto_16

    .line 90
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the column("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is not defined in table: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dropDb()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 51
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name<>\'sqlite_sequence\'"

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_67

    .line 54
    :goto_8
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_31

    move-result v0

    if-eqz v0, :cond_3d

    .line 56
    const/4 v0, 0x0

    :try_start_f
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->execNonQuery(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_28

    goto :goto_8

    .line 58
    :catchall_28
    move-exception v0

    .line 59
    :try_start_29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_31

    goto :goto_8

    .line 69
    :catchall_31
    move-exception v0

    .line 70
    :try_start_32
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_38

    .line 72
    :catchall_38
    move-exception v0

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 73
    throw v0

    .line 63
    :cond_3d
    :try_start_3d
    iget-object v2, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_31

    .line 64
    :try_start_40
    iget-object v0, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/table/TableEntity;

    .line 65
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/xutils/db/table/TableEntity;->setTableCheckedStatus(Z)V

    goto :goto_4a

    .line 68
    :catchall_5b
    move-exception v0

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_40 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_31

    .line 67
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_5b

    .line 72
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 75
    :cond_67
    return-void
.end method

.method public dropTable(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 47
    :goto_a
    return-void

    .line 44
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/table/DbBase;->execNonQuery(Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xutils/db/table/TableEntity;->setTableCheckedStatus(Z)V

    .line 46
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->removeTable(Ljava/lang/Class;)V

    goto :goto_a
.end method

.method public getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 23
    iget-object v1, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 24
    :try_start_3
    iget-object v0, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/table/TableEntity;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 25
    if-nez v0, :cond_17

    .line 27
    :try_start_d
    new-instance v0, Lorg/xutils/db/table/TableEntity;

    invoke-direct {v0, p0, p1}, Lorg/xutils/db/table/TableEntity;-><init>(Lorg/xutils/DbManager;Ljava/lang/Class;)V
    :try_end_12
    .catch Lorg/xutils/ex/DbException; {:try_start_d .. :try_end_12} :catch_23
    .catchall {:try_start_d .. :try_end_12} :catchall_19

    .line 32
    :try_start_12
    iget-object v2, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_17
    monitor-exit v1

    return-object v0

    .line 30
    :catchall_19
    move-exception v0

    .line 31
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 37
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_20

    throw v0

    .line 28
    :catch_23
    move-exception v0

    .line 29
    :try_start_24
    throw v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20
.end method

.method protected removeTable(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .line 95
    iget-object v1, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 96
    :try_start_3
    iget-object v0, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

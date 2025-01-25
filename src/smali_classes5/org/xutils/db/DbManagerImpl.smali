.class public final Lorg/xutils/db/DbManagerImpl;
.super Lorg/xutils/db/table/DbBase;
.source "DbManagerImpl.java"


# static fields
.field private static final DAO_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/xutils/DbManager$DaoConfig;",
            "Lorg/xutils/db/DbManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowTransaction:Z

.field private daoConfig:Lorg/xutils/DbManager$DaoConfig;

.field private database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/xutils/DbManager$DaoConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/xutils/db/table/DbBase;-><init>()V

    .line 57
    if-eqz p1, :cond_34

    .line 61
    iput-object p1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    .line 62
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->isAllowTransaction()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    .line 64
    :try_start_d
    invoke-direct {p0, p1}, Lorg/xutils/db/DbManagerImpl;->openOrCreateDatabase(Lorg/xutils/DbManager$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbOpenListener()Lorg/xutils/DbManager$DbOpenListener;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1c

    .line 67
    invoke-interface {v0, p0}, Lorg/xutils/DbManager$DbOpenListener;->onDbOpened(Lorg/xutils/DbManager;)V
    :try_end_1c
    .catch Lorg/xutils/ex/DbException; {:try_start_d .. :try_end_1c} :catch_2d
    .catchall {:try_start_d .. :try_end_1c} :catchall_1d

    .line 75
    :cond_1c
    return-void

    .line 72
    :catchall_1d
    move-exception v0

    .line 73
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :catch_2d
    move-exception v0

    .line 70
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    throw v0

    .line 58
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "daoConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beginTransaction()V
    .registers 3

    .line 485
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_17

    .line 486
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 487
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 492
    :cond_17
    :goto_17
    return-void

    .line 489
    :cond_18
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_17
.end method

.method private endTransaction()V
    .registers 2

    .line 501
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_9

    .line 502
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 504
    :cond_9
    return-void
.end method

.method public static getInstance(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const-class v0, Lorg/xutils/db/DbManagerImpl;

    monitor-enter v0

    .line 80
    if-nez p0, :cond_a

    .line 81
    :try_start_5
    new-instance p0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {p0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    .line 84
    :cond_a
    sget-object v1, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/DbManagerImpl;

    .line 85
    if-nez v0, :cond_3a

    .line 86
    new-instance v0, Lorg/xutils/db/DbManagerImpl;

    invoke-direct {v0, p0}, Lorg/xutils/db/DbManagerImpl;-><init>(Lorg/xutils/DbManager$DaoConfig;)V

    .line 87
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_1c
    iget-object v1, v0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 95
    invoke-virtual {p0}, Lorg/xutils/DbManager$DaoConfig;->getDbVersion()I

    move-result v3

    .line 96
    if-eq v2, v3, :cond_36

    .line 97
    if-eqz v2, :cond_33

    .line 98
    invoke-virtual {p0}, Lorg/xutils/DbManager$DaoConfig;->getDbUpgradeListener()Lorg/xutils/DbManager$DbUpgradeListener;

    move-result-object v4

    .line 99
    if-eqz v4, :cond_42

    .line 100
    invoke-interface {v4, v0, v2, v3}, Lorg/xutils/DbManager$DbUpgradeListener;->onUpgrade(Lorg/xutils/DbManager;II)V

    .line 105
    :cond_33
    :goto_33
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_3d

    .line 108
    :cond_36
    const-class v1, Lorg/xutils/db/DbManagerImpl;

    monitor-exit v1

    return-object v0

    .line 89
    :cond_3a
    :try_start_3a
    iput-object p0, v0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_3d

    goto :goto_1c

    .line 79
    :catchall_3d
    move-exception v0

    const-class v1, Lorg/xutils/db/DbManagerImpl;

    monitor-exit v1

    throw v0

    .line 102
    :cond_42
    :try_start_42
    invoke-virtual {v0}, Lorg/xutils/db/DbManagerImpl;->dropDb()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3d

    goto :goto_33
.end method

.method private getLastAutoIncrementId(Ljava/lang/String;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 454
    const-wide/16 v0, -0x1

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT seq FROM sqlite_sequence WHERE name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' LIMIT 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 456
    if-eqz v2, :cond_2c

    .line 458
    :try_start_1e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 459
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2d

    move-result-wide v0

    .line 464
    :cond_29
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 467
    :cond_2c
    return-wide v0

    .line 461
    :catchall_2d
    move-exception v0

    .line 462
    :try_start_2e
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_34

    .line 464
    :catchall_34
    move-exception v0

    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 465
    throw v0
.end method

.method private openOrCreateDatabase(Lorg/xutils/DbManager$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    const/4 v3, 0x0

    .line 409
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbDir()Ljava/io/File;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 413
    :cond_13
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    invoke-static {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 418
    :goto_20
    return-object v0

    .line 416
    :cond_21
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Application;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_20
.end method

.method private saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 436
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 438
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 439
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/xutils/db/DbManagerImpl;->getLastAutoIncrementId(Ljava/lang/String;)J

    move-result-wide v2

    .line 440
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_22

    .line 441
    const/4 v0, 0x0

    .line 447
    :goto_21
    return v0

    .line 443
    :cond_22
    invoke-virtual {v1, p2, v2, v3}, Lorg/xutils/db/table/ColumnEntity;->setAutoIdValue(Ljava/lang/Object;J)V

    goto :goto_21

    .line 446
    :cond_26
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_21
.end method

.method private saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 425
    invoke-virtual {v0, p2}, Lorg/xutils/db/table/ColumnEntity;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 426
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 433
    :goto_1a
    return-void

    .line 428
    :cond_1b
    invoke-direct {p0, p1, p2}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    goto :goto_1a

    .line 431
    :cond_1f
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_1a
.end method

.method private setTransactionSuccessful()V
    .registers 2

    .line 495
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_9

    .line 496
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 498
    :cond_9
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    sget-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 477
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 480
    :cond_14
    return-void
.end method

.method public delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    .line 285
    :goto_b
    return v0

    .line 276
    :cond_c
    :try_start_c
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 280
    invoke-static {v0, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I

    move-result v0

    .line 282
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1e

    .line 284
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_b

    :catchall_1e
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 285
    throw v0
.end method

.method public delete(Ljava/lang/Class;)V
    .registers 3
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

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xutils/db/DbManagerImpl;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I

    .line 270
    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 245
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 247
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_45

    .line 248
    check-cast p1, Ljava/util/List;

    .line 249
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_40

    move-result v0

    if-eqz v0, :cond_13

    .line 263
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 264
    :goto_12
    return-void

    .line 250
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_40

    move-result v1

    if-nez v1, :cond_2a

    .line 263
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_12

    .line 252
    :cond_2a
    :try_start_2a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 253
    invoke-static {v0, v2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_40

    goto :goto_2e

    .line 263
    :catchall_40
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 264
    throw v0

    .line 256
    :cond_45
    :try_start_45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_40

    move-result v1

    if-nez v1, :cond_57

    .line 263
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_12

    .line 258
    :cond_57
    :try_start_57
    invoke-static {v0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 261
    :cond_5e
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_40

    .line 263
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_12
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 239
    :goto_a
    return-void

    .line 232
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 234
    invoke-static {v0, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfoById(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 236
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 238
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_a

    :catchall_1c
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 239
    throw v0
.end method

.method public execNonQuery(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 567
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 570
    return-void

    .line 568
    :catchall_6
    move-exception v0

    .line 569
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 547
    const/4 v1, 0x0

    .line 549
    :try_start_1
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v0}, Lorg/xutils/db/sqlite/SqlInfo;->buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_19

    .line 554
    if-eqz v1, :cond_f

    .line 556
    :try_start_c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 562
    :cond_f
    :goto_f
    return-void

    .line 557
    :catchall_10
    move-exception v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 551
    :catchall_19
    move-exception v0

    .line 552
    :try_start_1a
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 554
    :catchall_20
    move-exception v0

    if-eqz v1, :cond_26

    .line 556
    :try_start_23
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    .line 561
    :cond_26
    :goto_26
    throw v0

    .line 557
    :catchall_27
    move-exception v1

    .line 558
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public execQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 585
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_8

    move-result-object v0

    return-object v0

    .line 586
    :catchall_8
    move-exception v0

    .line 587
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 576
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/SqlInfo;->getBindArgsAsStrArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_f

    move-result-object v0

    return-object v0

    .line 577
    :catchall_f
    move-exception v0

    .line 578
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public executeUpdateDelete(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 528
    const/4 v1, 0x0

    .line 530
    :try_start_1
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 531
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    move-result v0

    .line 535
    if-eqz v1, :cond_10

    .line 537
    :try_start_d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    .line 531
    :cond_10
    :goto_10
    return v0

    .line 538
    :catchall_11
    move-exception v1

    .line 539
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 532
    :catchall_1a
    move-exception v0

    .line 533
    :try_start_1b
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_21

    .line 535
    :catchall_21
    move-exception v0

    if-eqz v1, :cond_27

    .line 537
    :try_start_24
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    .line 542
    :cond_27
    :goto_27
    throw v0

    .line 538
    :catchall_28
    move-exception v1

    .line 539
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 509
    const/4 v1, 0x0

    .line 511
    :try_start_1
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v0}, Lorg/xutils/db/sqlite/SqlInfo;->buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    move-result v0

    .line 516
    if-eqz v1, :cond_10

    .line 518
    :try_start_d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    .line 512
    :cond_10
    :goto_10
    return v0

    .line 519
    :catchall_11
    move-exception v1

    .line 520
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 513
    :catchall_1a
    move-exception v0

    .line 514
    :try_start_1b
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_21

    .line 516
    :catchall_21
    move-exception v0

    if-eqz v1, :cond_27

    .line 518
    :try_start_24
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    .line 523
    :cond_27
    :goto_27
    throw v0

    .line 519
    :catchall_28
    move-exception v1

    .line 520
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findById(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v2

    if-nez v2, :cond_c

    .line 352
    :cond_b
    :goto_b
    return-object v0

    .line 338
    :cond_c
    invoke-static {v1}, Lorg/xutils/db/Selector;->from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object v2

    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v2, v3, v4, p2}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v2

    .line 339
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 341
    if-eqz v2, :cond_b

    .line 343
    :try_start_2d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 344
    invoke-static {v1, v2}, Lorg/xutils/db/CursorUtils;->getEntity(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_3f

    move-result-object v0

    .line 349
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_b

    :cond_3b
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_b

    .line 346
    :catchall_3f
    move-exception v0

    .line 347
    :try_start_40
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_46

    .line 349
    :catchall_46
    move-exception v0

    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 350
    throw v0
.end method

.method public findDbModelAll(Lorg/xutils/db/sqlite/SqlInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/SqlInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_28

    .line 394
    :goto_b
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 395
    invoke-static {v1}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_b

    .line 397
    :catchall_19
    move-exception v0

    .line 398
    :try_start_1a
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 400
    :catchall_20
    move-exception v0

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 401
    throw v0

    .line 400
    :cond_25
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 403
    :cond_28
    return-object v0
.end method

.method public findDbModelFirst(Lorg/xutils/db/sqlite/SqlInfo;)Lorg/xutils/db/table/DbModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object v1

    .line 373
    if-eqz v1, :cond_17

    .line 375
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 376
    invoke-static {v1}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_19

    move-result-object v0

    .line 381
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 384
    :goto_13
    return-object v0

    .line 381
    :cond_14
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 384
    :cond_17
    const/4 v0, 0x0

    goto :goto_13

    .line 378
    :catchall_19
    move-exception v0

    .line 379
    :try_start_1a
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 381
    :catchall_20
    move-exception v0

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 382
    throw v0
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDaoConfig()Lorg/xutils/DbManager$DaoConfig;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 113
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public replace(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 151
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 153
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3e

    .line 154
    check-cast p1, Ljava/util/List;

    .line 155
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_39

    move-result v0

    if-eqz v0, :cond_13

    .line 169
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 170
    :goto_12
    return-void

    .line 156
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 159
    invoke-static {v0, v2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_39

    goto :goto_27

    .line 169
    :catchall_39
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 170
    throw v0

    .line 162
    :cond_3e
    :try_start_3e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 164
    invoke-static {v0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 167
    :cond_50
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_39

    .line 169
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_12
.end method

.method public save(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 176
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 178
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3e

    .line 179
    check-cast p1, Ljava/util/List;

    .line 180
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_39

    move-result v0

    if-eqz v0, :cond_13

    .line 194
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 195
    :goto_12
    return-void

    .line 181
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 184
    invoke-static {v0, v2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_39

    goto :goto_27

    .line 194
    :catchall_39
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 195
    throw v0

    .line 187
    :cond_3e
    :try_start_3e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 189
    invoke-static {v0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 192
    :cond_50
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_39

    .line 194
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_12
.end method

.method public saveBindingId(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    .line 202
    :try_start_1
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 204
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_45

    .line 205
    check-cast p1, Ljava/util/List;

    .line 206
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_40

    move-result v1

    if-eqz v1, :cond_14

    .line 222
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 223
    :goto_13
    return v0

    .line 207
    :cond_14
    const/4 v1, 0x0

    :try_start_15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 210
    invoke-direct {p0, v1, v3}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 211
    new-instance v0, Lorg/xutils/ex/DbException;

    const-string v1, "saveBindingId error, transaction will not commit!"

    invoke-direct {v0, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_40

    .line 222
    :catchall_40
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 223
    throw v0

    .line 215
    :cond_45
    :try_start_45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 217
    invoke-direct {p0, v0, p1}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    move-result v0

    .line 220
    :cond_54
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_40

    .line 222
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_13
.end method

.method public saveOrUpdate(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 126
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 128
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3a

    .line 129
    check-cast p1, Ljava/util/List;

    .line 130
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_35

    move-result v0

    if-eqz v0, :cond_13

    .line 144
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 145
    :goto_12
    return-void

    .line 131
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 134
    invoke-direct {p0, v0, v2}, Lorg/xutils/db/DbManagerImpl;->saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_35

    goto :goto_27

    .line 144
    :catchall_35
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 145
    throw v0

    .line 137
    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 139
    invoke-direct {p0, v0, p1}, Lorg/xutils/db/DbManagerImpl;->saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V

    .line 142
    :cond_48
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_35

    .line 144
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_12
.end method

.method public selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/db/Selector;->from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object v0

    return-object v0
.end method

.method public varargs update(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            "[",
            "Lorg/xutils/common/util/KeyValue;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    .line 328
    :goto_b
    return v0

    .line 319
    :cond_c
    :try_start_c
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 323
    invoke-static {v0, p2, p3}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I

    move-result v0

    .line 325
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1e

    .line 327
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_b

    :catchall_1e
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 328
    throw v0
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 292
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 294
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_45

    .line 295
    check-cast p1, Ljava/util/List;

    .line 296
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_40

    move-result v0

    if-eqz v0, :cond_13

    .line 310
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 311
    :goto_12
    return-void

    .line 297
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_40

    move-result v1

    if-nez v1, :cond_2a

    .line 310
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_12

    .line 299
    :cond_2a
    :try_start_2a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 300
    invoke-static {v0, v2, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_40

    goto :goto_2e

    .line 310
    :catchall_40
    move-exception v0

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 311
    throw v0

    .line 303
    :cond_45
    :try_start_45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_40

    move-result v1

    if-nez v1, :cond_57

    .line 310
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_12

    .line 305
    :cond_57
    :try_start_57
    invoke-static {v0, p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 308
    :cond_5e
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_40

    .line 310
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_12
.end method

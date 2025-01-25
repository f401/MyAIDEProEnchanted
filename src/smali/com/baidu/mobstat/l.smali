.class Lcom/baidu/mobstat/l;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/baidu/mobstat/y;->e:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    iput-object p2, p0, Lcom/baidu/mobstat/l;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/baidu/mobstat/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/baidu/mobstat/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18

    .line 116
    move-object v0, p0

    iget-object v1, v0, Lcom/baidu/mobstat/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, v0, Lcom/baidu/mobstat/l;->a:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 90
    invoke-virtual {p0}, Lcom/baidu/mobstat/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .registers 3

    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    goto :goto_c

    .line 39
    :cond_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_2c

    if-nez v0, :cond_1c

    .line 45
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Lcom/baidu/mobstat/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/l;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_12} :catch_13
    .catchall {:try_start_c .. :try_end_12} :catchall_2c

    goto :goto_1c

    .line 47
    :catch_13
    move-exception v0

    :try_start_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "db path is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_2c

    if-nez v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x0

    .line 56
    :goto_2a
    monitor-exit p0

    return v0

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()I
    .registers 5

    .line 96
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/mobstat/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT COUNT(*) FROM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/mobstat/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 98
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_30

    if-eqz v0, :cond_29

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_29
    return v1

    :cond_2a
    if-eqz v0, :cond_2f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2f
    return v1

    :catchall_30
    move-exception v1

    if-eqz v0, :cond_36

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_36
    throw v1
.end method

.method public close()V
    .registers 2

    monitor-enter p0

    .line 61
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 63
    iget-object v0, p0, Lcom/baidu/mobstat/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    .line 64
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/l;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 67
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 71
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 76
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/baidu/mobstat/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 81
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

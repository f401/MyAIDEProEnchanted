.class abstract Lcom/baidu/mobstat/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Lcom/baidu/mobstat/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_3
    new-instance v0, Lcom/baidu/mobstat/l;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mobstat/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/l;

    .line 23
    sget-object p2, Lcom/baidu/mobstat/y;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 25
    invoke-direct {p0, p3}, Lcom/baidu/mobstat/j;->a(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception p1

    :cond_17
    :goto_17
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/l;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/l;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ContentValues;)J
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mobstat/l;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method protected a(Ljava/lang/String;II)Landroid/database/Cursor;
    .registers 12

    .line 74
    iget-object v0, p0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " desc"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 14

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=? "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    nop

    .line 85
    iget-object v1, p0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/l;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " desc"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/mobstat/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/i;",
            ">;"
        }
    .end annotation
.end method

.method public a()Z
    .registers 3

    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/l;

    invoke-virtual {v0}, Lcom/baidu/mobstat/l;->a()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    goto :goto_16

    :catch_b
    move-exception v0

    .line 49
    :try_start_c
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_9

    .line 52
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_16
    monitor-exit p0

    throw v0
.end method

.method protected a(J)Z
    .registers 6

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    nop

    .line 114
    iget-object p2, p0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/l;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "_id=? "

    invoke-virtual {p2, p1, v1}, Lcom/baidu/mobstat/l;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method protected b()I
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/l;

    invoke-virtual {v0}, Lcom/baidu/mobstat/l;->b()I

    move-result v0

    return v0
.end method

.method public abstract b(J)Z
.end method

.method public close()V
    .registers 3

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/j;->a:Lcom/baidu/mobstat/l;

    invoke-virtual {v0}, Lcom/baidu/mobstat/l;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_11

    :catchall_7
    move-exception v0

    goto :goto_13

    :catch_9
    move-exception v0

    .line 65
    :try_start_a
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_7

    .line 67
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    monitor-exit p0

    throw v0
.end method

.class public Lcom/aide/engine/service/x;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/service/x;

    const-wide v1, 0x1997df2c80edea08L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3f161777d0b8421L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/x;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/x;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private static DW(Ljava/util/List;)[Labcd/la;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x742ee581e56d180L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Labcd/la;"
        }
    .end annotation

    const-wide v0, -0x6f2658eff43110fL

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/x;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {v2, p0}, Lcom/aide/engine/service/x;->j6(Labcd/La;Ljava/util/List;)[Labcd/la;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/x;->DW:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static j6(Ljava/lang/String;Ljava/util/List;)Labcd/la;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Labcd/la;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/x;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x338537b1778cd5cL

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/aide/engine/service/x;->DW(Ljava/util/List;)[Labcd/la;

    move-result-object v2

    array-length v3, v2
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_48

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_47

    aget-object v5, v2, v4

    :try_start_1b
    invoke-interface {v5}, Labcd/la;->Hw()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Labcd/pc;->j6()Labcd/pc;

    move-result-object v8

    if-eqz v8, :cond_27

    invoke-static {}, Labcd/pc;->j6()Labcd/pc;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Labcd/pc;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_41
    .catchall {:try_start_1b .. :try_end_41} :catchall_48

    if-eqz v7, :cond_27

    return-object v5

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_47
    return-object v1

    :catchall_48
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/x;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, 0x338537b1778cd5cL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v0

    :goto_5b
    goto :goto_5a
.end method

.method public static j6(Ljava/util/List;)Ljava/util/TreeMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xbe17d93f9cc6300L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/x;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-static {p0}, Lcom/aide/engine/service/x;->DW(Ljava/util/List;)[Labcd/la;

    move-result-object v4

    array-length v5, v4
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_2f

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v5, :cond_2e

    aget-object v7, v4, v6

    :try_start_1c
    invoke-interface {v7}, Labcd/la;->Hw()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7}, Labcd/la;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2f

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_2e
    return-object v3

    :catchall_2f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/x;->DW:Z

    if-eqz v4, :cond_37

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    goto :goto_39

    :goto_38
    throw v3

    :goto_39
    goto :goto_38
.end method

.method public static j6(Labcd/La;Ljava/util/List;)[Labcd/la;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/La;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Labcd/la;"
        }
    .end annotation

    invoke-static {p0}, Lcom/a4455jkjh/b/i;->a(Labcd/La;)[Labcd/la;

    move-result-object p0

    return-object p0
.end method

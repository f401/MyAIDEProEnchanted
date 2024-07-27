.class public Labcd/xF;
.super Labcd/CF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/xF$a;
    }
.end annotation


# instance fields
.field private EQ:Labcd/MC;

.field private J0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Mr:Z

.field private QX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LuF",
            "<+",
            "Labcd/CC;",
            ">;>;"
        }
    .end annotation
.end field

.field private U2:Labcd/KC;

.field private Ws:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/QC;",
            ">;"
        }
    .end annotation
.end field

.field private XL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/xF$a;",
            ">;"
        }
    .end annotation
.end field

.field private a8:Labcd/_J;

.field private aM:Labcd/EE;

.field private j3:Z

.field private lg:Labcd/pF;

.field private tp:[Ljava/lang/String;

.field private u7:Labcd/XJ;

.field private we:Labcd/yE;


# direct methods
.method protected constructor <init>(Labcd/UE;Z)V
    .registers 9

    invoke-direct {p0, p1}, Labcd/CF;-><init>(Labcd/UE;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/xF;->J0:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/xF;->J8:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/xF;->Ws:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/xF;->QX:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/xF;->XL:Ljava/util/Map;

    new-instance v1, Labcd/pF;

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    const-string v2, "diff"

    const/4 v3, 0x0

    const-string v4, "algorithm"

    sget-object v5, Labcd/eC$a;->DW:Labcd/eC$a;

    invoke-virtual {v0, v2, v3, v4, v5}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/eC$a;

    invoke-static {v0}, Labcd/eC;->j6(Labcd/eC$a;)Labcd/eC;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/pF;-><init>(Labcd/eC;)V

    iput-object v1, p0, Labcd/xF;->lg:Labcd/pF;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BASE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OURS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "THEIRS"

    aput-object v2, v0, v1

    iput-object v0, p0, Labcd/xF;->tp:[Ljava/lang/String;

    invoke-virtual {p0}, Labcd/wF;->j6()Labcd/EE;

    move-result-object v0

    iput-object v0, p0, Labcd/xF;->aM:Labcd/EE;

    iput-boolean p2, p0, Labcd/xF;->Mr:Z

    if-eqz p2, :cond_0

    invoke-static {}, Labcd/KC;->gn()Labcd/KC;

    move-result-object v0

    iput-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    :cond_0
    return-void
.end method

.method private static DW(I)Z
    .registers 2

    if-eqz p0, :cond_0

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, p0}, Labcd/rE;->j6(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private EQ()V
    .registers 9

    iget-boolean v0, p0, Labcd/xF;->Mr:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/xF;->J8:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v1

    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/xE;->v5()Labcd/IE;

    move-result-object v2

    iget-object v0, p0, Labcd/xF;->J8:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Labcd/KC;->DW(Ljava/lang/String;)Labcd/QC;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v7}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v4}, Labcd/QC;->Hw()Labcd/yE;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0, v5}, Labcd/FE;->j6(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method

.method private J0()Z
    .registers 7

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Labcd/xF;->Mr:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2, v5}, Labcd/YJ;->FH(I)I

    move-result v2

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3, v1}, Labcd/YJ;->FH(I)I

    move-result v3

    invoke-static {v2}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4, v5, v1}, Labcd/YJ;->j6(II)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v3, v2, :cond_5

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    invoke-direct {p0, v2}, Labcd/xF;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v3}, Labcd/xF;->j6(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    iget-object v0, p0, Labcd/xF;->XL:Ljava/util/Map;

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Labcd/xF$a;->DW:Labcd/xF$a;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method private j6(III)I
    .registers 5

    if-ne p2, p3, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-ne p1, p2, :cond_2

    sget-object v0, Labcd/rE;->Zo:Labcd/rE;

    invoke-virtual {v0}, Labcd/rE;->DW()I

    move-result v0

    if-eq p3, v0, :cond_0

    move p2, p3

    goto :goto_0

    :cond_2
    if-ne p1, p3, :cond_3

    sget-object v0, Labcd/rE;->Zo:Labcd/rE;

    invoke-virtual {v0}, Labcd/rE;->DW()I

    move-result v0

    if-ne p2, v0, :cond_4

    :goto_1
    move p2, p3

    goto :goto_0

    :cond_3
    sget-object v0, Labcd/rE;->Zo:Labcd/rE;

    invoke-virtual {v0}, Labcd/rE;->DW()I

    move-result p2

    goto :goto_0

    :cond_4
    move p3, p2

    goto :goto_1
.end method

.method private j6([BLabcd/UJ;I)Labcd/QC;
    .registers 6

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    sget-object v1, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Labcd/QC;

    invoke-direct {v0, p1, p3}, Labcd/QC;-><init>([BI)V

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {p2}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/QC;->j6(Labcd/YD;)V

    iget-object v1, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-virtual {v1, v0}, Labcd/MC;->DW(Labcd/QC;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j6(Labcd/yE;Labcd/UE;)Labcd/tC;
    .registers 4

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/tC;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Labcd/tC;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/tC;

    const/4 v1, 0x3

    invoke-virtual {p1, p0, v1}, Labcd/UE;->j6(Labcd/YD;I)Labcd/FE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/FE;->j6()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/tC;-><init>([B)V

    goto :goto_0
.end method

.method private j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;)Labcd/uF;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UJ;",
            "Labcd/UJ;",
            "Labcd/UJ;",
            ")",
            "LuF",
            "<",
            "Labcd/tC;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object v0, Labcd/tC;->j6:Labcd/tC;

    move-object v2, v0

    :goto_0
    if-nez p2, :cond_1

    sget-object v0, Labcd/tC;->j6:Labcd/tC;

    move-object v1, v0

    :goto_1
    if-nez p3, :cond_2

    sget-object v0, Labcd/tC;->j6:Labcd/tC;

    :goto_2
    iget-object v3, p0, Labcd/xF;->lg:Labcd/pF;

    sget-object v4, Labcd/zC;->j6:Labcd/zC;

    invoke-virtual {v3, v4, v2, v1, v0}, Labcd/pF;->j6(Labcd/DC;Labcd/CC;Labcd/CC;Labcd/CC;)Labcd/uF;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    iget-object v1, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-static {v0, v1}, Labcd/xF;->j6(Labcd/yE;Labcd/UE;)Labcd/tC;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    iget-object v1, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-static {v0, v1}, Labcd/xF;->j6(Labcd/yE;Labcd/UE;)Labcd/tC;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    iget-object v3, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-static {v0, v3}, Labcd/xF;->j6(Labcd/yE;Labcd/UE;)Labcd/tC;

    move-result-object v0

    goto :goto_2
.end method

.method private j6(Labcd/uF;)Ljava/io/File;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LuF",
            "<",
            "Labcd/tC;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Labcd/rF;

    invoke-direct {v1}, Labcd/rF;-><init>()V

    iget-boolean v2, p0, Labcd/xF;->Mr:Z

    if-nez v2, :cond_2

    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-object v3, p0, Labcd/xF;->tp:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v1, v2, p1, v3, v4}, Labcd/rF;->j6(Ljava/io/OutputStream;Labcd/uF;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p1}, Labcd/uF;->DW()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "merge_"

    const-string v3, "_temp"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_1
    iget-object v3, p0, Labcd/xF;->tp:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v1, v2, p1, v3, v4}, Labcd/rF;->j6(Ljava/io/OutputStream;Labcd/uF;Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method

.method private j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;Labcd/uF;Ljava/io/File;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UJ;",
            "Labcd/UJ;",
            "Labcd/UJ;",
            "LuF",
            "<",
            "Labcd/tC;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p4}, Labcd/uF;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->v5()[B

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->v5()[B

    move-result-object v0

    invoke-direct {p0, v0, p2, v4}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->v5()[B

    move-result-object v0

    invoke-direct {p0, v0, p3, v1}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v0, p0, Labcd/xF;->QX:Ljava/util/Map;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Labcd/QC;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/QC;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/YJ;->FH(I)I

    move-result v0

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2, v3}, Labcd/YJ;->FH(I)I

    move-result v2

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3, v4}, Labcd/YJ;->FH(I)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Labcd/xF;->j6(III)I

    move-result v0

    sget-object v2, Labcd/rE;->Zo:Labcd/rE;

    invoke-virtual {v2}, Labcd/rE;->DW()I

    move-result v2

    if-ne v0, v2, :cond_2

    sget-object v0, Labcd/rE;->FH:Labcd/rE;

    :goto_1
    invoke-virtual {v1, v0}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {p5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Labcd/QC;->j6(J)V

    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Labcd/QC;->j6(I)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-object v0, p0, Labcd/xF;->aM:Labcd/EE;

    const/4 v3, 0x3

    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v2}, Labcd/EE;->j6(IJLjava/io/InputStream;)Labcd/yE;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/QC;->j6(Labcd/YD;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    iget-boolean v0, p0, Labcd/xF;->Mr:Z

    if-eqz v0, :cond_1

    invoke-static {p5}, Labcd/zK;->j6(Ljava/io/File;)V

    :cond_1
    iget-object v0, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-virtual {v0, v1}, Labcd/MC;->DW(Labcd/QC;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    iget-boolean v1, p0, Labcd/xF;->Mr:Z

    if-eqz v1, :cond_3

    invoke-static {p5}, Labcd/zK;->j6(Ljava/io/File;)V

    :cond_3
    throw v0
.end method

.method private j6(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotCreateDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotCreateDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(I)Z
    .registers 4

    invoke-static {p1}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object v0

    sget-object v1, Labcd/rE;->FH:Labcd/rE;

    if-eq v0, v1, :cond_0

    sget-object v1, Labcd/rE;->Hw:Labcd/rE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;Labcd/LC;Labcd/_J;)Z
    .registers 14

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    iput-boolean v6, p0, Labcd/xF;->j3:Z

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1, v6}, Labcd/YJ;->FH(I)I

    move-result v1

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2, v5}, Labcd/YJ;->FH(I)I

    move-result v2

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3, v0}, Labcd/YJ;->FH(I)I

    move-result v3

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    move v0, v6

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Labcd/xF;->we()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4, v6, v5}, Labcd/YJ;->j6(II)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    move v0, v6

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, v1, v2}, Labcd/xF;->j6(III)I

    move-result v2

    sget-object v3, Labcd/rE;->Zo:Labcd/rE;

    invoke-virtual {v3}, Labcd/rE;->DW()I

    move-result v3

    if-eq v2, v3, :cond_4

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Labcd/xF;->J0()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {p0, v1, p3, v0}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    move-result-object v0

    iget-object v1, p0, Labcd/xF;->Ws:Ljava/util/Map;

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->v5()[B

    move-result-object v0

    invoke-direct {p0, v0, p1, v6}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->v5()[B

    move-result-object v0

    invoke-direct {p0, v0, p2, v5}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->v5()[B

    move-result-object v0

    invoke-direct {p0, v0, p3, v7}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v0, p0, Labcd/xF;->J0:Ljava/util/List;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/xF;->QX:Ljava/util/Map;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Labcd/uF;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Labcd/uF;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    goto/16 :goto_0

    :cond_5
    invoke-static {v1}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne v3, v2, :cond_6

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4, v0, v5}, Labcd/YJ;->j6(II)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    move v0, v6

    goto/16 :goto_0

    :cond_6
    if-ne v3, v1, :cond_9

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4, v0, v6}, Labcd/YJ;->j6(II)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Labcd/xF;->J0()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {p0, v1, p3, v0}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Labcd/xF;->Ws:Ljava/util/Map;

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move v0, v6

    goto/16 :goto_0

    :cond_8
    if-nez v2, :cond_9

    if-eqz v3, :cond_9

    iget-object v0, p0, Labcd/xF;->Ws:Ljava/util/Map;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4}, Labcd/YJ;->u7()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v1}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v2}, Labcd/xF;->DW(I)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v3}, Labcd/xF;->DW(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {p0, v1, p1, v6}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    :cond_a
    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {p0, v1, p2, v5}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v1, p0, Labcd/xF;->J0:Ljava/util/List;

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Labcd/xF;->j3:Z

    move v0, v6

    goto/16 :goto_0

    :cond_b
    invoke-static {v2}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v1}, Labcd/xF;->DW(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v3}, Labcd/xF;->DW(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {p0, v1, p1, v6}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    :cond_c
    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {p0, v1, p3, v7}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v1, p0, Labcd/xF;->J0:Ljava/util/List;

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Labcd/xF;->j3:Z

    move v0, v6

    goto/16 :goto_0

    :cond_d
    invoke-static {v1}, Labcd/xF;->DW(I)Z

    move-result v3

    if-nez v3, :cond_e

    move v0, v6

    goto/16 :goto_0

    :cond_e
    invoke-static {v1}, Labcd/xF;->DW(I)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {v2}, Labcd/xF;->DW(I)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct {p0}, Labcd/xF;->J0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Labcd/xF;->j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;)Labcd/uF;

    move-result-object v4

    invoke-direct {p0, v4}, Labcd/xF;->j6(Labcd/uF;)Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Labcd/xF;->j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;Labcd/uF;Ljava/io/File;)V

    invoke-virtual {v4}, Labcd/uF;->DW()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Labcd/xF;->J0:Ljava/util/List;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v0, p0, Labcd/xF;->J8:Ljava/util/List;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_2
    move v0, v6

    goto/16 :goto_0

    :cond_11
    if-eq v1, v2, :cond_10

    if-eqz v1, :cond_12

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3, v0, v6}, Labcd/YJ;->j6(II)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    if-eqz v2, :cond_10

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3, v0, v5}, Labcd/YJ;->j6(II)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_13
    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3}, Labcd/YJ;->v5()[B

    move-result-object v3

    invoke-direct {p0, v3, p1, v6}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3}, Labcd/YJ;->v5()[B

    move-result-object v3

    invoke-direct {p0, v3, p2, v5}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3}, Labcd/YJ;->v5()[B

    move-result-object v3

    invoke-direct {p0, v3, p3, v7}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    move-result-object v3

    if-nez v1, :cond_14

    invoke-direct {p0}, Labcd/xF;->J0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Labcd/xF;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v3, :cond_14

    iget-object v0, p0, Labcd/xF;->Ws:Ljava/util/Map;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget-object v0, p0, Labcd/xF;->J0:Ljava/util/List;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/xF;->QX:Ljava/util/Map;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Labcd/xF;->j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;)Labcd/uF;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private tp()V
    .registers 7

    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/xE;->v5()Labcd/IE;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Labcd/xF;->Ws:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Labcd/IE;->FH()V

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/io/File;

    iget-object v1, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/xF;->j6(Ljava/io/File;)V

    iget-object v5, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/QC;

    invoke-static {v5, v4, v1, v2}, Labcd/NC;->j6(Labcd/UE;Ljava/io/File;Labcd/QC;Labcd/IE;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Labcd/xF;->J8:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Labcd/IE;->FH()V

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Labcd/xF;->XL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v5, Labcd/xF$a;->FH:Labcd/xF$a;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private we()Z
    .registers 6

    const/4 v4, 0x3

    const/4 v0, 0x1

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1, v4}, Labcd/YJ;->FH(I)I

    move-result v1

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2, v0}, Labcd/YJ;->FH(I)I

    move-result v2

    invoke-static {v1}, Labcd/xF;->DW(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3, v4, v0}, Labcd/YJ;->j6(II)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Labcd/xF;->XL:Ljava/util/Map;

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Labcd/xF$a;->j6:Labcd/xF$a;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public FH()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/xF;->we:Labcd/yE;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/yE;->J8()Labcd/yE;

    goto :goto_0
.end method

.method protected Hw()Z
    .registers 12

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Labcd/wF;->DW()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v0

    iput-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    move v9, v7

    :goto_0
    :try_start_0
    iget-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->j6()Labcd/MC;

    move-result-object v0

    iput-object v0, p0, Labcd/xF;->EQ:Labcd/MC;

    new-instance v0, Labcd/LC;

    iget-object v1, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-direct {v0, v1}, Labcd/LC;-><init>(Labcd/MC;)V

    new-instance v1, Labcd/XJ;

    iget-object v2, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-direct {v1, v2}, Labcd/XJ;-><init>(Labcd/UE;)V

    iput-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p0}, Labcd/CF;->v5()Labcd/TJ;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    iget-object v2, p0, Labcd/wF;->VH:[Labcd/mG;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Labcd/YJ;->j6(Labcd/YD;)I

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    iget-object v2, p0, Labcd/wF;->VH:[Labcd/mG;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Labcd/YJ;->j6(Labcd/YD;)I

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1, v0}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v0, p0, Labcd/xF;->a8:Labcd/_J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    iget-object v1, p0, Labcd/xF;->a8:Labcd/_J;

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/TJ;)I

    :cond_0
    :goto_1
    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Labcd/xF;->Mr:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-virtual {v0}, Labcd/MC;->j6()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-direct {p0}, Labcd/xF;->tp()V

    :goto_2
    invoke-virtual {p0}, Labcd/xF;->u7()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    iget-object v1, p0, Labcd/xF;->aM:Labcd/EE;

    invoke-virtual {v0, v1}, Labcd/KC;->j6(Labcd/EE;)Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/xF;->we:Labcd/yE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_1

    iget-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->tp()V

    :cond_1
    move v0, v7

    :goto_3
    return v0

    :cond_2
    move v9, v8

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Labcd/xF;->EQ()V

    new-instance v0, Labcd/_C;

    invoke-direct {v0}, Labcd/_C;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    iget-object v1, p0, Labcd/xF;->U2:Labcd/KC;

    invoke-virtual {v1}, Labcd/KC;->tp()V

    :cond_4
    throw v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-virtual {v0}, Labcd/MC;->DW()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/xF;->EQ:Labcd/MC;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/xF;->we:Labcd/yE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-eqz v9, :cond_7

    iget-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->tp()V

    :cond_7
    move v0, v8

    goto :goto_3

    :cond_8
    :try_start_3
    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v1, 0x0

    const-class v2, Labcd/UJ;

    invoke-virtual {v0, v1, v2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v1

    check-cast v1, Labcd/UJ;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v2, 0x1

    const-class v3, Labcd/UJ;

    invoke-virtual {v0, v2, v3}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v2

    check-cast v2, Labcd/UJ;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v3, 0x2

    const-class v4, Labcd/UJ;

    invoke-virtual {v0, v3, v4}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v3

    check-cast v3, Labcd/UJ;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v4, 0x3

    const-class v5, Labcd/LC;

    invoke-virtual {v0, v4, v5}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v4

    check-cast v4, Labcd/LC;

    iget-object v0, p0, Labcd/xF;->a8:Labcd/_J;

    if-nez v0, :cond_9

    move-object v5, v6

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Labcd/xF;->j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;Labcd/LC;Labcd/_J;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Labcd/xF;->EQ()V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v5, 0x4

    const-class v10, Labcd/_J;

    invoke-virtual {v0, v5, v10}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    check-cast v0, Labcd/_J;

    move-object v5, v0

    goto :goto_5

    :cond_a
    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->u7()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Labcd/xF;->j3:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->j6()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public VH()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/xF$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/xF;->XL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/xF;->XL:Ljava/util/Map;

    goto :goto_0
.end method

.method public Zo()Z
    .registers 2

    iget-object v0, p0, Labcd/xF;->XL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gn()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LuF",
            "<+",
            "Labcd/CC;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/xF;->QX:Ljava/util/Map;

    return-object v0
.end method

.method public j6(Labcd/_J;)V
    .registers 2

    iput-object p1, p0, Labcd/xF;->a8:Labcd/_J;

    return-void
.end method

.method public j6([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/xF;->tp:[Ljava/lang/String;

    return-void
.end method

.method public u7()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/xF;->J0:Ljava/util/List;

    return-object v0
.end method

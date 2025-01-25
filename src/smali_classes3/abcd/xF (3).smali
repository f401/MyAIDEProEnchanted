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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Mr:Z

.field private QX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LuF<",
            "+",
            "Labcd/CC;",
            ">;>;"
        }
    .end annotation
.end field

.field private U2:Labcd/KC;

.field private Ws:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/QC;",
            ">;"
        }
    .end annotation
.end field

.field private XL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
    .registers 8

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

    new-instance v0, Labcd/pF;

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object p1

    const-string v1, "algorithm"

    sget-object v2, Labcd/eC$a;->DW:Labcd/eC$a;

    const-string v3, "diff"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Labcd/eC$a;

    invoke-static {p1}, Labcd/eC;->j6(Labcd/eC$a;)Labcd/eC;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/pF;-><init>(Labcd/eC;)V

    iput-object v0, p0, Labcd/xF;->lg:Labcd/pF;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "BASE"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "OURS"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "THEIRS"

    aput-object v1, p1, v0

    iput-object p1, p0, Labcd/xF;->tp:[Ljava/lang/String;

    invoke-virtual {p0}, Labcd/wF;->j6()Labcd/EE;

    move-result-object p1

    iput-object p1, p0, Labcd/xF;->aM:Labcd/EE;

    iput-boolean p2, p0, Labcd/xF;->Mr:Z

    if-eqz p2, :cond_66

    invoke-static {}, Labcd/KC;->gn()Labcd/KC;

    move-result-object p1

    iput-object p1, p0, Labcd/xF;->U2:Labcd/KC;

    :cond_66
    return-void
.end method

.method private static DW(I)Z
    .registers 2

    if-eqz p0, :cond_c

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, p0}, Labcd/rE;->j6(I)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private EQ()V
    .registers 9

    iget-boolean v0, p0, Labcd/xF;->Mr:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Labcd/xF;->J8:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_a
    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v0

    iget-object v1, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/xE;->v5()Labcd/IE;

    move-result-object v1

    iget-object v2, p0, Labcd/xF;->J8:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_27

    return-void

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Labcd/KC;->DW(Ljava/lang/String;)Labcd/QC;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v7}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_41
    invoke-virtual {v4}, Labcd/QC;->Hw()Labcd/yE;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v3

    invoke-virtual {v3, v5}, Labcd/FE;->j6(Ljava/io/OutputStream;)V
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_53

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_20

    :catchall_53
    move-exception v0

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_59

    :goto_58
    throw v0

    :goto_59
    goto :goto_58
.end method

.method private J0()Z
    .registers 7

    iget-boolean v0, p0, Labcd/xF;->Mr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Labcd/YJ;->FH(I)I

    move-result v0

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Labcd/YJ;->FH(I)I

    move-result v3

    invoke-static {v0}, Labcd/xF;->DW(I)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v5, v2, v4}, Labcd/YJ;->j6(II)Z

    move-result v2

    if-eqz v2, :cond_26

    if-eq v3, v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :cond_26
    :goto_26
    if-eqz v4, :cond_42

    invoke-direct {p0, v0}, Labcd/xF;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-direct {p0, v3}, Labcd/xF;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_35

    return v1

    :cond_35
    iget-object v0, p0, Labcd/xF;->XL:Ljava/util/Map;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Labcd/xF$a;->DW:Labcd/xF$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    return v4
.end method

.method private j6(III)I
    .registers 4

    if-ne p2, p3, :cond_3

    return p2

    :cond_3
    if-ne p1, p2, :cond_10

    sget-object p1, Labcd/rE;->Zo:Labcd/rE;

    invoke-virtual {p1}, Labcd/rE;->DW()I

    move-result p1

    if-ne p3, p1, :cond_e

    goto :goto_f

    :cond_e
    move p2, p3

    :goto_f
    return p2

    :cond_10
    if-ne p1, p3, :cond_1c

    sget-object p1, Labcd/rE;->Zo:Labcd/rE;

    invoke-virtual {p1}, Labcd/rE;->DW()I

    move-result p1

    if-ne p2, p1, :cond_1b

    move p2, p3

    :cond_1b
    return p2

    :cond_1c
    sget-object p1, Labcd/rE;->Zo:Labcd/rE;

    invoke-virtual {p1}, Labcd/rE;->DW()I

    move-result p1

    return p1
.end method

.method private j6([BLabcd/UJ;I)Labcd/QC;
    .registers 6

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    sget-object v1, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Labcd/QC;

    invoke-direct {v0, p1, p3}, Labcd/QC;-><init>([BI)V

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {p2}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/QC;->j6(Labcd/YD;)V

    iget-object p1, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-virtual {p1, v0}, Labcd/MC;->DW(Labcd/QC;)V

    return-object v0

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private static j6(Labcd/yE;Labcd/UE;)Labcd/tC;
    .registers 4

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance p0, Labcd/tC;

    const/4 p1, 0x0

    new-array p1, p1, [B

    invoke-direct {p0, p1}, Labcd/tC;-><init>([B)V

    return-object p0

    :cond_13
    new-instance v0, Labcd/tC;

    const/4 v1, 0x3

    invoke-virtual {p1, p0, v1}, Labcd/UE;->j6(Labcd/YD;I)Labcd/FE;

    move-result-object p0

    invoke-virtual {p0}, Labcd/FE;->j6()[B

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/tC;-><init>([B)V

    return-object v0
.end method

.method private j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;)Labcd/uF;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UJ;",
            "Labcd/UJ;",
            "Labcd/UJ;",
            ")",
            "LuF<",
            "Labcd/tC;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_5

    sget-object p1, Labcd/tC;->j6:Labcd/tC;

    goto :goto_f

    :cond_5
    invoke-virtual {p1}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object p1

    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-static {p1, v0}, Labcd/xF;->j6(Labcd/yE;Labcd/UE;)Labcd/tC;

    move-result-object p1

    :goto_f
    if-nez p2, :cond_14

    sget-object p2, Labcd/tC;->j6:Labcd/tC;

    goto :goto_1e

    :cond_14
    invoke-virtual {p2}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object p2

    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-static {p2, v0}, Labcd/xF;->j6(Labcd/yE;Labcd/UE;)Labcd/tC;

    move-result-object p2

    :goto_1e
    if-nez p3, :cond_23

    sget-object p3, Labcd/tC;->j6:Labcd/tC;

    goto :goto_2d

    :cond_23
    invoke-virtual {p3}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object p3

    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-static {p3, v0}, Labcd/xF;->j6(Labcd/yE;Labcd/UE;)Labcd/tC;

    move-result-object p3

    :goto_2d
    iget-object v0, p0, Labcd/xF;->lg:Labcd/pF;

    sget-object v1, Labcd/zC;->j6:Labcd/zC;

    invoke-virtual {v0, v1, p1, p2, p3}, Labcd/pF;->j6(Labcd/DC;Labcd/CC;Labcd/CC;Labcd/CC;)Labcd/uF;

    move-result-object p1

    return-object p1
.end method

.method private j6(Labcd/uF;)Ljava/io/File;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LuF<",
            "Labcd/tC;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    new-instance v0, Labcd/rF;

    invoke-direct {v0}, Labcd/rF;-><init>()V

    iget-boolean v1, p0, Labcd/xF;->Mr:Z

    const-string v2, "UTF-8"

    if-nez v1, :cond_38

    iget-object v1, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_32

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_23
    iget-object v4, p0, Labcd/xF;->tp:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, p1, v4, v2}, Labcd/rF;->j6(Ljava/io/OutputStream;Labcd/uF;Ljava/util/List;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2d

    goto :goto_55

    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p1

    :cond_32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_38
    invoke-virtual {p1}, Labcd/uF;->DW()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5e

    const-string v1, "merge_"

    const-string v4, "_temp"

    invoke-static {v1, v4, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_4c
    iget-object v4, p0, Labcd/xF;->tp:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, p1, v4, v2}, Labcd/rF;->j6(Ljava/io/OutputStream;Labcd/uF;Ljava/util/List;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_59

    :goto_55
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5e

    :catchall_59
    move-exception p1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p1

    :cond_5e
    :goto_5e
    return-object v3
.end method

.method private j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;Labcd/uF;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UJ;",
            "Labcd/UJ;",
            "Labcd/UJ;",
            "LuF<",
            "Labcd/tC;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Labcd/uF;->DW()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_30

    iget-object p5, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p5}, Labcd/YJ;->v5()[B

    move-result-object p5

    invoke-direct {p0, p5, p1, v3}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p2, v2}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p3, v1}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object p1, p0, Labcd/xF;->QX:Ljava/util/Map;

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_94

    :cond_30
    new-instance p1, Labcd/QC;

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/QC;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Labcd/YJ;->FH(I)I

    move-result p2

    iget-object p3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p3, v3}, Labcd/YJ;->FH(I)I

    move-result p3

    iget-object p4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p4, v2}, Labcd/YJ;->FH(I)I

    move-result p4

    invoke-direct {p0, p2, p3, p4}, Labcd/xF;->j6(III)I

    move-result p2

    sget-object p3, Labcd/rE;->Zo:Labcd/rE;

    invoke-virtual {p3}, Labcd/rE;->DW()I

    move-result p3

    if-ne p2, p3, :cond_5d

    sget-object p2, Labcd/rE;->FH:Labcd/rE;

    goto :goto_61

    :cond_5d
    invoke-static {p2}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object p2

    :goto_61
    invoke-virtual {p1, p2}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {p5}, Ljava/io/File;->lastModified()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Labcd/QC;->j6(J)V

    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Labcd/QC;->j6(I)V

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_78
    iget-object p3, p0, Labcd/xF;->aM:Labcd/EE;

    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3, p2}, Labcd/EE;->j6(IJLjava/io/InputStream;)Labcd/yE;

    move-result-object p3

    invoke-virtual {p1, p3}, Labcd/QC;->j6(Labcd/YD;)V
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_95

    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    iget-boolean p2, p0, Labcd/xF;->Mr:Z

    if-eqz p2, :cond_8f

    invoke-static {p5}, Labcd/zK;->j6(Ljava/io/File;)V

    :cond_8f
    iget-object p2, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-virtual {p2, p1}, Labcd/MC;->DW(Labcd/QC;)V

    :goto_94
    return-void

    :catchall_95
    move-exception p1

    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    iget-boolean p2, p0, Labcd/xF;->Mr:Z

    if-eqz p2, :cond_a0

    invoke-static {p5}, Labcd/zK;->j6(Ljava/io/File;)V

    :cond_a0
    throw p1
.end method

.method private j6(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_45

    move-object v0, p1

    :goto_d
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1b

    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_d

    :cond_1b
    :goto_1b
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_45

    :cond_2d
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->cannotCreateDirectory:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->cannotCreateDirectory:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    :goto_45
    return-void
.end method

.method private j6(I)Z
    .registers 3

    invoke-static {p1}, Labcd/rE;->DW(I)Labcd/rE;

    move-result-object p1

    sget-object v0, Labcd/rE;->FH:Labcd/rE;

    if-eq p1, v0, :cond_e

    sget-object v0, Labcd/rE;->Hw:Labcd/rE;

    if-eq p1, v0, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method private j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;Labcd/LC;Labcd/_J;)Z
    .registers 16

    const/4 p4, 0x1

    iput-boolean p4, p0, Labcd/xF;->j3:Z

    iget-object p5, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p5, p4}, Labcd/YJ;->FH(I)I

    move-result p5

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Labcd/YJ;->FH(I)I

    move-result v0

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Labcd/YJ;->FH(I)I

    move-result v2

    if-nez p5, :cond_1e

    if-nez v0, :cond_1e

    if-nez v2, :cond_1e

    return p4

    :cond_1e
    invoke-direct {p0}, Labcd/xF;->we()Z

    move-result v4

    if-eqz v4, :cond_25

    return v3

    :cond_25
    invoke-static {p5}, Labcd/xF;->DW(I)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_b6

    invoke-static {v0}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_b6

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4, p4, v1}, Labcd/YJ;->j6(II)Z

    move-result v4

    if-eqz v4, :cond_b6

    if-ne p5, v0, :cond_46

    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p2, v3}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    return p4

    :cond_46
    invoke-direct {p0, v2, p5, v0}, Labcd/xF;->j6(III)I

    move-result v0

    sget-object v2, Labcd/rE;->Zo:Labcd/rE;

    invoke-virtual {v2}, Labcd/rE;->DW()I

    move-result v2

    if-eq v0, v2, :cond_7b

    if-ne v0, p5, :cond_5e

    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p2, v3}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    goto :goto_7a

    :cond_5e
    invoke-direct {p0}, Labcd/xF;->J0()Z

    move-result p1

    if-eqz p1, :cond_65

    return v3

    :cond_65
    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p3, v3}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    move-result-object p1

    iget-object p2, p0, Labcd/xF;->Ws:Ljava/util/Map;

    iget-object p3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p3}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7a
    return p4

    :cond_7b
    iget-object p5, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p5}, Labcd/YJ;->v5()[B

    move-result-object p5

    invoke-direct {p0, p5, p1, p4}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p3, v5}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object p1, p0, Labcd/xF;->J0:Ljava/util/List;

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Labcd/xF;->QX:Ljava/util/Map;

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Labcd/uF;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p5

    invoke-direct {p3, p5}, Labcd/uF;-><init>(Ljava/util/List;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p4

    :cond_b6
    invoke-static {p5}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_d0

    if-ne v2, v0, :cond_d0

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4, v3, v1}, Labcd/YJ;->j6(II)Z

    move-result v4

    if-eqz v4, :cond_d0

    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p2, v3}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    return p4

    :cond_d0
    if-ne v2, p5, :cond_110

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4, v3, p4}, Labcd/YJ;->j6(II)Z

    move-result v4

    if-eqz v4, :cond_110

    invoke-direct {p0}, Labcd/xF;->J0()Z

    move-result v4

    if-eqz v4, :cond_e1

    return v3

    :cond_e1
    invoke-static {v0}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_ff

    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p3, v3}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    move-result-object p1

    if-eqz p1, :cond_fe

    iget-object p2, p0, Labcd/xF;->Ws:Ljava/util/Map;

    iget-object p3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p3}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fe
    return p4

    :cond_ff
    if-nez v0, :cond_110

    if-eqz v2, :cond_110

    iget-object p1, p0, Labcd/xF;->Ws:Ljava/util/Map;

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p4

    :cond_110
    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4}, Labcd/YJ;->u7()Z

    move-result v4

    if-eqz v4, :cond_183

    invoke-static {p5}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_14a

    invoke-static {v0}, Labcd/xF;->DW(I)Z

    move-result v4

    if-nez v4, :cond_14a

    invoke-static {v2}, Labcd/xF;->DW(I)Z

    move-result p3

    if-eqz p3, :cond_133

    iget-object p3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p3}, Labcd/YJ;->v5()[B

    move-result-object p3

    invoke-direct {p0, p3, p1, p4}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    :cond_133
    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object p1, p0, Labcd/xF;->J0:Ljava/util/List;

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Labcd/xF;->j3:Z

    return p4

    :cond_14a
    invoke-static {v0}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_17c

    invoke-static {p5}, Labcd/xF;->DW(I)Z

    move-result v4

    if-nez v4, :cond_17c

    invoke-static {v2}, Labcd/xF;->DW(I)Z

    move-result p2

    if-eqz p2, :cond_165

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->v5()[B

    move-result-object p2

    invoke-direct {p0, p2, p1, p4}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    :cond_165
    iget-object p1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p1}, Labcd/YJ;->v5()[B

    move-result-object p1

    invoke-direct {p0, p1, p3, v5}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object p1, p0, Labcd/xF;->J0:Ljava/util/List;

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Labcd/xF;->j3:Z

    return p4

    :cond_17c
    invoke-static {p5}, Labcd/xF;->DW(I)Z

    move-result v2

    if-nez v2, :cond_183

    return p4

    :cond_183
    invoke-static {p5}, Labcd/xF;->DW(I)Z

    move-result v2

    if-eqz v2, :cond_1c3

    invoke-static {v0}, Labcd/xF;->DW(I)Z

    move-result v2

    if-eqz v2, :cond_1c3

    invoke-direct {p0}, Labcd/xF;->J0()Z

    move-result p5

    if-eqz p5, :cond_196

    return v3

    :cond_196
    invoke-direct {p0, p1, p2, p3}, Labcd/xF;->j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;)Labcd/uF;

    move-result-object p5

    invoke-direct {p0, p5}, Labcd/xF;->j6(Labcd/uF;)Ljava/io/File;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p5

    invoke-direct/range {v4 .. v9}, Labcd/xF;->j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;Labcd/uF;Ljava/io/File;)V

    invoke-virtual {p5}, Labcd/uF;->DW()Z

    move-result p1

    if-eqz p1, :cond_1b7

    iget-object p1, p0, Labcd/xF;->J0:Ljava/util/List;

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b7
    iget-object p1, p0, Labcd/xF;->J8:Ljava/util/List;

    iget-object p2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22b

    :cond_1c3
    if-eq p5, v0, :cond_22b

    if-eqz p5, :cond_1cf

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2, v3, p4}, Labcd/YJ;->j6(II)Z

    move-result v2

    if-eqz v2, :cond_1d9

    :cond_1cf
    if-eqz v0, :cond_22b

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2, v3, v1}, Labcd/YJ;->j6(II)Z

    move-result v2

    if-nez v2, :cond_22b

    :cond_1d9
    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2}, Labcd/YJ;->v5()[B

    move-result-object v2

    invoke-direct {p0, v2, p1, p4}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v2}, Labcd/YJ;->v5()[B

    move-result-object v2

    invoke-direct {p0, v2, p2, v1}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->v5()[B

    move-result-object v1

    invoke-direct {p0, v1, p3, v5}, Labcd/xF;->j6([BLabcd/UJ;I)Labcd/QC;

    move-result-object v1

    if-nez p5, :cond_211

    invoke-direct {p0}, Labcd/xF;->J0()Z

    move-result p5

    if-eqz p5, :cond_1fe

    return v3

    :cond_1fe
    invoke-static {v0}, Labcd/xF;->DW(I)Z

    move-result p5

    if-eqz p5, :cond_211

    if-eqz v1, :cond_211

    iget-object p5, p0, Labcd/xF;->Ws:Ljava/util/Map;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_211
    iget-object p5, p0, Labcd/xF;->J0:Ljava/util/List;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Labcd/xF;->QX:Ljava/util/Map;

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Labcd/xF;->j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;)Labcd/uF;

    move-result-object p1

    invoke-interface {p5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22b
    :goto_22b
    return p4
.end method

.method private tp()V
    .registers 7

    iget-object v0, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/xE;->v5()Labcd/IE;

    move-result-object v0

    :try_start_a
    iget-object v1, p0, Labcd/xF;->Ws:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_6d

    if-nez v2, :cond_1e

    invoke-virtual {v0}, Labcd/IE;->FH()V

    return-void

    :cond_1e
    :try_start_1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4e

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v4}, Labcd/xF;->j6(Ljava/io/File;)V

    iget-object v4, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/QC;

    invoke-static {v4, v3, v5, v0}, Labcd/NC;->j6(Labcd/UE;Ljava/io/File;Labcd/QC;Labcd/IE;)V

    goto :goto_61

    :cond_4e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, p0, Labcd/xF;->XL:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Labcd/xF$a;->FH:Labcd/xF$a;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    :goto_61
    iget-object v3, p0, Labcd/xF;->J8:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_1e .. :try_end_6c} :catchall_6d

    goto :goto_14

    :catchall_6d
    move-exception v1

    invoke-virtual {v0}, Labcd/IE;->FH()V

    goto :goto_73

    :goto_72
    throw v1

    :goto_73
    goto :goto_72
.end method

.method private we()Z
    .registers 6

    iget-object v0, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Labcd/YJ;->FH(I)I

    move-result v0

    iget-object v2, p0, Labcd/xF;->u7:Labcd/XJ;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Labcd/YJ;->FH(I)I

    move-result v2

    invoke-static {v0}, Labcd/xF;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4, v1, v3}, Labcd/YJ;->j6(II)Z

    move-result v1

    if-eqz v1, :cond_20

    if-eq v2, v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :cond_20
    :goto_20
    if-eqz v3, :cond_2f

    iget-object v0, p0, Labcd/xF;->XL:Ljava/util/Map;

    iget-object v1, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Labcd/xF$a;->j6:Labcd/xF$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return v3
.end method


# virtual methods
.method public FH()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/xF;->we:Labcd/yE;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    invoke-virtual {v0}, Labcd/yE;->J8()Labcd/yE;

    :goto_9
    return-object v0
.end method

.method protected Hw()Z
    .registers 12

    iget-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Labcd/wF;->DW()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v0

    iput-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    :try_start_13
    iget-object v3, p0, Labcd/xF;->U2:Labcd/KC;

    invoke-virtual {v3}, Labcd/KC;->j6()Labcd/MC;

    move-result-object v3

    iput-object v3, p0, Labcd/xF;->EQ:Labcd/MC;

    new-instance v3, Labcd/LC;

    iget-object v4, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-direct {v3, v4}, Labcd/LC;-><init>(Labcd/MC;)V

    new-instance v4, Labcd/XJ;

    iget-object v5, p0, Labcd/wF;->j6:Labcd/UE;

    invoke-direct {v4, v5}, Labcd/XJ;-><init>(Labcd/UE;)V

    iput-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {p0}, Labcd/CF;->v5()Labcd/TJ;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    iget-object v5, p0, Labcd/wF;->VH:[Labcd/mG;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Labcd/YJ;->j6(Labcd/YD;)I

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    iget-object v5, p0, Labcd/wF;->VH:[Labcd/mG;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Labcd/YJ;->j6(Labcd/YD;)I

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4, v3}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v3, p0, Labcd/xF;->a8:Labcd/_J;

    if-eqz v3, :cond_52

    iget-object v4, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v4, v3}, Labcd/YJ;->j6(Labcd/TJ;)I

    :cond_52
    :goto_52
    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3}, Labcd/YJ;->EQ()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_9c

    iget-boolean v3, p0, Labcd/xF;->Mr:Z

    if-nez v3, :cond_76

    iget-object v3, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-virtual {v3}, Labcd/MC;->j6()Z

    move-result v3

    if-eqz v3, :cond_6d

    iput-object v4, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-direct {p0}, Labcd/xF;->tp()V

    goto :goto_7d

    :cond_6d
    invoke-direct {p0}, Labcd/xF;->EQ()V

    new-instance v1, Labcd/_C;

    invoke-direct {v1}, Labcd/_C;-><init>()V

    throw v1

    :cond_76
    iget-object v3, p0, Labcd/xF;->EQ:Labcd/MC;

    invoke-virtual {v3}, Labcd/MC;->DW()V

    iput-object v4, p0, Labcd/xF;->EQ:Labcd/MC;

    :goto_7d
    invoke-virtual {p0}, Labcd/xF;->u7()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v2, p0, Labcd/xF;->U2:Labcd/KC;

    iget-object v3, p0, Labcd/xF;->aM:Labcd/EE;

    invoke-virtual {v2, v3}, Labcd/KC;->j6(Labcd/EE;)Labcd/yE;

    move-result-object v2

    iput-object v2, p0, Labcd/xF;->we:Labcd/yE;
    :try_end_91
    .catchall {:try_start_13 .. :try_end_91} :catchall_102

    if-eqz v0, :cond_98

    iget-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->tp()V

    :cond_98
    return v1

    :cond_99
    :try_start_99
    iput-object v4, p0, Labcd/xF;->we:Labcd/yE;

    goto :goto_e7

    :cond_9c
    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    const-class v5, Labcd/UJ;

    invoke-virtual {v3, v2, v5}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Labcd/UJ;

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    const-class v5, Labcd/UJ;

    invoke-virtual {v3, v1, v5}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Labcd/UJ;

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    const-class v5, Labcd/UJ;

    const/4 v8, 0x2

    invoke-virtual {v3, v8, v5}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Labcd/UJ;

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    const-class v5, Labcd/LC;

    const/4 v9, 0x3

    invoke-virtual {v3, v9, v5}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Labcd/LC;

    iget-object v3, p0, Labcd/xF;->a8:Labcd/_J;

    if-nez v3, :cond_d0

    :goto_ce
    move-object v10, v4

    goto :goto_dd

    :cond_d0
    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    const-class v4, Labcd/_J;

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v4}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Labcd/_J;

    goto :goto_ce

    :goto_dd
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Labcd/xF;->j6(Labcd/UJ;Labcd/UJ;Labcd/UJ;Labcd/LC;Labcd/_J;)Z

    move-result v3

    if-nez v3, :cond_ef

    invoke-direct {p0}, Labcd/xF;->EQ()V
    :try_end_e7
    .catchall {:try_start_99 .. :try_end_e7} :catchall_102

    :goto_e7
    if-eqz v0, :cond_ee

    iget-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->tp()V

    :cond_ee
    return v2

    :cond_ef
    :try_start_ef
    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3}, Labcd/YJ;->u7()Z

    move-result v3

    if-eqz v3, :cond_52

    iget-boolean v3, p0, Labcd/xF;->j3:Z

    if-eqz v3, :cond_52

    iget-object v3, p0, Labcd/xF;->u7:Labcd/XJ;

    invoke-virtual {v3}, Labcd/YJ;->j6()V
    :try_end_100
    .catchall {:try_start_ef .. :try_end_100} :catchall_102

    goto/16 :goto_52

    :catchall_102
    move-exception v1

    if-eqz v0, :cond_10a

    iget-object v0, p0, Labcd/xF;->U2:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->tp()V

    :cond_10a
    goto :goto_10c

    :goto_10b
    throw v1

    :goto_10c
    goto :goto_10b
.end method

.method public VH()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/xF$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/xF;->XL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    iget-object v0, p0, Labcd/xF;->XL:Ljava/util/Map;

    :goto_c
    return-object v0
.end method

.method public Zo()Z
    .registers 2

    iget-object v0, p0, Labcd/xF;->XL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public gn()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LuF<",
            "+",
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/xF;->J0:Ljava/util/List;

    return-object v0
.end method

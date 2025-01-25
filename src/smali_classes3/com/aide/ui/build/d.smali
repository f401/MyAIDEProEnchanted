.class public Lcom/aide/ui/build/d;
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


# instance fields
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x2e8701ea6cebbbf0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/build/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/build/e;
    .annotation runtime Labcd/ru;
        field = -0x224f0d03001c8374L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x14dff24fd0a59809L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x354e91a6e9b9c5bL
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = -0x516137e00f1e0035L
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x11355455019d4f68L
    .end annotation
.end field

.field private v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x12507f846a6a540cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/d;

    const-wide v1, -0xbbcd7bda37b86ffL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1bf7aa8121e2b104L  # 5.980368962571858E-174

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/build/d;->FH:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method static synthetic j6(Lcom/aide/ui/build/d;)Lcom/aide/ui/build/e;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/d;->Hw:Lcom/aide/ui/build/e;

    return-object p0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x10089a29ee23ea40L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/build/d;->v5:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public DW(Lcom/aide/ui/build/d$a;)V
    .registers 6

    const-wide v0, 0x346441b7e7d512b9L  # 2.581664377046581E-56

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/d;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, 0x2600197bcfb06190L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/build/d;->Zo:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, 0x55359f288df9d984L  # 3.0266948145047835E102

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/build/d;->VH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public VH()Z
    .registers 5

    const-wide v0, 0x24f4175753946279L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/build/d;->v5:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Zo()V
    .registers 5

    const-wide v0, 0x236a1d3d6c72115dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/build/c;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/c;-><init>(Lcom/aide/ui/build/d;)V

    invoke-virtual {v2, v3}, Labcd/Xj;->j6(Lcom/aide/engine/service/m;)V

    iget-object v2, p0, Lcom/aide/ui/build/d;->Hw:Lcom/aide/ui/build/e;

    if-eqz v2, :cond_1f

    invoke-interface {v2}, Lcom/aide/ui/build/e;->FH()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public gn()Z
    .registers 5

    const-wide v0, 0x1d772332371feba0L  # 9.809312280573534E-167

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/build/d;->VH()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-boolean v0, p0, Lcom/aide/ui/build/d;->gn:Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x39f326d71215cd80L  # 1.51080425585412E-29

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/build/d;->u7:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Lcom/aide/ui/build/d$a;)V
    .registers 6

    const-wide v0, 0x141128c66dac9014L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/d;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/ui/build/e;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x2050bf5492884c30L  # -8.18416151671446E152

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-object p1, p0, Lcom/aide/ui/build/d;->Hw:Lcom/aide/ui/build/e;

    iput-boolean p2, p0, Lcom/aide/ui/build/d;->gn:Z

    if-nez p2, :cond_1e

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ca()V

    :cond_1e
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v1, :cond_3b

    const-wide v2, -0x2050bf5492884c30L  # -8.18416151671446E152

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x27e8267ef0dbd231L  # -2.349307732905708E116

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v2, v2}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;Ljava/lang/String;II)V

    iget-boolean v2, p0, Lcom/aide/ui/build/d;->gn:Z

    if-nez v2, :cond_3c

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->vy()V

    goto :goto_3c

    :cond_23
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_3d

    if-eqz v3, :cond_30

    const-string v3, "构建错误"

    goto :goto_32

    :cond_30
    const-string v3, "Build error"

    :goto_32
    :try_start_32
    invoke-static {v2, v3, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->KD()V
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3d

    :cond_3c
    :goto_3c
    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x51d772a82b9d8edL  # -8.612851929728087E283

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iput-object p2, p0, Lcom/aide/ui/build/d;->v5:Ljava/lang/String;

    iput p3, p0, Lcom/aide/ui/build/d;->Zo:I

    iput p4, p0, Lcom/aide/ui/build/d;->VH:I

    if-eqz p1, :cond_26

    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iput-object v0, p0, Lcom/aide/ui/build/d;->u7:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/ui/build/d;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/build/d$a;

    invoke-interface {v1}, Lcom/aide/ui/build/d$a;->DW()V

    goto :goto_2f

    :cond_3f
    if-nez p2, :cond_4f

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V
    :try_end_4f
    .catchall {:try_start_0 .. :try_end_4f} :catchall_50

    :cond_4f
    return-void

    :catchall_50
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v1, :cond_6b

    const-wide v2, -0x51d772a82b9d8edL  # -8.612851929728087E283

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    goto :goto_6d

    :goto_6c
    throw v0

    :goto_6d
    goto :goto_6c
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, 0x12ecec9e4ed9cb80L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/build/d;->gn:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public tp()V
    .registers 7

    const-wide v0, 0x677809271ac6900L  # 1.6572695955299904E-277

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/build/f;->Zo:[Lcom/aide/ui/build/e;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_1a

    aget-object v5, v2, v4

    invoke-interface {v5}, Lcom/aide/ui/build/e;->v5()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    goto :goto_25

    :goto_24
    throw v2

    :goto_25
    goto :goto_24
.end method

.method public u7()V
    .registers 7

    const-wide v0, 0xebc28342de40078L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/build/f;->Zo:[Lcom/aide/ui/build/e;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_1a

    aget-object v5, v2, v4

    invoke-interface {v5}, Lcom/aide/ui/build/e;->Hw()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    goto :goto_25

    :goto_24
    throw v2

    :goto_25
    goto :goto_24
.end method

.method public v5()V
    .registers 7

    const-wide v0, 0x634ff845de7aeedL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/build/f;->Zo:[Lcom/aide/ui/build/e;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_1a

    aget-object v5, v2, v4

    invoke-interface {v5}, Lcom/aide/ui/build/e;->DW()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/d;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    goto :goto_25

    :goto_24
    throw v2

    :goto_25
    goto :goto_24
.end method

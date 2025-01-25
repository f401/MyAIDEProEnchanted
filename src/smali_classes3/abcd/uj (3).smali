.class public Labcd/uj;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/IProject;


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

    const-class v0, Labcd/uj;

    const-wide v1, -0x30db660bcbea9e90L  # -1.8199746099324035E73

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x115c426e093f1764L

    :try_start_6
    sget-boolean v3, Labcd/uj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/uj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private J0()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x40fadd91a04765fL
    .end annotation

    const-wide v0, 0x3173e6bd320ca80L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x3

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method private J8()Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2c9a5ae0f4c851f4L
    .end annotation

    const-wide v0, -0x69d7cdd32465d9L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Labcd/uj;->J0()I

    move-result v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, ".html"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, ".htm"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, ".css"

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, ".js"

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0}, Labcd/uj;->J0()I

    move-result v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_3b

    if-lt v2, v0, :cond_3a

    const/4 v6, 0x1

    :cond_3a
    return v6

    :catchall_3b
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    throw v2
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, -0x3ce35fdcebf2f720L  # -2.014342967149112E15

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 7

    const-wide v0, -0x98828dd59ad8ed5L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.ui"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    :cond_1d
    invoke-static {p1}, Labcd/sj;->DW(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/sj;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_47

    if-eqz p1, :cond_44

    return v3

    :cond_44
    const/4 p1, 0x1

    return p1

    :cond_46
    return v3

    :catchall_47
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x1b8c424a7bf06941L  # 5.578899673331504E-176

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public EQ(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x37e47f96e5c9000L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x2f2bb0506ac4dL

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/uj;->J8(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_17

    if-nez p1, :cond_15

    const-string p1, "com.aide.ui"

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public FH()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/g$b;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x3a39133ca31c8eddL  # -1.4189798568904355E28

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/trainer/g$b;

    const-string v3, "course_web"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "com.aide.ui"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/16 v6, 0x14

    invoke-direct {v2, v3, v6, v5}, Lcom/aide/ui/trainer/g$b;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    new-array v3, v4, [Lcom/aide/ui/trainer/g$b;

    aput-object v2, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-object v0

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, 0x728536a5952895f0L  # 4.526453911309206E243

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x55e78691927fcf0L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public J0(Ljava/lang/String;)I
    .registers 6

    const-wide v0, -0x13ee74177959e00L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public J8(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x27c75b7aa137424fL  # -9.709702447154904E116

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.ui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_21

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public QX(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x67c69ee863db232fL  # 8.062949474960213E191

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/sj;->FH(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public VH()Lcom/aide/engine/EngineSolution;
    .registers 5

    const-wide v0, -0x1f84d20698967d0dL  # -5.830698882097871E156

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->DW()Labcd/vj;

    move-result-object v3

    invoke-virtual {v3}, Labcd/vj;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/tj;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/aide/engine/EngineSolution;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v0

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x3209738e0fc2b628L  # 1.1800554889664626E-67

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Ws(Ljava/lang/String;)I
    .registers 6

    const-wide v0, -0x26b40d7908b6767fL  # -1.4433419545209559E122

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, -0x1

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public XL(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x1f88b80aa2055ca0L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public Zo()Z
    .registers 5

    const-wide v0, 0xa7b7a60f7100a5dL

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->u7()Z

    move-result v2

    if-eqz v2, :cond_1f

    return v3

    :cond_1f
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->Zo()Z

    move-result v2

    if-eqz v2, :cond_2a

    return v3

    :cond_2a
    invoke-direct {p0}, Labcd/uj;->J8()Z

    move-result v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    return v0

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public Zo(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0xa24fa6b4394e5e0L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public aM(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x345c0f2592f40d79L  # 1.7880332846042608E-56

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getProjectAttribute()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x9805ef36dfbdd55L  # -6.224766198236511E262

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_39

    if-eqz v3, :cond_1f

    const-string v3, "网站路径:"

    goto :goto_21

    :cond_1f
    const-string v3, "Website Home:"

    :goto_21
    :try_start_21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</b><br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_39

    return-object v0

    :catchall_39
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public getTemplates()[Labcd/Sk$a;
    .registers 19

    move-object/from16 v13, p0

    const-wide v14, -0xcc6398c381c7288L

    :try_start_7
    sget-boolean v0, Labcd/uj;->j6:Z

    if-eqz v0, :cond_e

    invoke-static {v14, v15, v13}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v0, Labcd/Sk$b;

    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v1

    const/16 v16, 0x0

    const/4 v12, 0x1

    if-nez v1, :cond_27

    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_27

    :cond_24
    const/16 v17, 0x0

    goto :goto_29

    :cond_27
    :goto_27
    const/16 v17, 0x1

    :goto_29
    const/4 v3, 0x6

    const-string v4, "Website"

    const-string v5, "Html/Css/JavaScript"

    const-string v6, "MyWebsite"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "com.aide.ui"

    const-string v10, "WEBSITE"

    const-string v11, "course_web"

    move-object v1, v0

    move-object/from16 v2, p0

    const/4 v14, 0x1

    move/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Labcd/Sk$b;-><init>(Labcd/IProject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v8, Labcd/Sk$a;

    const-string v2, "Website"

    const v4, 0x7f07007d

    const-string v5, "Website.zip"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "index.html"

    aput-object v1, v6, v16

    const-string v1, "styles.css"

    aput-object v1, v6, v14

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Labcd/Sk$a;-><init>(Ljava/lang/String;Labcd/Sk$b;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_60

    new-array v0, v14, [Labcd/Sk$a;

    aput-object v8, v0, v16

    return-object v0

    :catchall_60
    move-exception v0

    sget-boolean v1, Labcd/uj;->DW:Z

    if-eqz v1, :cond_6d

    const-wide v1, -0xcc6398c381c7288L

    invoke-static {v0, v1, v2, v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6d
    throw v0
.end method

.method public gn(Ljava/lang/String;)I
    .registers 6

    const-wide v0, -0x3463d45668eec83bL  # -1.7268500881646914E56

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const p1, 0x7f0d0032

    return p1

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j3(Ljava/lang/String;)V
    .registers 11

    const-wide v0, -0x1ad5f727dbfb0ac3L  # -2.109975828964799E179

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.ui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    :cond_1c
    invoke-static {p1}, Labcd/sj;->DW(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->DW(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, p1, v3}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4f

    :cond_3d
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0611

    const-string v6, "large_project"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_50

    :cond_4f
    :goto_4f
    return-void

    :catchall_50
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v2
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x1fbdb88f1adbb265L  # -4.901644226530167E155

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()V
    .registers 7

    const-wide v0, 0xb0ec087c70d5981L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f0d05c7

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    const v5, 0x7f0d05c8

    invoke-static {v5, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/aide/ui/MainActivity;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/uj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x6c9c9766e0bc7c0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Labcd/uj;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x6c9c9766e0bc7c0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/uj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2dcf877b9d06a20L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Labcd/uj;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x2dcf877b9d06a20L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/uj;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x40dc8188ca98e138L  # 29190.137365550938

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/uj;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x40dc8188ca98e138L  # 29190.137365550938

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method public j6(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/uj;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x33830de42883d4d7L  # 1.4821870962029647E-60

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Labcd/uj;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x33830de42883d4d7L  # 1.4821870962029647E-60

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public j6(Z)V
    .registers 11

    const-wide v0, -0x3c2b10fe1267d3d3L  # -6.0337060806572575E18

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->DW(ZZ)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    sget-object v3, Lcom/aide/ui/build/f;->Hw:Labcd/Le;

    invoke-virtual {v2, v3}, Labcd/we;->j6(Labcd/ze;)V

    sget-object v2, Lcom/aide/ui/build/f;->Hw:Labcd/Le;

    invoke-virtual {v2}, Labcd/Le;->gn()V

    goto :goto_38

    :cond_26
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0611

    const-string v6, "large_project"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    :goto_38
    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_46

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v2
.end method

.method public tp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x1770a55cffe1adL

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public tp()Z
    .registers 5

    const-wide v0, 0x621b4f7f58fa1d70L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public u7(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x63b23cc76667b80L

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public u7()V
    .registers 10

    const-wide v0, 0xab5a7508b22923bL

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0611

    const-string v6, "large_project"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public v5()Z
    .registers 5

    const-wide v0, -0x4d7f3a206595e9e0L  # -1.990857726342719E-65

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public v5(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x3bbf8ea99e97e850L  # -6.066294545066754E20

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_32

    if-eqz v3, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    goto :goto_3c

    :goto_3b
    throw v2

    :goto_3c
    goto :goto_3b
.end method

.method public we()Z
    .registers 5

    const-wide v0, -0x6c9ddea71811720L  # -7.663004924807204E275

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public we(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x2441d9d766ce8711L  # 4.911940550417933E-134

    :try_start_5
    sget-boolean v2, Labcd/uj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/uj;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

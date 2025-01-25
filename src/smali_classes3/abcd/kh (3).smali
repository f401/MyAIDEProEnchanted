.class public Labcd/kh;
.super Labcd/Hh;

# interfaces
.implements Lcom/aide/ui/build/d$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static tp:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/kh;

    const-wide v1, -0x41b94e21c1fcc68L  # -6.218248801813418E288

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x5fd416eae8f65d0L  # -5.316399954575134E279

    :try_start_6
    sget-boolean v3, Labcd/kh;->u7:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/Hh;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/kh;->tp:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x4bfa38e39aa11a05L  # 1.0287472578677902E58

    :try_start_5
    sget-boolean v2, Labcd/kh;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Hh;->J8()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/kh;->tp:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method protected EQ()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x214a862cf5bda47fL
    .end annotation

    const-wide v0, -0x38c63e6ec68ccffcL  # -1.337334323803388E35

    :try_start_5
    sget-boolean v2, Labcd/kh;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_3d

    if-eqz v3, :cond_1a

    const-string v3, "构建 "

    goto :goto_1c

    .line 99
    :cond_1a
    const-string v3, "Building "

    .line 0
    :goto_1c
    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/build/d;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_3d

    if-eqz v3, :cond_33

    const-string v3, " 中..."

    goto :goto_35

    .line 99
    :cond_33
    const-string v3, "..."

    .line 0
    :goto_35
    :try_start_35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    return-object v0

    .line 99
    :catchall_3d
    move-exception v2

    sget-boolean v3, Labcd/kh;->tp:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_45
    throw v2
.end method

.method protected J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x27b9e4129df21870L
    .end annotation

    const-wide v0, -0x79ce727aac1c741L  # -8.071094074554758E271

    :try_start_5
    sget-boolean v2, Labcd/kh;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/ui/build/d;->DW(Lcom/aide/ui/build/d$a;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/kh;->tp:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected Ws()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x412d5b983bfe2530L
    .end annotation

    const-wide v0, -0x3c34c269b22dd019L  # -3.9257805471728143E18

    :try_start_5
    sget-boolean v2, Labcd/kh;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/d;->VH()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/kh;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected Zo()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1a8136eff8c929c0L
    .end annotation

    const-wide v0, -0x289819f57b9c3c51L  # -1.1494784004529016E113

    :try_start_5
    sget-boolean v2, Labcd/kh;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "BuilProgressDialog can not be cancelled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/kh;->tp:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected gn()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x290e5031c53c5fa0L
    .end annotation

    const-wide v0, 0x57a0baa3583f79edL  # 1.2874186064616246E114

    :try_start_5
    sget-boolean v2, Labcd/kh;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/d;->FH()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/kh;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected tp()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3d72c856d90889e0L
    .end annotation

    const-wide v0, -0x3f3844247ba36db7L  # -12151.714976855686

    :try_start_5
    sget-boolean v2, Labcd/kh;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/d;->DW()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/kh;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected u7()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x14f9cbbb12810865L
    .end annotation

    const-wide v0, -0x136ee23794571b04L  # -9.219509402793316E214

    :try_start_5
    sget-boolean v2, Labcd/kh;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/d;->Hw()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/kh;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected v5()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x134a3784fba42548L
    .end annotation

    const-wide v0, 0x4b3a077abe01e41L

    :try_start_5
    sget-boolean v2, Labcd/kh;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/kh;->tp:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method protected we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x103bcb776fb6b343L
    .end annotation

    const-wide v0, 0x229f7c5565333f88L

    :try_start_5
    sget-boolean v2, Labcd/kh;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/d$a;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/kh;->tp:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

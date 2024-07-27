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
    .registers 4

    const-wide v2, -0x41b94e21c1fcc68L    # -6.218248801813418E288

    const-class v0, Labcd/kh;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x5fd416eae8f65d0L    # -5.316399954575134E279

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5fd416eae8f65d0L    # -5.316399954575134E279

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/Hh;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0x4bfa38e39aa11a05L    # 1.0287472578677902E58

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4bfa38e39aa11a05L    # 1.0287472578677902E58

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Hh;->J8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected EQ()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x214a862cf5bda47fL
    .end annotation

    const-wide v2, -0x38c63e6ec68ccffcL    # -1.337334323803388E35

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x38c63e6ec68ccffcL    # -1.337334323803388E35

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6784\u5efa "

    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " \u4e2d..."

    :goto_1
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    const-string v0, "Building "

    goto :goto_0

    :cond_2
    const-string v0, "..."

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method protected J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x27b9e4129df21870L
    .end annotation

    const-wide v2, -0x79ce727aac1c741L    # -8.071094074554758E271

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x79ce727aac1c741L    # -8.071094074554758E271

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aide/ui/build/d;->DW(Lcom/aide/ui/build/d$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected Ws()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x412d5b983bfe2530L
    .end annotation

    const-wide v2, -0x3c34c269b22dd019L    # -3.9257805471728143E18

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3c34c269b22dd019L    # -3.9257805471728143E18

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->VH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected Zo()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1a8136eff8c929c0L
    .end annotation

    const-wide v2, -0x289819f57b9c3c51L    # -1.1494784004529016E113

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x289819f57b9c3c51L    # -1.1494784004529016E113

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BuilProgressDialog can not be cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected gn()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x290e5031c53c5fa0L
    .end annotation

    const-wide v2, 0x57a0baa3583f79edL    # 1.2874186064616246E114

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x57a0baa3583f79edL    # 1.2874186064616246E114

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->FH()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected tp()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3d72c856d90889e0L
    .end annotation

    const-wide v2, -0x3f3844247ba36db7L    # -12151.714976855686

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3f3844247ba36db7L    # -12151.714976855686

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->DW()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected u7()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x14f9cbbb12810865L
    .end annotation

    const-wide v2, -0x136ee23794571b04L    # -9.219509402793316E214

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x136ee23794571b04L    # -9.219509402793316E214

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->Hw()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected v5()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x134a3784fba42548L
    .end annotation

    const-wide v2, 0x4b3a077abe01e41L

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4b3a077abe01e41L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x103bcb776fb6b343L
    .end annotation

    const-wide v2, 0x229f7c5565333f88L

    :try_start_0
    sget-boolean v0, Labcd/kh;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x229f7c5565333f88L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/d$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kh;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

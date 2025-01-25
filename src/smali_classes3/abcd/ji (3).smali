.class public Labcd/ji;
.super Labcd/Hh;

# interfaces
.implements Lcom/aide/ui/scm/ua$e;


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

    const-class v0, Labcd/ji;

    const-wide v1, 0x2283f5a185a31e27L  # 2.045981147678563E-142

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2ec43ae66586380L

    :try_start_6
    sget-boolean v3, Labcd/ji;->u7:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/Hh;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/ji;->tp:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method protected EQ()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x41901a26cde994b0L
    .end annotation

    const-wide v0, -0xc682ff0bb8b02d3L  # -6.659868860746802E248

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/scm/ua;->DW()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, -0x3707c36c291a2257L  # -3.37809330673063E43

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Hh;->VH()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method protected J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x208201efdb970819L
    .end annotation

    const-wide v0, 0x40597d1fc2d3aa20L  # 101.95506354017607

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua$e;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected Ws()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4b062c9c581af305L
    .end annotation

    const-wide v0, -0xa4192ec63dfe6ecL

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/scm/ua;->VH()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected Zo()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x231c562c64381c85L
    .end annotation

    const-wide v0, -0x2736670f894fbd88L  # -5.163979106766267E119

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/scm/ua;->j6()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected gn()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x45256432843f66edL
    .end annotation

    const-wide v0, -0x26a6bba32897a700L  # -2.609832608594995E122

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/scm/ua;->FH()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x3292b04c6bdcada3L  # 4.4364873750597125E-65

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Hh;->J8()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method protected tp()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x46f7115e66f14133L
    .end annotation

    const-wide v0, -0xd737b862b66d978L  # -6.084959833712953E243

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/scm/ua;->v5()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected u7()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3fecc3a86dc31ca0L
    .end annotation

    const-wide v0, 0x41669e6ed72fe4d1L  # 1.1858806724596413E7

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/scm/ua;->Hw()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected v5()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3e2e5aaa06442fd5L
    .end annotation

    const-wide v0, -0x1413bcb3ff010904L  # -7.43332908798574E211

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method protected we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x15995d0c8eb487a4L
    .end annotation

    const-wide v0, -0x380a71cd43dfc0fbL  # -4.584339694519939E38

    :try_start_5
    sget-boolean v2, Labcd/ji;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua$e;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/ji;->tp:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

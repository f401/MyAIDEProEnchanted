.class public Labcd/Ph;
.super Labcd/Hh;

# interfaces
.implements Labcd/Kj$e;


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

    const-class v0, Labcd/Ph;

    const-wide v1, -0xfa47ed5606f1ab0L  # -1.7080528715523277E233

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x707477689cffed7dL  # -8.659558397220961E-234

    :try_start_6
    sget-boolean v3, Labcd/Ph;->u7:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/Hh;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Ph;->tp:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method protected EQ()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x236e25e93d9ce497L
    .end annotation

    const-wide v0, -0x3f0dfe0c1bb38bb5L  # -73759.24323697497

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Kj;->FH()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x1bc543df573211c3L  # 6.717079704721152E-175

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Hh;->VH()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method protected J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x41cde60cd9d62cc0L
    .end annotation

    const-wide v0, 0x1ad8afb8b095f2e8L

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/Kj;->DW(Labcd/Kj$e;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected Ws()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3ba3679ea3c9c6e4L
    .end annotation

    const-wide v0, 0x3f4137db3114e280L  # 5.254574081510893E-4

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Kj;->VH()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected Zo()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1b97aee24ba35ac8L
    .end annotation

    const-wide v0, -0x290ac511d4513874L

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Kj;->DW()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected gn()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2ca1a4ba98262480L
    .end annotation

    const-wide v0, 0x262a2336a893d310L  # 7.72247890786348E-125

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Kj;->Hw()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x18fa290a52dbed37L
    .end annotation

    const-wide v0, -0x2710b751b87fb3e7L  # -2.5244647172818812E120

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Labcd/Hh;->j6(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v2

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x2961664a6d4f92ffL  # -1.7966601367779226E109

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Hh;->J8()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method protected tp()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3f261d2a3c65dc88L
    .end annotation

    const-wide v0, 0x3b91dbfa4cddd3a4L  # 9.454628359346496E-22

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Kj;->Zo()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected u7()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x36f2a1e788d443a3L
    .end annotation

    const-wide v0, -0x1abcda271a22261L  # -3.381403250624572E300

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Kj;->v5()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected v5()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2ddfd6d3ff4af73cL
    .end annotation

    const-wide v0, -0x39f376537f51fdc8L  # -2.8262456745733782E29

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method protected we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x303d379ddb4410c9L
    .end annotation

    const-wide v0, 0xedcdd21e7f8a8f3L

    :try_start_5
    sget-boolean v2, Labcd/Ph;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/Kj;->j6(Labcd/Kj$e;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Ph;->tp:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

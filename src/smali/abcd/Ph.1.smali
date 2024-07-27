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
    .registers 4

    const-wide v2, -0xfa47ed5606f1ab0L    # -1.7080528715523277E233

    const-class v0, Labcd/Ph;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x707477689cffed7dL    # -8.659558397220961E-234

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x707477689cffed7dL    # -8.659558397220961E-234

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/Hh;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected EQ()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x236e25e93d9ce497L
    .end annotation

    const-wide v2, -0x3f0dfe0c1bb38bb5L    # -73759.24323697497

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3f0dfe0c1bb38bb5L    # -73759.24323697497

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Kj;->FH()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, 0x1bc543df573211c3L    # 6.717079704721152E-175

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1bc543df573211c3L    # 6.717079704721152E-175

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Hh;->VH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x41cde60cd9d62cc0L
    .end annotation

    const-wide v2, 0x1ad8afb8b095f2e8L

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ad8afb8b095f2e8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/Kj;->DW(Labcd/Kj$e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected Ws()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3ba3679ea3c9c6e4L
    .end annotation

    const-wide v2, 0x3f4137db3114e280L    # 5.254574081510893E-4

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3f4137db3114e280L    # 5.254574081510893E-4

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Kj;->VH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected Zo()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1b97aee24ba35ac8L
    .end annotation

    const-wide v2, -0x290ac511d4513874L

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x290ac511d4513874L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Kj;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected gn()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2ca1a4ba98262480L
    .end annotation

    const-wide v2, 0x262a2336a893d310L    # 7.72247890786348E-125

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x262a2336a893d310L    # 7.72247890786348E-125

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Kj;->Hw()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x18fa290a52dbed37L
    .end annotation

    const-wide v4, -0x2710b751b87fb3e7L    # -2.5244647172818812E120

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2710b751b87fb3e7L    # -2.5244647172818812E120

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Labcd/Hh;->j6(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x2961664a6d4f92ffL    # -1.7966601367779226E109

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2961664a6d4f92ffL    # -1.7966601367779226E109

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Hh;->J8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected tp()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3f261d2a3c65dc88L
    .end annotation

    const-wide v2, 0x3b91dbfa4cddd3a4L    # 9.454628359346496E-22

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3b91dbfa4cddd3a4L    # 9.454628359346496E-22

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Kj;->Zo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected u7()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x36f2a1e788d443a3L
    .end annotation

    const-wide v2, -0x1abcda271a22261L    # -3.381403250624572E300

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1abcda271a22261L    # -3.381403250624572E300

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Kj;->v5()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected v5()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2ddfd6d3ff4af73cL
    .end annotation

    const-wide v2, -0x39f376537f51fdc8L    # -2.8262456745733782E29

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x39f376537f51fdc8L    # -2.8262456745733782E29

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x303d379ddb4410c9L
    .end annotation

    const-wide v2, 0xedcdd21e7f8a8f3L

    :try_start_0
    sget-boolean v0, Labcd/Ph;->u7:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xedcdd21e7f8a8f3L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/Kj;->j6(Labcd/Kj$e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ph;->tp:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

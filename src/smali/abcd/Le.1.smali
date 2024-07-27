.class public Labcd/Le;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/e;
.implements Labcd/ze;


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
    .registers 4

    const-wide v2, -0x6c711c87d900a4fL    # -8.631527039895023E275

    const-class v0, Labcd/Le;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x44f5be5a003a3c40L    # 1.6428970041881796E24

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x44f5be5a003a3c40L    # 1.6428970041881796E24

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private u7()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2c885aecc0f1da9dL
    .end annotation

    const-wide v4, 0x33d553c5ef7e1f69L    # 5.308789366837177E-59

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x33d553c5ef7e1f69L    # 5.308789366837177E-59

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/sj;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v1, v2, v0, v3}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0x2065dcc3e3aaac21L    # -3.422347683366933E152

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2065dcc3e3aaac21L    # -3.422347683366933E152

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, -0x544756fbc66d24e0L    # -4.509811415288937E-98

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x544756fbc66d24e0L    # -4.509811415288937E-98

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()V
    .registers 5

    const-wide v2, 0x2f4a0d48c55cd9b4L    # 6.866104963337026E-81

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2f4a0d48c55cd9b4L    # 6.866104963337026E-81

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()V
    .registers 5

    const-wide v2, -0x239dca86fe73ac2fL    # -1.0587933924930256E137

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x239dca86fe73ac2fL    # -1.0587933924930256E137

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Le;->gn()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Labcd/ze$a;
    .registers 5

    const-wide v2, -0x1785960fb1f1bf7dL    # -1.9281839836155807E195

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1785960fb1f1bf7dL    # -1.9281839836155807E195

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/ze$a;->FH:Labcd/ze$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()V
    .registers 5

    const-wide v2, -0x3b0a6fb24c710b39L    # -1.629306020205127E24

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3b0a6fb24c710b39L    # -1.629306020205127E24

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->v5()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->Hw()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Labcd/Le;->u7()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()I
    .registers 5

    const-wide v2, 0x22bb2a7a4d611e89L

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x22bb2a7a4d611e89L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/16 v0, 0x13

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0xd117f42d9d8d560L

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd117f42d9d8d560L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v2, 0x29d9c0ac3f4728e0L

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x29d9c0ac3f4728e0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v2, 0x26f02bb0898df398L

    :try_start_0
    sget-boolean v0, Labcd/Le;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x26f02bb0898df398L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Le;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

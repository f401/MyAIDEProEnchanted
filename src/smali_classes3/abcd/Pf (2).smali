.class public Labcd/Pf;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_l;
.implements Labcd/Jl;


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

    const-class v0, Labcd/Pf;

    const-wide v1, 0x24821a95cbef7f98L  # 7.970449613067296E-133

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x255dd97e1714e3dL

    :try_start_6
    sget-boolean v3, Labcd/Pf;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Pf;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x2c0c508be3979609L  # 1.6569994375586387E-96

    :try_start_5
    sget-boolean v2, Labcd/Pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0d0024

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Pf;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Zo()I
    .registers 5

    const-wide v0, 0x2b4824e9b0691960L  # 3.449563208959301E-100

    :try_start_5
    sget-boolean v2, Labcd/Pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f070012

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Pf;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v0, 0x21e1a63b2d4295e4L

    :try_start_5
    sget-boolean v2, Labcd/Pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Labcd/Pf;->j6(Z)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return v0

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Pf;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x3fe19b8f8a7b5618L  # 0.5502393440935434

    :try_start_5
    sget-boolean v2, Labcd/Pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800ac

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Pf;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v0, 0x127835a2742aae30L

    :try_start_5
    sget-boolean v2, Labcd/Pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->FH()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/scm/ua;->FH(Ljava/lang/String;)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2c

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Pf;->DW:Z

    if-eqz v3, :cond_39

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public run()Z
    .registers 6

    const-wide v0, -0x1e5dc71f0a6fb5f0L

    :try_start_5
    sget-boolean v2, Labcd/Pf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Labcd/di;

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Labcd/di;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_22

    const/4 v0, 0x1

    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Pf;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.class public Labcd/Sg;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_l;


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

    const-wide v2, 0x2239b45f2f9ad4e3L    # 8.234031988203179E-144

    const-class v0, Labcd/Sg;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x3da4ad16e4e99e58L    # -4.694205021055259E11

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Sg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3da4ad16e4e99e58L    # -4.694205021055259E11

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sg;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    const-wide v2, 0x11eb6ada68c32ac4L

    :try_start_0
    sget-boolean v0, Labcd/Sg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x11eb6ada68c32ac4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sg;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5

    const-wide v2, -0xeedab917f979490L    # -4.662454418315088E236

    :try_start_0
    sget-boolean v0, Labcd/Sg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xeedab917f979490L    # -4.662454418315088E236

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f0800f7

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sg;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v2, 0x4c69095aafe9c40L

    :try_start_0
    sget-boolean v0, Labcd/Sg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4c69095aafe9c40L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sg;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()Z
    .registers 5

    const-wide v2, 0x1be1f186b83f3a58L

    :try_start_0
    sget-boolean v0, Labcd/Sg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1be1f186b83f3a58L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/Wa;->FH(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sg;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

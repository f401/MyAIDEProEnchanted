.class public Lcom/aide/ui/PackageUpgradedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Lcom/aide/ui/ba;
    .annotation runtime Labcd/ru;
        field = 0x6d64d8850c89670L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x23a86a5c85fc4074L    # -6.856858630690249E136

    const-class v0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x3b928141aed9aa80L    # -4.352707235656128E21

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3b928141aed9aa80L    # -4.352707235656128E21

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Lcom/aide/ui/ba;)V
    .registers 7

    const-wide v4, 0x2cfa094e4db973d8L    # 4.9927687847464165E-92

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2cfa094e4db973d8L    # 4.9927687847464165E-92

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sput-object p0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->j6:Lcom/aide/ui/ba;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-wide v2, -0x81081ec123428a1L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x81081ec123428a1L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->j6:Lcom/aide/ui/ba;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->j6:Lcom/aide/ui/ba;

    invoke-static {p1, v0}, Lcom/aide/ui/UserPresentBroadcastReceiver;->j6(Landroid/content/Context;Lcom/aide/ui/ba;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->FH:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

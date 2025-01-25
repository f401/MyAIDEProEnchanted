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
    .registers 3

    const-class v0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;

    const-wide v1, -0x23a86a5c85fc4074L  # -6.856858630690249E136

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3b928141aed9aa80L  # -4.352707235656128E21

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->FH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Lcom/aide/ui/ba;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2cfa094e4db973d8L  # 4.9927687847464165E-92

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sput-object p0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->j6:Lcom/aide/ui/ba;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->FH:Z

    if-eqz v4, :cond_18

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x81081ec123428a1L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v0, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->j6:Lcom/aide/ui/ba;

    if-eqz v0, :cond_13

    invoke-static {p1, v0}, Lcom/aide/ui/UserPresentBroadcastReceiver;->j6(Landroid/content/Context;Lcom/aide/ui/ba;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->FH:Z

    if-eqz v1, :cond_25

    const-wide v2, -0x81081ec123428a1L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

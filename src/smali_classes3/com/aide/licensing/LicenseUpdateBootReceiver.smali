.class public Lcom/aide/licensing/LicenseUpdateBootReceiver;
.super Landroid/content/BroadcastReceiver;


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

    const-class v0, Lcom/aide/licensing/LicenseUpdateBootReceiver;

    const-wide v1, 0x1f19a68626971fc9L  # 7.297899366627481E-159

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3d967f4b3ac35a7L

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/LicenseUpdateBootReceiver;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/LicenseUpdateBootReceiver;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/LicenseUpdateBootReceiver;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x172c3a506325be9L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "Boot broadcast received."

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/aide/licensing/LicenseUpdateAlarmReceiver;->DW(Landroid/content/Context;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/LicenseUpdateBootReceiver;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x172c3a506325be9L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

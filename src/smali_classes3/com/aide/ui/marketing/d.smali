.class public Lcom/aide/ui/marketing/d;
.super Ljava/lang/Object;


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

    const-class v0, Lcom/aide/ui/marketing/d;

    const-wide v1, 0x23b68dc95e2127d0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3d7e01955629a743L  # -2.4730511100910923E12

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/marketing/d;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/marketing/d;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 15

    sget-boolean v0, Lcom/aide/ui/marketing/d;->j6:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x1

    aput-object p0, v0, v1

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const-wide v1, 0x11c581d9d9b7b7cL

    const/4 p0, 0x0

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2c
    new-instance p0, Lcom/aide/ui/marketing/c;

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move v6, p2

    move-object v7, p5

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/aide/ui/marketing/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;I)V

    invoke-static {p0}, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->j6(Lcom/aide/ui/ba;)V

    return-void
.end method

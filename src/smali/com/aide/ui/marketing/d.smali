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
    .registers 4

    const-wide v2, 0x23b68dc95e2127d0L

    const-class v0, Lcom/aide/ui/marketing/d;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x3d7e01955629a743L    # -2.4730511100910923E12

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3d7e01955629a743L    # -2.4730511100910923E12

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12

    sget-boolean v0, Lcom/aide/ui/marketing/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x11c581d9d9b7b7cL

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    const/4 v4, 0x5

    aput-object p5, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/marketing/c;

    move-object v1, p3

    move-object v2, p4

    move v3, p2

    move-object v4, p5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/marketing/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;I)V

    invoke-static {v0}, Lcom/aide/ui/PackageUpgradedBroadcastReceiver;->j6(Lcom/aide/ui/ba;)V

    return-void
.end method

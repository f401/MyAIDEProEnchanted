.class public Labcd/Kk;
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

    const-class v0, Labcd/Kk;

    const-wide v1, -0x6e162e90fe50fe7L  # -2.649786608858928E275

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1259e49f953821bcL

    :try_start_6
    sget-boolean v3, Labcd/Kk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Kk;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private j6(Landroid/content/Context;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1ea123c002682388L
    .end annotation

    const-wide v7, -0x1a8685e7aeb90f50L  # -6.607308277225412E180

    :try_start_5
    sget-boolean v0, Labcd/Kk;->j6:Z

    if-eqz v0, :cond_c

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v3, "engine"

    const-string v4, "Code Analysis Notifications"

    const-string v5, "Notifications showing error checking progress and statistics."

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Labcd/Kk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "other"

    const-string v4, "Other Notifications"

    const-string v5, "All other notifications."

    const/4 v6, 0x3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Labcd/Kk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/Kk;->DW:Z

    if-eqz v1, :cond_2d

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method private j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x14106146ee7ad418L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kk;->j6:Z

    if-eqz v0, :cond_16

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x138235829819cbe0L  # -4.0116373150236804E214

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1d

    return-void

    :cond_1d
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, p2, p3, p5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, p4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v0

    sget-boolean v1, Labcd/Kk;->DW:Z

    if-eqz v1, :cond_49

    const-wide v2, -0x138235829819cbe0L  # -4.0116373150236804E214

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    throw v0
.end method


# virtual methods
.method public j6()V
    .registers 5

    const-wide v0, 0x223749edd335758bL  # 7.460173296045075E-144

    :try_start_5
    sget-boolean v2, Labcd/Kk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Kk;->j6(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Kk;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.class public Labcd/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ck$a;
.implements Lcom/aide/ui/build/d$a;


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

.field private static j6:I
    .annotation runtime Labcd/ru;
        field = -0x28c60bf04ef8cb38L
    .end annotation
.end field


# instance fields
.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x210b7ed9c9c3b110L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x1d39fcbaf41a9c30L
    .end annotation
.end field

.field private Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2160a13cf6b01ec8L
    .end annotation
.end field

.field private v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2ffc96df586e94e3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x136de741efd93ae8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x26c6eb119cef8130L

    :try_start_6
    const-class v3, Labcd/Sj;

    const-wide v4, 0x3844cb311f43b938L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Sj;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0xa

    sput v3, Labcd/Sj;->j6:I
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v3

    sget-boolean v4, Labcd/Sj;->FH:Z

    if-eqz v4, :cond_24

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x7fa5a272adaca20L

    :try_start_6
    sget-boolean v3, Labcd/Sj;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Sj;->FH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private j6(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x48be793baae2d61L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Sj;->DW:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x6c54e49849220800L  # 7.033583969265804E213

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget v0, p0, Labcd/Sj;->Hw:I

    if-ne p1, v0, :cond_31

    iget-object v0, p0, Labcd/Sj;->v5:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Labcd/Sj;->Zo:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget v0, p0, Labcd/Sj;->VH:I

    if-eq p4, v0, :cond_7e

    :cond_31
    iput p1, p0, Labcd/Sj;->Hw:I

    iput-object p3, p0, Labcd/Sj;->Zo:Ljava/lang/String;

    iput-object p2, p0, Labcd/Sj;->v5:Ljava/lang/String;

    iput p4, p0, Labcd/Sj;->VH:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/MainActivity;->DW(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    const-string v5, "engine"

    invoke-direct {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->Hw(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->DW(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    if-lez p4, :cond_69

    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->DW(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_69
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->j6()Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    sget v2, Labcd/Sj;->j6:I

    invoke-static {v1, v2, v0}, Labcd/Sj;->j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    :try_end_7e
    .catchall {:try_start_0 .. :try_end_7e} :catchall_7f

    :cond_7e
    return-void

    :catchall_7f
    move-exception v0

    sget-boolean v1, Labcd/Sj;->FH:Z

    if-eqz v1, :cond_9a

    const-wide v2, 0x6c54e49849220800L  # 7.033583969265804E213

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9a
    throw v0
.end method

.method private static synthetic j6(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p0, p1, p2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;ILandroid/app/Notification;)V

    return-void
.end method

.method private v5()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1cc82f8d7c3e0658L
    .end annotation

    const-wide v0, -0x1b097fc52cf2f611L  # -2.2794879116439297E178

    :try_start_5
    sget-boolean v2, Labcd/Sj;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_13

    return-void

    :cond_13
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ck;->FH()I

    move-result v2

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v3

    invoke-virtual {v3}, Labcd/ck;->VH()I

    move-result v3

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v4

    invoke-virtual {v4}, Labcd/ck;->Zo()I

    move-result v4

    const/16 v5, 0x64

    if-nez v3, :cond_30

    goto :goto_34

    :cond_30
    mul-int/lit8 v4, v4, 0x64

    div-int v5, v4, v3

    :goto_34
    const/16 v4, 0xa

    div-int/2addr v5, v4

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v6

    invoke-virtual {v6}, Labcd/ck;->u7()Z

    move-result v6

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/ui/build/d;->VH()Z

    move-result v7
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_d9

    const-string v8, ""

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_59

    :try_start_4d
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/ui/build/d;->DW()Ljava/lang/String;

    move-result-object v7

    const v11, 0x1080081

    goto :goto_91

    :cond_59
    if-nez v2, :cond_68

    new-array v7, v10, [Ljava/lang/Object;

    const v11, 0x7f0d065d

    invoke-static {v11, v7}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const v11, 0x7f0700fa

    goto :goto_91

    :cond_68
    if-ne v2, v9, :cond_74

    new-array v7, v10, [Ljava/lang/Object;

    const v11, 0x7f0d065f

    invoke-static {v11, v7}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8e

    :cond_74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v10

    const v7, 0x7f0d065a

    invoke-static {v7, v11}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_8e
    const v11, 0x7f0700f6

    :goto_91
    if-eqz v6, :cond_bc

    if-gt v3, v4, :cond_9f

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/build/d;->VH()Z

    move-result v3

    if-eqz v3, :cond_bc

    :cond_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v5, v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v10

    const v3, 0x7f0d0660

    invoke-static {v3, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_d5

    :cond_bc
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d5

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v10

    const v3, 0x7f0d0661

    invoke-static {v3, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_d5
    :goto_d5
    invoke-direct {p0, v11, v7, v8, v2}, Labcd/Sj;->j6(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_d8
    .catchall {:try_start_4d .. :try_end_d8} :catchall_d9

    return-void

    :catchall_d9
    move-exception v2

    sget-boolean v3, Labcd/Sj;->FH:Z

    if-eqz v3, :cond_e1

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_e1
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0x18341c51b0db5ff0L  # -9.940908847897433E191

    :try_start_5
    sget-boolean v2, Labcd/Sj;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/Sj;->v5()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Sj;->FH:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x1287c83f95b51e90L

    :try_start_5
    sget-boolean v2, Labcd/Sj;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/ck;->j6(Labcd/ck$a;)V

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/d$a;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Sj;->FH:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, -0x221b8962620a37e4L  # -1.996294060143454E144

    :try_start_5
    sget-boolean v2, Labcd/Sj;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sget v3, Labcd/Sj;->j6:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Sj;->FH:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0xbac0ba0e7141cd8L  # -2.285908747255678E252

    :try_start_5
    sget-boolean v2, Labcd/Sj;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/Sj;->v5()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Sj;->FH:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x342a47a4b0d1ee44L

    :try_start_5
    sget-boolean v2, Labcd/Sj;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/Sj;->v5()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Sj;->FH:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.class public Labcd/Ek;
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


# instance fields
.field private EQ:Labcd/Pi;
    .annotation runtime Labcd/ru;
        field = 0x21ed19fdf3372b88L
    .end annotation
.end field

.field private FH:J
    .annotation runtime Labcd/ru;
        field = 0x4222f09c511b0583L
    .end annotation
.end field

.field private Hw:J
    .annotation runtime Labcd/ru;
        field = -0x38da8364433f24c0L
    .end annotation
.end field

.field private J0:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Labcd/ru;
        field = -0x246bac8945efe4c3L
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = 0x19401966b2e52a70L
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = 0x45f2a9b896645258L
    .end annotation
.end field

.field private gn:Lcom/aide/licensing/d;
    .annotation runtime Labcd/ru;
        field = -0x1ecd09123edf95d0L
    .end annotation
.end field

.field private tp:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation runtime Labcd/ru;
        field = 0x2063d825f4cccb00L
    .end annotation
.end field

.field private u7:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation runtime Labcd/ru;
        field = 0x42c1979b4565ea5dL
    .end annotation
.end field

.field private v5:J
    .annotation runtime Labcd/ru;
        field = -0x18ad1b86e8979780L
    .end annotation
.end field

.field private we:Labcd/Qi;
    .annotation runtime Labcd/ru;
        field = 0xca4d8cba05ec40L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ek;

    const-wide v1, -0x4c7f441afbadedf8L  # -1.3016963636220151E-60

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0x455963d23e5064d8L  # 1.2277815231450004E26

    :try_start_6
    sget-boolean v3, Labcd/Ek;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Labcd/Ek;->FH:J

    iput-wide v3, p0, Labcd/Ek;->Hw:J

    iput-wide v3, p0, Labcd/Ek;->v5:J

    const/4 v5, 0x0

    iput-boolean v5, p0, Labcd/Ek;->Zo:Z

    iput-boolean v5, p0, Labcd/Ek;->VH:Z

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v6, p0, Labcd/Ek;->u7:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v6, p0, Labcd/Ek;->tp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Labcd/Pi;

    invoke-direct {v3}, Labcd/Pi;-><init>()V

    iput-object v3, p0, Labcd/Ek;->EQ:Labcd/Pi;

    new-instance v3, Labcd/Qi;

    invoke-direct {v3}, Labcd/Qi;-><init>()V

    iput-object v3, p0, Labcd/Ek;->we:Labcd/Qi;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Labcd/Ek;->J0:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_41

    return-void

    :catchall_41
    move-exception v3

    sget-boolean v4, Labcd/Ek;->DW:Z

    if-eqz v4, :cond_49

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v3
.end method

.method private DW(Landroid/app/Activity;ILjava/lang/String;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1dc00d2d9a082ab1L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x19bc4744969b4e18L  # -4.189958471261614E184

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p0}, Labcd/Ek;->Zo()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_21

    const/4 p1, 0x0

    return p1

    :catchall_21
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x19bc4744969b4e18L  # -4.189958471261614E184

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method private a8()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1029f9c0356d2460L
    .end annotation

    const-wide v0, -0x479f16276362c0fL

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/yk;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->yS()Labcd/Pk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Pk;->j6()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method private er()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x136cd4fb3d40e818L
    .end annotation

    const-string v0, "first_shop_time"

    const-wide v1, 0x60afaecba096593L

    :try_start_7
    sget-boolean v3, Labcd/Ek;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const-string v4, "LicenseService"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_32

    :cond_31
    return-void

    :catchall_32
    move-exception v0

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method static synthetic j6(Labcd/Ek;)V
    .registers 1

    invoke-direct {p0}, Labcd/Ek;->lg()V

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1603f0b869426b51L
    .end annotation

    const-wide v0, -0x1002e8e8a114c428L  # -2.8226913979482328E231

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->er()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->DW(Landroid/content/Context;)V

    invoke-static {p1}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->j6(Landroid/content/Context;)V

    goto :goto_2b

    :cond_28
    invoke-static {p1}, Labcd/F;->j6(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    :goto_2b
    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method private lg()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x7d874b00b37303dL
    .end annotation

    const-wide v0, 0x1c251a7ec774100L

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/trainer/TrainerNotificationAlarmReceiver;->j6(Landroid/content/Context;)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->j6(Landroid/content/Context;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method private rN()Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x33a6766afe2c9138L
    .end annotation

    const-wide v0, 0x2ba60826b4ad4b6dL  # 2.014569281293019E-98

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ro()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.web"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_65

    const/4 v4, 0x0

    if-eqz v2, :cond_51

    :try_start_26
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-wide v5, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v2, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    new-instance v5, Ljava/util/GregorianCalendar;

    const/16 v6, 0xb

    const/16 v7, 0xd

    const/16 v8, 0x7e0

    invoke-direct {v5, v8, v6, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_4d} :catch_50
    .catchall {:try_start_26 .. :try_end_4d} :catchall_65

    if-eqz v2, :cond_51

    return v3

    :catch_50
    move-exception v2

    :cond_51
    :try_start_51
    invoke-direct {p0}, Labcd/Ek;->a8()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Labcd/Ek;->tp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_65

    cmp-long v2, v5, v0

    if-gez v2, :cond_63

    goto :goto_64

    :cond_63
    const/4 v3, 0x0

    :goto_64
    return v3

    :catchall_65
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_6d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6d
    throw v2
.end method


# virtual methods
.method public DW()J
    .registers 7

    const-wide v0, 0x3dcd942c7971afc1L  # 5.380353036407628E-11

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "LicenseService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "first_shop_time"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-wide v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public DW(J)V
    .registers 9

    const-wide v0, -0x5b596e1ca232dd2fL  # -3.9746700037507644E-132

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v2, p0, Labcd/Ek;->tp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string v2, "Developer license verified"

    invoke-direct {p0, v2}, Labcd/Ek;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Developer"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "InAppBillingSettings"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "WasDeveloperLicensedAtSomePoint"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_4a

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v2
.end method

.method public DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x86a8a1c62947fd9L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1, p3}, Labcd/yk;->j6(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x86a8a1c62947fd9L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public DW(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x12928a86fdeaabcdL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0612

    invoke-direct {p0, p1, v1, v0}, Labcd/Ek;->DW(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return p1

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x12928a86fdeaabcdL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public EQ()Z
    .registers 9

    const-wide v0, -0x498bd4dd0bd21990L  # -2.207975861307311E-46

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ro()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    invoke-direct {p0}, Labcd/Ek;->rN()Z

    move-result v2

    if-eqz v2, :cond_22

    return v3

    :cond_22
    invoke-direct {p0}, Labcd/Ek;->a8()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Labcd/Ek;->u7:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_34

    return v3

    :cond_34
    iget-object v2, p0, Labcd/Ek;->we:Labcd/Qi;

    invoke-virtual {v2}, Labcd/Oi;->j6()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, p0, Labcd/Ek;->Hw:J
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_46

    cmp-long v2, v4, v0

    if-gez v2, :cond_44

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    :goto_45
    return v3

    :catchall_46
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_4e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4e
    throw v2
.end method

.method public FH()V
    .registers 6

    const-wide v0, 0xa60b9dc24de3530L

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ek;->EQ:Labcd/Pi;

    invoke-virtual {v2}, Labcd/Oi;->DW()V

    iget-object v2, p0, Labcd/Ek;->EQ:Labcd/Pi;

    invoke-virtual {v2}, Labcd/Oi;->j6()V

    iget-object v2, p0, Labcd/Ek;->we:Labcd/Qi;

    invoke-virtual {v2}, Labcd/Oi;->DW()V

    iget-object v2, p0, Labcd/Ek;->we:Labcd/Qi;

    invoke-virtual {v2}, Labcd/Oi;->j6()V

    invoke-virtual {p0}, Labcd/Ek;->VH()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_30

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v4, "Premium"

    invoke-static {v2, v4, v3}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_30
    invoke-virtual {p0}, Labcd/Ek;->we()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v4, "UIDesigner"

    invoke-static {v2, v4, v3}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    :cond_3f
    return-void

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    throw v2
.end method

.method public FH(J)V
    .registers 11

    const-wide v0, -0x44b13ee0c68d69a0L

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Labcd/Ek;->FH:J

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-gez v7, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    iput-wide p1, p0, Labcd/Ek;->FH:J

    if-nez v2, :cond_34

    invoke-direct {p0}, Labcd/Ek;->lg()V

    const-string v2, "Premium license verified"

    invoke-direct {p0, v2}, Labcd/Ek;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Premium"

    invoke-static {v2, v3, v6}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    :cond_34
    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method public FH(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3e96a7ba78a393d4L  # -1.328798023003205E7

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Ek;->Zo()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v2, "com.aide.premium.key"

    invoke-static {v1, v2, p2}, Labcd/F;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x40080000  # 2.125f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_4e

    :try_start_2e
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2e .. :try_end_35} :catch_36
    .catchall {:try_start_2e .. :try_end_35} :catchall_4e

    goto :goto_42

    :catch_36
    move-exception v0

    :try_start_37
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Google Play Store"

    const-string v2, "Google Play Store App could not be opened. Not installed?"

    invoke-static {v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    const-string v0, "Premium key market page shown"

    const-string v1, "linkid"

    invoke-static {v1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_5f

    const-wide v2, -0x3e96a7ba78a393d4L  # -1.328798023003205E7

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    throw v0
.end method

.method public FH(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x1dc3846622ef55edL  # -1.6402142227816721E165

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Edition shown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linkid"

    invoke-static {v1, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    invoke-static {v1, p2, p3}, Labcd/F;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x40080000  # 2.125f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_4a
    .catchall {:try_start_0 .. :try_end_4a} :catchall_5f

    :try_start_4a
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_51
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4a .. :try_end_51} :catch_52
    .catchall {:try_start_4a .. :try_end_51} :catchall_5f

    goto :goto_5e

    :catch_52
    move-exception v0

    :try_start_53
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Google Play Store"

    const-string v2, "Google Play Store App could not be opened. Not installed?"

    invoke-static {v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_5f

    :goto_5e
    return-void

    :catchall_5f
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_71

    const-wide v2, -0x1dc3846622ef55edL  # -1.6402142227816721E165

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_71
    throw v0
.end method

.method public Hw(J)V
    .registers 8

    const-wide v0, -0x193536aba3cd80a7L  # -1.4568752974452827E187

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-wide p1, p0, Labcd/Ek;->Hw:J

    const-string v2, "UI Builder license verified"

    invoke-direct {p0, v2}, Labcd/Ek;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "UIDesigner"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public Hw(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x321a9598759d969fL  # -1.804264303264286E67

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_6b

    const-string v2, "com.aide.ui"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.aide.web"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "com.aide.cpp"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "com.aide.phonegap"

    aput-object v4, v1, v2

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v0, :cond_6a

    aget-object v4, v1, v2

    :try_start_2c
    invoke-static {}, Lcom/aide/ui/U;->Hw()[Labcd/IProject;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v6, :cond_67

    aget-object v8, v5, v7

    invoke-interface {v8}, Labcd/IProject;->FH()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_64

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_64

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/aide/ui/trainer/g$b;

    iget-object v10, v9, Lcom/aide/ui/trainer/g$b;->FH:Ljava/lang/String;

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    iget-object v9, v9, Lcom/aide/ui/trainer/g$b;->v5:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-virtual {p0, p1, v4, p3}, Labcd/Ek;->FH(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_2c .. :try_end_63} :catchall_6b

    return-void

    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_6a
    return-void

    :catchall_6b
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_7d

    const-wide v2, -0x321a9598759d969fL  # -1.804264303264286E67

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    goto :goto_7f

    :goto_7e
    throw v0

    :goto_7f
    goto :goto_7e
.end method

.method public Hw()Z
    .registers 5

    const-wide v0, -0x55af40e7928921d3L  # -7.301712051956328E-105

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/Ek;->rN()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p0}, Labcd/Ek;->u7()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p0}, Labcd/Ek;->v5()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p0}, Labcd/Ek;->Zo()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p0}, Labcd/Ek;->EQ()Z

    move-result v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2f

    if-eqz v0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    :goto_2e
    return v0

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public J0()V
    .registers 6

    const-wide v0, -0xfcdcc3654238108L  # -2.8259393877456606E232

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Labcd/Ek;->FH:J

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Premium"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public J8()V
    .registers 5

    const-wide v0, 0x484a5c3b4ddf7b80L  # 1.7939876881045814E40

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/Ek;->Zo:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Mr()Z
    .registers 6

    const-wide v0, 0x301574eda723109bL  # 4.6326030207409066E-77

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ro()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "InAppBillingSettings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "WasPrimeAtSomePoint"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return v0

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public QX()V
    .registers 5

    const-wide v0, -0x1984f4a43f551038L

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/Ek;->VH:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public U2()Z
    .registers 5

    const-wide v0, -0x2379e6b32aa828cL  # -7.97260766095804E297

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Ek;->Mr()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-virtual {p0}, Labcd/Ek;->j3()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Labcd/Ek;->VH()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Labcd/Ek;->we()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Labcd/Ek;->aM()Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_30

    if-eqz v0, :cond_2e

    return v3

    :cond_2e
    const/4 v0, 0x0

    return v0

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method public VH()Z
    .registers 5

    const-wide v0, -0x47654812eca22274L

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ek;->EQ:Labcd/Pi;

    invoke-virtual {v2}, Labcd/Oi;->FH()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Ws()V
    .registers 6

    const-wide v0, 0x1e4c75e60009787dL  # 9.884518128092967E-163

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Labcd/Ek;->Hw:J

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "UIDesigner"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public XL()V
    .registers 5

    const-wide v0, -0x2c868b2c1dc1ba84L  # -1.3275012417293142E94

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ek;->EQ:Labcd/Pi;

    invoke-virtual {v2}, Labcd/Oi;->v5()V

    iget-object v2, p0, Labcd/Ek;->we:Labcd/Qi;

    invoke-virtual {v2}, Labcd/Oi;->v5()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Zo()Z
    .registers 10

    const-wide v0, 0xe3a3ec346a85a9L

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ro()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.phonegap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_43

    iget-object v2, p0, Labcd/Ek;->gn:Lcom/aide/licensing/d;

    if-nez v2, :cond_38

    new-instance v2, Lcom/aide/licensing/d;

    invoke-direct {v2}, Lcom/aide/licensing/d;-><init>()V

    iput-object v2, p0, Labcd/Ek;->gn:Lcom/aide/licensing/d;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/aide/licensing/d;->j6(Landroid/content/Context;Z)V

    :cond_38
    iget-object v2, p0, Labcd/Ek;->gn:Lcom/aide/licensing/d;

    new-instance v4, Labcd/Ck;

    invoke-direct {v4, p0}, Labcd/Ck;-><init>(Labcd/Ek;)V

    invoke-virtual {v2, v4}, Lcom/aide/licensing/d;->j6(Lcom/aide/licensing/g;)Z

    return v3

    :cond_43
    invoke-direct {p0}, Labcd/Ek;->rN()Z

    move-result v2

    if-eqz v2, :cond_4a

    return v3

    :cond_4a
    invoke-direct {p0}, Labcd/Ek;->a8()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Labcd/Ek;->u7:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-gez v2, :cond_5c

    return v3

    :cond_5c
    iget-object v2, p0, Labcd/Ek;->EQ:Labcd/Pi;

    invoke-virtual {v2}, Labcd/Oi;->j6()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v0, p0, Labcd/Ek;->FH:J
    :try_end_67
    .catchall {:try_start_5 .. :try_end_67} :catchall_6e

    cmp-long v2, v5, v0

    if-gez v2, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v3, 0x0

    :goto_6d
    return v3

    :catchall_6e
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_76

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_76
    throw v2
.end method

.method public aM()Z
    .registers 6

    const-wide v0, 0x2b65d95a426388d0L  # 1.2486584900014375E-99

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ro()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "InAppBillingSettings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "WasDebuggerLicensedAtSomePoint"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return v0

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public gn()Z
    .registers 5

    const-wide v0, -0x30ccb9fe26f3140L  # -7.665859611081524E293

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ek;->EQ:Labcd/Pi;

    invoke-virtual {v2}, Labcd/Oi;->j6()V

    iget-boolean v0, p0, Labcd/Ek;->Zo:Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j3()Z
    .registers 10

    const-wide v0, -0x145e77a24e0c57bfL  # -2.882008681383413E210

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ro()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.web"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_62

    const/4 v4, 0x0

    if-eqz v2, :cond_51

    :try_start_26
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-wide v5, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v2, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    new-instance v5, Ljava/util/GregorianCalendar;

    const/16 v6, 0xb

    const/16 v7, 0xd

    const/16 v8, 0x7e0

    invoke-direct {v5, v8, v6, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_4d} :catch_50
    .catchall {:try_start_26 .. :try_end_4d} :catchall_62

    if-eqz v2, :cond_51

    return v3

    :catch_50
    move-exception v2

    :cond_51
    :try_start_51
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "InAppBillingSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "WasDeveloperLicensedAtSomePoint"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_62

    return v0

    :catchall_62
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_6a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6a
    throw v2
.end method

.method public j6(J)V
    .registers 9

    const-wide v0, 0x17b8cd5ce7d4c0dL

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iput-wide p1, p0, Labcd/Ek;->v5:J

    const-string v2, "Debugger license verified"

    invoke-direct {p0, v2}, Labcd/Ek;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Debugger"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "InAppBillingSettings"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "WasDebuggerLicensedAtSomePoint"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_47

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v2
.end method

.method public j6(JZ)V
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x430817677edbf6a5L  # 8.476415898088526E14

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/Ek;->u7:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Labcd/Ek;->J0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Labcd/Dk;

    invoke-direct {v0, p0}, Labcd/Dk;-><init>(Labcd/Ek;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x430817677edbf6a5L  # 8.476415898088526E14

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public j6(Landroid/app/Activity;IILjava/lang/String;Z)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x5a45bb07d20d9901L  # 7.354949097833856E126

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    invoke-direct {p0}, Labcd/Ek;->er()V

    if-eqz p3, :cond_30

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_36

    goto :goto_32

    :cond_30
    const-string v0, ""

    :goto_32
    :try_start_32
    invoke-static {p1, p2, v0, p4, p5}, Lcom/aide/common/c;->j6(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x5a45bb07d20d9901L  # 7.354949097833856E126

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public j6(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x559870c3854c900L  # -6.526746591488646E282

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p0}, Labcd/Ek;->Zo()Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    invoke-direct {p0}, Labcd/Ek;->a8()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x559870c3854c900L  # -6.526746591488646E282

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0xf955210f2937151L  # -3.3136236848496806E233

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    invoke-direct {p0}, Labcd/Ek;->er()V

    invoke-static {p1}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-static {p1, p2, p3, p4, p5}, Lcom/aide/common/c;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V

    return-void

    :cond_40
    :goto_40
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Labcd/Ek;->j6(Landroid/app/Activity;IILjava/lang/String;Z)V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4a

    return-void

    :catchall_4a
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_6a

    const-wide v2, -0xf955210f2937151L  # -3.3136236848496806E233

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6a
    throw v0
.end method

.method public j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x27668e7ab762055L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Labcd/yk;->j6(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, 0x27668e7ab762055L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public j6()Z
    .registers 5

    const-wide v0, -0x18a3d126cc09240L

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Ek;->u7()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-direct {p0}, Labcd/Ek;->rN()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    invoke-virtual {p0}, Labcd/Ek;->Zo()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Labcd/Ek;->EQ()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Labcd/Ek;->v5()Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_30

    if-eqz v0, :cond_2e

    return v3

    :cond_2e
    const/4 v0, 0x0

    return v0

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method public j6(Landroid/app/Activity;)Z
    .registers 10

    const-wide v0, -0xcabbaaa0804178cL  # -3.543302769942443E247

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Ek;->v5()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const v4, 0x7f0d060d

    const-string v5, "debugger"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_22

    const/4 p1, 0x0

    return p1

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public j6(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ek;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xb3823421f6be779L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0610

    invoke-direct {p0, p1, v1, v0}, Labcd/Ek;->DW(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return p1

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/Ek;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, 0xb3823421f6be779L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public tp()Z
    .registers 5

    const-wide v0, -0x43082338f96be505L  # -5.2985198209253914E-15

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ek;->J0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public u7()Z
    .registers 7

    const-wide v0, 0x3203797cef359c5bL  # 9.0293959212301E-68

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ro()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    invoke-direct {p0}, Labcd/Ek;->a8()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Labcd/Ek;->u7:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2f

    cmp-long v2, v4, v0

    if-gez v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    return v3

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public v5()Z
    .registers 9

    const-wide v0, -0x3f98635baab2815cL  # -188.89506020675356

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ro()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    invoke-direct {p0}, Labcd/Ek;->rN()Z

    move-result v2

    if-eqz v2, :cond_22

    return v3

    :cond_22
    invoke-direct {p0}, Labcd/Ek;->a8()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Labcd/Ek;->u7:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_34

    return v3

    :cond_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, p0, Labcd/Ek;->v5:J
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_41

    cmp-long v2, v4, v0

    if-gez v2, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    return v3

    :catchall_41
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v2
.end method

.method public we()Z
    .registers 5

    const-wide v0, 0xd448727dad1698L

    :try_start_5
    sget-boolean v2, Labcd/Ek;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ek;->we:Labcd/Qi;

    invoke-virtual {v2}, Labcd/Oi;->FH()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Ek;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

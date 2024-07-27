.class public Lcom/google/android/gms/internal/measurement/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/m$a;,
        Lcom/google/android/gms/internal/measurement/m$c;,
        Lcom/google/android/gms/internal/measurement/m$d;,
        Lcom/google/android/gms/internal/measurement/m$e;
    }
.end annotation


# static fields
.field private static volatile j6:Lcom/google/android/gms/internal/measurement/m;


# instance fields
.field private final DW:Ljava/lang/String;

.field protected final FH:Lcom/google/android/gms/common/util/e;

.field private final Hw:Ljava/util/concurrent/ExecutorService;

.field private VH:I

.field private Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/measurement/internal/zzcy;",
            "Lcom/google/android/gms/internal/measurement/m$d;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Z

.field private tp:Lcom/google/android/gms/internal/measurement/e;

.field private u7:Ljava/lang/String;

.field private final v5:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/m;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "FA"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/util/h;->Hw()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->FH:Lcom/google/android/gms/common/util/e;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/m;->Hw:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string v1, "Unable to register lifecycle notifications. Application null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->v5:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/m;->Hw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/m;->gn()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v3

    :goto_2
    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->u7:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/m;->gn:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string v1, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/measurement/m$e;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/m$e;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/m;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "fa"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->u7:Ljava/lang/String;

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string v1, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/m;->gn:Z

    goto :goto_3

    :cond_6
    if-nez p3, :cond_8

    move v0, v3

    :goto_4
    if-nez p4, :cond_a

    :goto_5
    xor-int/2addr v0, v3

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string v1, "Specified origin or custom app id is null. Both parameters will be ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/n;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/n;-><init>(Lcom/google/android/gms/internal/measurement/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/m;->u7:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move v3, v2

    goto :goto_5
.end method

.method static synthetic DW(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/m;->Zo(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->tp:Lcom/google/android/gms/internal/measurement/e;

    return-object v0
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/m;->gn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic FH(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/m;->v5(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/measurement/m;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/measurement/m;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->Zo:Ljava/util/Map;

    return-object v0
.end method

.method private static Hw(Landroid/content/Context;)Z
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/c;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->j6()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static Zo(Landroid/content/Context;)I
    .registers 2

    const-string v0, "com.google.android.gms.measurement.dynamite"

    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static gn()Z
    .registers 1

    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/e;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m;->tp:Lcom/google/android/gms/internal/measurement/e;

    return-object p1
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/m;
    .registers 11

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/m;->j6:Lcom/google/android/gms/internal/measurement/m;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/m;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/m;->j6:Lcom/google/android/gms/internal/measurement/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/m;->j6:Lcom/google/android/gms/internal/measurement/m;

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/measurement/m;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/m;->j6:Lcom/google/android/gms/internal/measurement/m;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lcom/google/android/gms/internal/measurement/m;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/m;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m;->Zo:Ljava/util/Map;

    return-object p1
.end method

.method private final j6(Lcom/google/android/gms/internal/measurement/m$b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->Hw:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Exception;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/m;->j6(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method private final j6(Ljava/lang/Exception;ZZ)V
    .registers 10

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/m;->gn:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/m;->gn:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string v1, "Data collection startup failed. No data will be collected."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x5

    const-string v2, "Error with data collection. Data lost."

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/m;->j6(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string v1, "Error with data collection. Data lost."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .registers 15

    new-instance v0, Lcom/google/android/gms/internal/measurement/G;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/G;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/m;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/m;->gn:Z

    return v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/m;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static v5(Landroid/content/Context;)I
    .registers 2

    const-string v0, "com.google.android.gms.measurement.dynamite"

    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->DW(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->u7:Ljava/lang/String;

    return-object v0
.end method

.method public final DW(Lcom/google/android/gms/measurement/internal/zzcy;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/F;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/F;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/measurement/internal/zzcy;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/t;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/m;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final FH(Ljava/lang/String;)I
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/D;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/D;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m$a;->j6(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x19

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final FH()Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/z;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/z;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m$a;->DW(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Hw()Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/y;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/y;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m$a;->DW(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final VH()Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/w;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/w;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m$a;->DW(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Zo()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->v5:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    return-object v0
.end method

.method public final j6()J
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/x;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m$a;->j6(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m;->FH:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/m;->VH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/m;->VH:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final j6(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/C;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/C;-><init>(Lcom/google/android/gms/internal/measurement/m;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final j6(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/e;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->we:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v1, "com.google.android.gms.measurement.dynamite"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/e;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m;->j6(Ljava/lang/Exception;ZZ)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m$a;->j6(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v5, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/A;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/A;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Double;

    if-nez v5, :cond_3

    instance-of v5, v4, Ljava/lang/Long;

    if-nez v5, :cond_3

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    :cond_3
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public final j6(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 14

    new-instance v0, Lcom/google/android/gms/internal/measurement/B;

    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/B;-><init>(Lcom/google/android/gms/internal/measurement/m;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/q;-><init>(Lcom/google/android/gms/internal/measurement/m;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final j6(Landroid/os/Bundle;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/I;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/I;-><init>(Lcom/google/android/gms/internal/measurement/m;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/measurement/internal/zzcx;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/u;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/u;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/measurement/internal/zzcx;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/measurement/internal/zzcy;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/E;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/E;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/measurement/internal/zzcy;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/s;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/o;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/o;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 14

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/m;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 11

    new-instance v0, Lcom/google/android/gms/internal/measurement/H;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/H;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final j6(Z)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/r;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/r;-><init>(Lcom/google/android/gms/internal/measurement/m;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final v5()Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/v;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/v;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m$a;->DW(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

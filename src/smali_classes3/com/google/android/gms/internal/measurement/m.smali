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
            "Ljava/util/Map<",
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
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_b

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/m;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    const-string p2, "FA"

    :cond_d
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/util/h;->Hw()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/m;->FH:Lcom/google/android/gms/common/util/e;

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/m;->Hw:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    if-nez p2, :cond_38

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string v0, "Unable to register lifecycle notifications. Application null."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/measurement/m$e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$e;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    invoke-virtual {p2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_40
    new-instance p2, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/m;->v5:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/m;->Hw(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_58

    invoke-static {}, Lcom/google/android/gms/internal/measurement/m;->gn()Z

    move-result p2

    if-eqz p2, :cond_56

    goto :goto_58

    :cond_56
    const/4 p2, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    const/4 p2, 0x1

    :goto_59
    if-nez p2, :cond_68

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m;->u7:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/m;->gn:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_68
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/m;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_93

    const-string p2, "fa"

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/m;->u7:Ljava/lang/String;

    if-eqz p3, :cond_80

    if-eqz p4, :cond_80

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string p2, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/m;->gn:Z

    return-void

    :cond_80
    if-nez p3, :cond_84

    const/4 p2, 0x1

    goto :goto_85

    :cond_84
    const/4 p2, 0x0

    :goto_85
    if-nez p4, :cond_88

    const/4 v0, 0x1

    :cond_88
    xor-int/2addr p2, v0

    if-eqz p2, :cond_95

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string v0, "Specified origin or custom app id is null. Both parameters will be ignored."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :cond_93
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/m;->u7:Ljava/lang/String;

    :cond_95
    :goto_95
    new-instance p2, Lcom/google/android/gms/internal/measurement/n;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/n;-><init>(Lcom/google/android/gms/internal/measurement/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method static synthetic DW(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/m;->Zo(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/measurement/m;)Lcom/google/android/gms/internal/measurement/e;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/m;->tp:Lcom/google/android/gms/internal/measurement/e;

    return-object p0
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/measurement/m;->gn()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic FH(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/m;->v5(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/measurement/m;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/measurement/m;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/m;->Zo:Ljava/util/Map;

    return-object p0
.end method

.method private static Hw(Landroid/content/Context;)Z
    .registers 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/c;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->j6()Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_b

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :catch_b
    move-exception p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static Zo(Landroid/content/Context;)I
    .registers 2

    const-string v0, "com.google.android.gms.measurement.dynamite"

    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static gn()Z
    .registers 1

    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/e;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m;->tp:Lcom/google/android/gms/internal/measurement/e;

    return-object p1
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/m;
    .registers 12

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/m;->j6:Lcom/google/android/gms/internal/measurement/m;

    if-nez v0, :cond_24

    const-class v0, Lcom/google/android/gms/internal/measurement/m;

    monitor-enter v0

    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/measurement/m;->j6:Lcom/google/android/gms/internal/measurement/m;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/google/android/gms/internal/measurement/m;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/m;->j6:Lcom/google/android/gms/internal/measurement/m;

    :cond_1b
    const-class p0, Lcom/google/android/gms/internal/measurement/m;

    monitor-exit p0

    goto :goto_24

    :catchall_1f
    move-exception p0

    const-class p1, Lcom/google/android/gms/internal/measurement/m;

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_1f

    throw p0

    :cond_24
    :goto_24
    sget-object p0, Lcom/google/android/gms/internal/measurement/m;->j6:Lcom/google/android/gms/internal/measurement/m;

    return-object p0
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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/m;->gn:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/m;->gn:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string p3, "Data collection startup failed. No data will be collected."

    :goto_b
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_f
    if-eqz p3, :cond_1b

    const/4 v1, 0x5

    const-string v2, "Error with data collection. Data lost."

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/m;->j6(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/m;->DW:Ljava/lang/String;

    const-string p3, "Error with data collection. Data lost."

    goto :goto_b
.end method

.method private final j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .registers 15

    new-instance p4, Lcom/google/android/gms/internal/measurement/G;

    const/4 v6, 0x1

    move-object v0, p4

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/G;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/m;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/m;->gn:Z

    return p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/m;->DW(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static v5(Landroid/content/Context;)I
    .registers 2

    const-string v0, "com.google.android.gms.measurement.dynamite"

    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->DW(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
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

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/m;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final FH(Ljava/lang/String;)I
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/D;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/D;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/m$a;->j6(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_20

    const/16 p1, 0x19

    return p1

    :cond_20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final FH()Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/z;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/z;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m$a;->DW(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Hw()Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/y;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/y;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m$a;->DW(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final VH()Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/w;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/w;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m$a;->DW(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Zo()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m;->v5:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    return-object v0
.end method

.method public final j6()J
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/x;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m$a;->j6(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_3a

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/m;->FH:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/m;->VH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/m;->VH:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j6(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/C;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/C;-><init>(Lcom/google/android/gms/internal/measurement/m;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    if-eqz p2, :cond_16

    const-wide/16 p1, 0x1388

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final j6(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/e;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->we:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string v1, "com.google.android.gms.measurement.dynamite"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string v0, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/f;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/e;

    move-result-object p1
    :try_end_12
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/m$a;->j6(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_21

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_21
    return-object p1
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v7, Lcom/google/android/gms/internal/measurement/A;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/A;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_22

    goto :goto_54

    :cond_22
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_33
    :goto_33
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_4f

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_4f

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_33

    :cond_4f
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_53
    return-object p2

    :cond_54
    :goto_54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final j6(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 14

    new-instance p1, Lcom/google/android/gms/internal/measurement/B;

    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/B;-><init>(Lcom/google/android/gms/internal/measurement/m;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

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
    .registers 13

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

    new-instance p4, Lcom/google/android/gms/internal/measurement/H;

    const/4 v5, 0x1

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/H;-><init>(Lcom/google/android/gms/internal/measurement/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

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
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/v;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/v;-><init>(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/m$a;->DW(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

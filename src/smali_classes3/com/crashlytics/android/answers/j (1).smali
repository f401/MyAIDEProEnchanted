.class Lcom/crashlytics/android/answers/j;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/wz;


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Lcom/crashlytics/android/answers/k;

.field private final Hw:Lcom/crashlytics/android/answers/L;

.field final VH:Ljava/util/concurrent/ScheduledExecutorService;

.field private final Zo:Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;

.field gn:Lcom/crashlytics/android/answers/G;

.field private final j6:Lio/fabric/sdk/android/Kit;

.field private final v5:Labcd/Jz;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Landroid/content/Context;Lcom/crashlytics/android/answers/k;Lcom/crashlytics/android/answers/L;Labcd/Jz;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/crashlytics/android/answers/r;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/r;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/answers/j;->gn:Lcom/crashlytics/android/answers/G;

    iput-object p1, p0, Lcom/crashlytics/android/answers/j;->j6:Lio/fabric/sdk/android/Kit;

    iput-object p2, p0, Lcom/crashlytics/android/answers/j;->DW:Landroid/content/Context;

    iput-object p3, p0, Lcom/crashlytics/android/answers/j;->FH:Lcom/crashlytics/android/answers/k;

    iput-object p4, p0, Lcom/crashlytics/android/answers/j;->Hw:Lcom/crashlytics/android/answers/L;

    iput-object p5, p0, Lcom/crashlytics/android/answers/j;->v5:Labcd/Jz;

    iput-object p6, p0, Lcom/crashlytics/android/answers/j;->VH:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p7, p0, Lcom/crashlytics/android/answers/j;->Zo:Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;

    return-void
.end method

.method static synthetic DW(Lcom/crashlytics/android/answers/j;)Lcom/crashlytics/android/answers/k;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/answers/j;->FH:Lcom/crashlytics/android/answers/k;

    return-object p0
.end method

.method private DW(Ljava/lang/Runnable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/j;->VH:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_16

    :catch_a
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Failed to run events task"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method

.method static synthetic FH(Lcom/crashlytics/android/answers/j;)Lio/fabric/sdk/android/Kit;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/answers/j;->j6:Lio/fabric/sdk/android/Kit;

    return-object p0
.end method

.method static synthetic Hw(Lcom/crashlytics/android/answers/j;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/answers/j;->DW:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Zo(Lcom/crashlytics/android/answers/j;)Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/answers/j;->Zo:Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;

    return-object p0
.end method

.method static synthetic j6(Lcom/crashlytics/android/answers/j;)Lcom/crashlytics/android/answers/L;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/answers/j;->Hw:Lcom/crashlytics/android/answers/L;

    return-object p0
.end method

.method private j6(Ljava/lang/Runnable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/j;->VH:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_12

    :catch_6
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Failed to submit events task"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method

.method static synthetic v5(Lcom/crashlytics/android/answers/j;)Labcd/Jz;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/answers/j;->v5:Labcd/Jz;

    return-object p0
.end method


# virtual methods
.method public DW()V
    .registers 2

    new-instance v0, Lcom/crashlytics/android/answers/g;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/g;-><init>(Lcom/crashlytics/android/answers/j;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/j;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public DW(Lcom/crashlytics/android/answers/I$a;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/answers/j;->j6(Lcom/crashlytics/android/answers/I$a;ZZ)V

    return-void
.end method

.method public FH()V
    .registers 2

    new-instance v0, Lcom/crashlytics/android/answers/h;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/h;-><init>(Lcom/crashlytics/android/answers/j;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/j;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public FH(Lcom/crashlytics/android/answers/I$a;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/answers/j;->j6(Lcom/crashlytics/android/answers/I$a;ZZ)V

    return-void
.end method

.method public j6()V
    .registers 2

    new-instance v0, Lcom/crashlytics/android/answers/e;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/e;-><init>(Lcom/crashlytics/android/answers/j;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/j;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j6(Labcd/Tz;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/crashlytics/android/answers/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/answers/d;-><init>(Lcom/crashlytics/android/answers/j;Labcd/Tz;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/j;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j6(Lcom/crashlytics/android/answers/I$a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/crashlytics/android/answers/j;->j6(Lcom/crashlytics/android/answers/I$a;ZZ)V

    return-void
.end method

.method j6(Lcom/crashlytics/android/answers/I$a;ZZ)V
    .registers 5

    new-instance v0, Lcom/crashlytics/android/answers/i;

    invoke-direct {v0, p0, p1, p3}, Lcom/crashlytics/android/answers/i;-><init>(Lcom/crashlytics/android/answers/j;Lcom/crashlytics/android/answers/I$a;Z)V

    if-eqz p2, :cond_b

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/j;->DW(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_b
    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/j;->j6(Ljava/lang/Runnable;)V

    :goto_e
    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    new-instance p1, Lcom/crashlytics/android/answers/f;

    invoke-direct {p1, p0}, Lcom/crashlytics/android/answers/f;-><init>(Lcom/crashlytics/android/answers/j;)V

    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/j;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

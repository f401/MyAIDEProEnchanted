.class public Lcom/crashlytics/android/core/ca;
.super Lio/fabric/sdk/android/Kit;


# annotations
.annotation runtime Labcd/bz;
    value = {
        Lcom/crashlytics/android/core/ga;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/ca$a;,
        Lcom/crashlytics/android/core/ca$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private EQ:Z

.field private FH:Lcom/crashlytics/android/core/da;

.field private Hw:Lcom/crashlytics/android/core/da;

.field private J0:Labcd/Jz;

.field private J8:Lcom/crashlytics/android/core/r;

.field private VH:Ljava/lang/String;

.field private Ws:Lcom/crashlytics/android/core/ga;

.field private Zo:Lcom/crashlytics/android/core/W;

.field private gn:Ljava/lang/String;

.field private final j6:J

.field private tp:F

.field private u7:Ljava/lang/String;

.field private v5:Lcom/crashlytics/android/core/ea;

.field private final we:Lcom/crashlytics/android/core/Da;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/crashlytics/android/core/ca;-><init>(FLcom/crashlytics/android/core/ea;Lcom/crashlytics/android/core/Da;Z)V

    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/core/ea;Lcom/crashlytics/android/core/Da;Z)V
    .registers 11

    const-string v0, "Crashlytics Exception Handler"

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/r;->j6(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/core/ca;-><init>(FLcom/crashlytics/android/core/ea;Lcom/crashlytics/android/core/Da;ZLjava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/core/ea;Lcom/crashlytics/android/core/Da;ZLjava/util/concurrent/ExecutorService;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->VH:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->gn:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->u7:Ljava/lang/String;

    iput p1, p0, Lcom/crashlytics/android/core/ca;->tp:F

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/crashlytics/android/core/ca;->v5:Lcom/crashlytics/android/core/ea;

    iput-object p3, p0, Lcom/crashlytics/android/core/ca;->we:Lcom/crashlytics/android/core/Da;

    iput-boolean p4, p0, Lcom/crashlytics/android/core/ca;->EQ:Z

    new-instance v0, Lcom/crashlytics/android/core/r;

    invoke-direct {v0, p5}, Lcom/crashlytics/android/core/r;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->J8:Lcom/crashlytics/android/core/r;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/core/ca;->j6:J

    return-void

    :cond_0
    new-instance p2, Lcom/crashlytics/android/core/ca$b;

    invoke-direct {p2, v0}, Lcom/crashlytics/android/core/ca$b;-><init>(Lcom/crashlytics/android/core/Z;)V

    goto :goto_0
.end method

.method private static DW(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->j6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v1, 0x400

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private a8()V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->J8:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/ca$a;

    iget-object v2, p0, Lcom/crashlytics/android/core/ca;->Hw:Lcom/crashlytics/android/core/da;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/ca$a;-><init>(Lcom/crashlytics/android/core/da;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->DW(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->v5:Lcom/crashlytics/android/core/ea;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ea;->j6()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/crashlytics/android/core/ca;
    .registers 1

    const-class v0, Lcom/crashlytics/android/core/ca;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/ca;

    return-object v0
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/ca;)Lcom/crashlytics/android/core/da;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->FH:Lcom/crashlytics/android/core/da;

    return-object v0
.end method

.method private j6(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-boolean v0, p0, Lcom/crashlytics/android/core/ca;->EQ:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "prior to logging messages."

    invoke-static {v0}, Lcom/crashlytics/android/core/ca;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/crashlytics/android/core/ca;->j6:J

    iget-object v4, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    sub-long/2addr v0, v2

    invoke-static {p1, p2, p3}, Lcom/crashlytics/android/core/ca;->DW(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v1, v2}, Lcom/crashlytics/android/core/W;->j6(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Lcom/crashlytics/android/core/ca;->getInstance()Lcom/crashlytics/android/core/ca;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CrashlyticsCore"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static j6(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Configured not to require a build ID."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->DW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  | "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".   \\ |  | /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".    \\    /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".     \\  /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".      \\/"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".      /\\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".     /  \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".    /    \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".   / |  | \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private lg()V
    .registers 5

    new-instance v1, Lcom/crashlytics/android/core/Z;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/Z;-><init>(Lcom/crashlytics/android/core/ca;)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/lz;

    invoke-virtual {v1, v0}, Labcd/jz;->j6(Labcd/lz;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getFabric()Lio/fabric/sdk/android/Fabric;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/Fabric;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method J8()Lcom/crashlytics/android/core/fa;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->Ws:Lcom/crashlytics/android/core/ga;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/crashlytics/android/core/ga;->j6()Lcom/crashlytics/android/core/fa;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method Mr()V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->J8:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/ba;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/ba;-><init>(Lcom/crashlytics/android/core/ca;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->j6(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method U2()V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->J8:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/aa;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/aa;-><init>(Lcom/crashlytics/android/core/ca;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->DW(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method VH()Z
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->FH:Lcom/crashlytics/android/core/da;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/da;->DW()Z

    move-result v0

    return v0
.end method

.method Ws()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdManager()Lio/fabric/sdk/android/services/common/v;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->gn:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method Zo()V
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->Hw:Lcom/crashlytics/android/core/da;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/da;->j6()Z

    return-void
.end method

.method aM()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdManager()Lio/fabric/sdk/android/services/common/v;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->VH:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public crash()V
    .registers 2

    new-instance v0, Lcom/crashlytics/android/core/o;

    invoke-direct {v0}, Lcom/crashlytics/android/core/o;-><init>()V

    invoke-virtual {v0}, Lcom/crashlytics/android/core/o;->j6()V

    return-void
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->U2()V

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/W;->DW()V

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/W;->we()V

    invoke-static {}, Labcd/jA;->DW()Labcd/jA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/jA;->j6()Labcd/mA;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Received null settings, skipping report submission!"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->Mr()V

    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/W;->j6(Labcd/mA;)V

    iget-object v1, v0, Labcd/mA;->Hw:Labcd/eA;

    iget-boolean v1, v1, Labcd/eA;->FH:Z

    if-nez v1, :cond_1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Collection of crash reports disabled in Crashlytics settings."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->Mr()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Automatic collection of crash reports disabled by Firebase settings."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->Mr()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->J8()Lcom/crashlytics/android/core/fa;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    invoke-virtual {v2, v1}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/fa;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Could not finalize previous NDK sessions."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    iget-object v2, v0, Labcd/mA;->DW:Labcd/hA;

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/W;->DW(Labcd/hA;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Could not finalize previous sessions."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    iget v2, p0, Lcom/crashlytics/android/core/ca;->tp:F

    invoke-virtual {v1, v2, v0}, Lcom/crashlytics/android/core/W;->j6(FLabcd/mA;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->Mr()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->Mr()V

    throw v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method public getPinningInfoProvider()Lcom/crashlytics/android/core/Da;
    .registers 2

    iget-boolean v0, p0, Lcom/crashlytics/android/core/ca;->EQ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->we:Lcom/crashlytics/android/core/Da;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "2.7.0.33"

    return-object v0
.end method

.method j3()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdManager()Lio/fabric/sdk/android/services/common/v;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->u7:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j6(Landroid/content/Context;)Z
    .registers 16

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Crashlytics is disabled, because data collection is disabled by Firebase."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v12, p0, Lcom/crashlytics/android/core/ca;->EQ:Z

    :cond_0
    iget-boolean v0, p0, Lcom/crashlytics/android/core/ca;->EQ:Z

    if-eqz v0, :cond_1

    move v0, v11

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lio/fabric/sdk/android/services/common/f;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/f;-><init>()V

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/common/f;->Hw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v0, v11

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/i;->J8(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.crashlytics.RequireBuildId"

    invoke-static {p1, v0, v12}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/crashlytics/android/core/ca;->j6(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing Crashlytics Core "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CrashlyticsCore"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lio/fabric/sdk/android/m;->v5(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Labcd/Pz;

    invoke-direct {v6, p0}, Labcd/Pz;-><init>(Lio/fabric/sdk/android/Kit;)V

    new-instance v0, Lcom/crashlytics/android/core/da;

    const-string v3, "crash_marker"

    invoke-direct {v0, v3, v6}, Lcom/crashlytics/android/core/da;-><init>(Ljava/lang/String;Labcd/Oz;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->Hw:Lcom/crashlytics/android/core/da;

    new-instance v0, Lcom/crashlytics/android/core/da;

    const-string v3, "initialization_marker"

    invoke-direct {v0, v3, v6}, Lcom/crashlytics/android/core/da;-><init>(Ljava/lang/String;Labcd/Oz;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->FH:Lcom/crashlytics/android/core/da;

    new-instance v0, Labcd/Rz;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.crashlytics.android.core.CrashlyticsCore"

    invoke-direct {v0, v3, v4}, Labcd/Rz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/Ea;->j6(Labcd/Qz;Lcom/crashlytics/android/core/ca;)Lcom/crashlytics/android/core/Ea;

    move-result-object v5

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->we:Lcom/crashlytics/android/core/Da;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/crashlytics/android/core/ha;

    iget-object v3, p0, Lcom/crashlytics/android/core/ca;->we:Lcom/crashlytics/android/core/Da;

    invoke-direct {v0, v3}, Lcom/crashlytics/android/core/ha;-><init>(Lcom/crashlytics/android/core/Da;)V

    :goto_1
    new-instance v3, Labcd/Ez;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    invoke-direct {v3, v4}, Labcd/Ez;-><init>(Lio/fabric/sdk/android/m;)V

    iput-object v3, p0, Lcom/crashlytics/android/core/ca;->J0:Labcd/Jz;

    iget-object v3, p0, Lcom/crashlytics/android/core/ca;->J0:Labcd/Jz;

    invoke-interface {v3, v0}, Labcd/Jz;->j6(Labcd/Lz;)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdManager()Lio/fabric/sdk/android/services/common/v;

    move-result-object v4

    invoke-static {p1, v4, v1, v2}, Lcom/crashlytics/android/core/a;->j6(Landroid/content/Context;Lio/fabric/sdk/android/services/common/v;Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/a;

    move-result-object v7

    new-instance v8, Lcom/crashlytics/android/core/Ma;

    new-instance v0, Lcom/crashlytics/android/core/va;

    iget-object v1, v7, Lcom/crashlytics/android/core/a;->Hw:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/crashlytics/android/core/va;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v8, p1, v0}, Lcom/crashlytics/android/core/Ma;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/Sa;)V

    new-instance v9, Lcom/crashlytics/android/core/ma;

    invoke-direct {v9, p0}, Lcom/crashlytics/android/core/ma;-><init>(Lcom/crashlytics/android/core/ca;)V

    invoke-static {p1}, Lcom/crashlytics/android/answers/o;->j6(Landroid/content/Context;)Lcom/crashlytics/android/answers/u;

    move-result-object v10

    new-instance v0, Lcom/crashlytics/android/core/W;

    iget-object v2, p0, Lcom/crashlytics/android/core/ca;->J8:Lcom/crashlytics/android/core/r;

    iget-object v3, p0, Lcom/crashlytics/android/core/ca;->J0:Labcd/Jz;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/core/W;-><init>(Lcom/crashlytics/android/core/ca;Lcom/crashlytics/android/core/r;Labcd/Jz;Lio/fabric/sdk/android/services/common/v;Lcom/crashlytics/android/core/Ea;Labcd/Oz;Lcom/crashlytics/android/core/a;Lcom/crashlytics/android/core/Sa;Lcom/crashlytics/android/core/b;Lcom/crashlytics/android/answers/u;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->VH()Z

    move-result v0

    invoke-direct {p0}, Lcom/crashlytics/android/core/ca;->a8()V

    new-instance v1, Lio/fabric/sdk/android/services/common/u;

    invoke-direct {v1}, Lio/fabric/sdk/android/services/common/u;-><init>()V

    invoke-virtual {v1, p1}, Lio/fabric/sdk/android/services/common/u;->v5(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    if-eqz v0, :cond_4

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/i;->DW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/crashlytics/android/core/ca;->lg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    goto/16 :goto_0

    :cond_3
    move-object v0, v13

    goto :goto_1

    :cond_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Exception handling initialization successful"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v13, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    move v0, v11

    goto/16 :goto_0

    :cond_5
    new-instance v0, Labcd/mz;

    const-string v1, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-direct {v0, v1}, Labcd/mz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j6(Ljava/net/URL;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca;->getPinningInfoProvider()Lcom/crashlytics/android/core/Da;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->J0:Labcd/Jz;

    sget-object v2, Labcd/Fz;->j6:Labcd/Fz;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Labcd/Jz;->j6(Labcd/Fz;Ljava/lang/String;)Labcd/Hz;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v2}, Labcd/Hz;->VH()I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/ca;->j6(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, p1, v1, v2, v3}, Lio/fabric/sdk/android/m;->j6(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "CrashlyticsCore"

    invoke-direct {p0, v0, v1, p1}, Lcom/crashlytics/android/core/ca;->j6(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logException(Ljava/lang/Throwable;)V
    .registers 6

    iget-boolean v0, p0, Lcom/crashlytics/android/core/ca;->EQ:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "prior to logging exceptions."

    invoke-static {v0}, Lcom/crashlytics/android/core/ca;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics is ignoring a request to log a null exception."

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/m;->j6(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPreExecute()Z
    .registers 2

    invoke-super {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/ca;->j6(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setBool(Ljava/lang/String;Z)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/ca;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/ca;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/ca;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/ca;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/crashlytics/android/core/ea;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Use of setListener is deprecated."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/crashlytics/android/core/ca;->v5:Lcom/crashlytics/android/core/ea;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLong(Ljava/lang/String;J)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/ca;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/crashlytics/android/core/ca;->EQ:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "prior to setting keys."

    invoke-static {v0}, Lcom/crashlytics/android/core/ca;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->tp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Attempting to set custom attribute with null key, ignoring."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom attribute key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p1}, Lcom/crashlytics/android/core/ca;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_5

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Exceeded maximum number of custom attributes (64)"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    const-string v0, ""

    :goto_1
    iget-object v2, p0, Lcom/crashlytics/android/core/ca;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    iget-object v1, p0, Lcom/crashlytics/android/core/ca;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/util/Map;)V

    goto :goto_0

    :cond_6
    invoke-static {p2}, Lcom/crashlytics/android/core/ca;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/crashlytics/android/core/ca;->EQ:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "prior to setting user data."

    invoke-static {v0}, Lcom/crashlytics/android/core/ca;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/crashlytics/android/core/ca;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->gn:Ljava/lang/String;

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    iget-object v1, p0, Lcom/crashlytics/android/core/ca;->VH:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/core/ca;->u7:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/ca;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/crashlytics/android/core/ca;->EQ:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "prior to setting user data."

    invoke-static {v0}, Lcom/crashlytics/android/core/ca;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/crashlytics/android/core/ca;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->VH:Ljava/lang/String;

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    iget-object v1, p0, Lcom/crashlytics/android/core/ca;->VH:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/core/ca;->u7:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/ca;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/crashlytics/android/core/ca;->EQ:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "prior to setting user data."

    invoke-static {v0}, Lcom/crashlytics/android/core/ca;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/crashlytics/android/core/ca;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/ca;->u7:Ljava/lang/String;

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->Zo:Lcom/crashlytics/android/core/W;

    iget-object v1, p0, Lcom/crashlytics/android/core/ca;->VH:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/core/ca;->u7:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/ca;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verifyPinning(Ljava/net/URL;)Z
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/ca;->j6(Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Could not verify SSL pinning"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method we()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.class Lcom/crashlytics/android/answers/F;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/answers/q$a;


# instance fields
.field final DW:Lcom/crashlytics/android/answers/j;

.field final FH:Lio/fabric/sdk/android/ActivityLifecycleManager;

.field final Hw:Lcom/crashlytics/android/answers/q;

.field private final j6:J

.field final v5:Lcom/crashlytics/android/answers/m;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/j;Lio/fabric/sdk/android/ActivityLifecycleManager;Lcom/crashlytics/android/answers/q;Lcom/crashlytics/android/answers/m;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/F;->DW:Lcom/crashlytics/android/answers/j;

    iput-object p2, p0, Lcom/crashlytics/android/answers/F;->FH:Lio/fabric/sdk/android/ActivityLifecycleManager;

    iput-object p3, p0, Lcom/crashlytics/android/answers/F;->Hw:Lcom/crashlytics/android/answers/q;

    iput-object p4, p0, Lcom/crashlytics/android/answers/F;->v5:Lcom/crashlytics/android/answers/m;

    iput-wide p5, p0, Lcom/crashlytics/android/answers/F;->j6:J

    return-void
.end method

.method public static j6(Lio/fabric/sdk/android/Kit;Landroid/content/Context;Lio/fabric/sdk/android/services/common/v;Ljava/lang/String;Ljava/lang/String;J)Lcom/crashlytics/android/answers/F;
    .registers 21

    move-object v8, p1

    new-instance v4, Lcom/crashlytics/android/answers/L;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v4, p1, v0, v1, v2}, Lcom/crashlytics/android/answers/L;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/common/v;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/crashlytics/android/answers/k;

    new-instance v0, Labcd/Pz;

    move-object v1, p0

    invoke-direct {v0, p0}, Labcd/Pz;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-direct {v3, p1, v0}, Lcom/crashlytics/android/answers/k;-><init>(Landroid/content/Context;Labcd/Oz;)V

    new-instance v5, Labcd/Ez;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    invoke-direct {v5, v0}, Labcd/Ez;-><init>(Lio/fabric/sdk/android/m;)V

    new-instance v9, Lio/fabric/sdk/android/ActivityLifecycleManager;

    invoke-direct {v9, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager;-><init>(Landroid/content/Context;)V

    const-string v0, "Answers Events Handler"

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/r;->DW(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    new-instance v10, Lcom/crashlytics/android/answers/q;

    invoke-direct {v10, v6}, Lcom/crashlytics/android/answers/q;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    new-instance v13, Lcom/crashlytics/android/answers/F;

    new-instance v11, Lcom/crashlytics/android/answers/j;

    new-instance v7, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;

    invoke-direct {v7, p1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, v11

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/crashlytics/android/answers/j;-><init>(Lio/fabric/sdk/android/Kit;Landroid/content/Context;Lcom/crashlytics/android/answers/k;Lcom/crashlytics/android/answers/L;Labcd/Jz;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;)V

    invoke-static {p1}, Lcom/crashlytics/android/answers/m;->j6(Landroid/content/Context;)Lcom/crashlytics/android/answers/m;

    move-result-object v0

    move-object v6, v13

    move-object v7, v11

    move-object v8, v9

    move-object v9, v10

    move-object v10, v0

    move-wide/from16 v11, p5

    invoke-direct/range {v6 .. v12}, Lcom/crashlytics/android/answers/F;-><init>(Lcom/crashlytics/android/answers/j;Lio/fabric/sdk/android/ActivityLifecycleManager;Lcom/crashlytics/android/answers/q;Lcom/crashlytics/android/answers/m;J)V

    return-object v13
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->FH:Lio/fabric/sdk/android/ActivityLifecycleManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/ActivityLifecycleManager;->j6()V

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->DW:Lcom/crashlytics/android/answers/j;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/j;->j6()V

    return-void
.end method

.method public FH()V
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->DW:Lcom/crashlytics/android/answers/j;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/j;->DW()V

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->FH:Lio/fabric/sdk/android/ActivityLifecycleManager;

    new-instance v1, Lcom/crashlytics/android/answers/l;

    iget-object v2, p0, Lcom/crashlytics/android/answers/F;->Hw:Lcom/crashlytics/android/answers/q;

    invoke-direct {v1, p0, v2}, Lcom/crashlytics/android/answers/l;-><init>(Lcom/crashlytics/android/answers/F;Lcom/crashlytics/android/answers/q;)V

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/ActivityLifecycleManager;->j6(Lio/fabric/sdk/android/ActivityLifecycleManager$b;)Z

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->Hw:Lcom/crashlytics/android/answers/q;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/answers/q;->j6(Lcom/crashlytics/android/answers/q$a;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/F;->Hw()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-wide v0, p0, Lcom/crashlytics/android/answers/F;->j6:J

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/answers/F;->j6(J)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->v5:Lcom/crashlytics/android/answers/m;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/m;->DW()V

    :cond_26
    return-void
.end method

.method Hw()Z
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->v5:Lcom/crashlytics/android/answers/m;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/m;->j6()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j6()V
    .registers 4

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Flush events when app is backgrounded"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->DW:Lcom/crashlytics/android/answers/j;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/j;->FH()V

    return-void
.end method

.method public j6(J)V
    .registers 6

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged install"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->DW:Lcom/crashlytics/android/answers/j;

    invoke-static {p1, p2}, Lcom/crashlytics/android/answers/I;->j6(J)Lcom/crashlytics/android/answers/I$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/j;->DW(Lcom/crashlytics/android/answers/I$a;)V

    return-void
.end method

.method public j6(Labcd/Tz;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->Hw:Lcom/crashlytics/android/answers/q;

    iget-boolean v1, p1, Labcd/Tz;->tp:Z

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/q;->j6(Z)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->DW:Lcom/crashlytics/android/answers/j;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/answers/j;->j6(Labcd/Tz;Ljava/lang/String;)V

    return-void
.end method

.method public j6(Landroid/app/Activity;Lcom/crashlytics/android/answers/I$b;)V
    .registers 6

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logged lifecycle event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Answers"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->DW:Lcom/crashlytics/android/answers/j;

    invoke-static {p2, p1}, Lcom/crashlytics/android/answers/I;->j6(Lcom/crashlytics/android/answers/I$b;Landroid/app/Activity;)Lcom/crashlytics/android/answers/I$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/j;->j6(Lcom/crashlytics/android/answers/I$a;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1f

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Logged crash"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/F;->DW:Lcom/crashlytics/android/answers/j;

    invoke-static {p1, p2}, Lcom/crashlytics/android/answers/I;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/I$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/j;->FH(Lcom/crashlytics/android/answers/I$a;)V

    return-void

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onCrash called from main thread!!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

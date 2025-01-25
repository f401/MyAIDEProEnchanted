.class Lcom/crashlytics/android/core/ia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/ia$a;,
        Lcom/crashlytics/android/core/ia$b;
    }
.end annotation


# instance fields
.field private final DW:Lcom/crashlytics/android/core/ia$b;

.field private final FH:Z

.field private final Hw:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final j6:Lcom/crashlytics/android/core/ia$a;

.field private final v5:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/ia$a;Lcom/crashlytics/android/core/ia$b;ZLjava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/ia;->j6:Lcom/crashlytics/android/core/ia$a;

    iput-object p2, p0, Lcom/crashlytics/android/core/ia;->DW:Lcom/crashlytics/android/core/ia$b;

    iput-boolean p3, p0, Lcom/crashlytics/android/core/ia;->FH:Z

    iput-object p4, p0, Lcom/crashlytics/android/core/ia;->Hw:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/crashlytics/android/core/ia;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method j6()Z
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/ia;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 9

    const-string v0, "Crashlytics completed exception processing. Invoking default exception handler."

    const-string v1, "CrashlyticsCore"

    iget-object v2, p0, Lcom/crashlytics/android/core/ia;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x0

    :try_start_b
    iget-object v3, p0, Lcom/crashlytics/android/core/ia;->j6:Lcom/crashlytics/android/core/ia$a;

    iget-object v4, p0, Lcom/crashlytics/android/core/ia;->DW:Lcom/crashlytics/android/core/ia$b;

    iget-boolean v5, p0, Lcom/crashlytics/android/core/ia;->FH:Z

    invoke-interface {v3, v4, p1, p2, v5}, Lcom/crashlytics/android/core/ia$a;->j6(Lcom/crashlytics/android/core/ia$b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_17
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    goto :goto_21

    :catchall_15
    move-exception v3

    goto :goto_33

    :catch_17
    move-exception v3

    :try_start_18
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    const-string v5, "An error occurred in the uncaught exception handler"

    invoke-interface {v4, v1, v5, v3}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_15

    :goto_21
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/ia;->Hw:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/crashlytics/android/core/ia;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_33
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/ia;->Hw:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/crashlytics/android/core/ia;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v3
.end method

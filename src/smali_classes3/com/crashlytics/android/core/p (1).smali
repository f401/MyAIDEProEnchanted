.class Lcom/crashlytics/android/core/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/r;->j6(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Lcom/crashlytics/android/core/r;

.field final j6:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/r;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/crashlytics/android/core/p;->DW:Lcom/crashlytics/android/core/r;

    iput-object p2, p0, Lcom/crashlytics/android/core/p;->j6:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/p;->j6:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Failed to execute task."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method

.class Lcom/crashlytics/android/core/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->DW(Labcd/hA;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Lcom/crashlytics/android/core/W;

.field final j6:Labcd/hA;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Labcd/hA;)V
    .registers 3

    iput-object p1, p0, Lcom/crashlytics/android/core/v;->DW:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/v;->j6:Labcd/hA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/v;->DW:Lcom/crashlytics/android/core/W;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/W;->VH()Z

    move-result v0

    const-string v1, "CrashlyticsCore"

    if-eqz v0, :cond_16

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "Skipping session finalization because a crash has already occurred."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_16
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "Finalizing previously open sessions."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/v;->DW:Lcom/crashlytics/android/core/W;

    iget-object v2, p0, Lcom/crashlytics/android/core/v;->j6:Labcd/hA;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/W;Labcd/hA;Z)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "Closed all previously open sessions"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/v;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

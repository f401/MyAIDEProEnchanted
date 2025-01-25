.class Lcom/crashlytics/android/core/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/ca;->Mr()V
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
.field final j6:Lcom/crashlytics/android/core/ca;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ca;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/ba;->j6:Lcom/crashlytics/android/core/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 6

    const-string v0, "CrashlyticsCore"

    :try_start_2
    iget-object v1, p0, Lcom/crashlytics/android/core/ba;->j6:Lcom/crashlytics/android/core/ca;

    invoke-static {v1}, Lcom/crashlytics/android/core/ca;->j6(Lcom/crashlytics/android/core/ca;)Lcom/crashlytics/android/core/da;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/core/da;->FH()Z

    move-result v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialization marker file removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_29

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_29
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Problem encountered deleting Crashlytics initialization marker."

    invoke-interface {v2, v0, v3, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ba;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

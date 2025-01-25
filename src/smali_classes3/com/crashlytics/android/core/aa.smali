.class Lcom/crashlytics/android/core/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/ca;->U2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/ca;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ca;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/aa;->j6:Lcom/crashlytics/android/core/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/aa;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/core/aa;->j6:Lcom/crashlytics/android/core/ca;

    invoke-static {v0}, Lcom/crashlytics/android/core/ca;->j6(Lcom/crashlytics/android/core/ca;)Lcom/crashlytics/android/core/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/da;->j6()Z

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Initialization marker file created."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

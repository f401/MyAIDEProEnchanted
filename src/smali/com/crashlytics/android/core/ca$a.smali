.class final Lcom/crashlytics/android/core/ca$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/crashlytics/android/core/da;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/da;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/ca$a;->j6:Lcom/crashlytics/android/core/da;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/core/ca$a;->j6:Lcom/crashlytics/android/core/da;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/da;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Found previous crash marker."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/ca$a;->j6:Lcom/crashlytics/android/core/da;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/da;->FH()Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/ca$a;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

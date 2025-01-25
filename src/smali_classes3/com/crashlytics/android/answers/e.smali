.class Lcom/crashlytics/android/answers/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/j;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/answers/j;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/j;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/answers/e;->j6:Lcom/crashlytics/android/answers/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/e;->j6:Lcom/crashlytics/android/answers/j;

    iget-object v0, v0, Lcom/crashlytics/android/answers/j;->gn:Lcom/crashlytics/android/answers/G;

    iget-object v1, p0, Lcom/crashlytics/android/answers/e;->j6:Lcom/crashlytics/android/answers/j;

    new-instance v2, Lcom/crashlytics/android/answers/r;

    invoke-direct {v2}, Lcom/crashlytics/android/answers/r;-><init>()V

    iput-object v2, v1, Lcom/crashlytics/android/answers/j;->gn:Lcom/crashlytics/android/answers/G;

    invoke-interface {v0}, Lcom/crashlytics/android/answers/G;->Hw()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1d

    :catch_11
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to disable events"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1d
    return-void
.end method

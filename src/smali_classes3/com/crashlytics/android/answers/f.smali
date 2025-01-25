.class Lcom/crashlytics/android/answers/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/j;->j6(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/crashlytics/android/answers/f;->j6:Lcom/crashlytics/android/answers/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/f;->j6:Lcom/crashlytics/android/answers/j;

    iget-object v0, v0, Lcom/crashlytics/android/answers/j;->gn:Lcom/crashlytics/android/answers/G;

    invoke-interface {v0}, Lcom/crashlytics/android/answers/G;->FH()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_14

    :catch_8
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to send events files"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method

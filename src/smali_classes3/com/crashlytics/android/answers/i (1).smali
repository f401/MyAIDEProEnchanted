.class Lcom/crashlytics/android/answers/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/j;->j6(Lcom/crashlytics/android/answers/I$a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Z

.field final FH:Lcom/crashlytics/android/answers/j;

.field final j6:Lcom/crashlytics/android/answers/I$a;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/j;Lcom/crashlytics/android/answers/I$a;Z)V
    .registers 4

    iput-object p1, p0, Lcom/crashlytics/android/answers/i;->FH:Lcom/crashlytics/android/answers/j;

    iput-object p2, p0, Lcom/crashlytics/android/answers/i;->j6:Lcom/crashlytics/android/answers/I$a;

    iput-boolean p3, p0, Lcom/crashlytics/android/answers/i;->DW:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/i;->FH:Lcom/crashlytics/android/answers/j;

    iget-object v0, v0, Lcom/crashlytics/android/answers/j;->gn:Lcom/crashlytics/android/answers/G;

    iget-object v1, p0, Lcom/crashlytics/android/answers/i;->j6:Lcom/crashlytics/android/answers/I$a;

    invoke-interface {v0, v1}, Lcom/crashlytics/android/answers/G;->j6(Lcom/crashlytics/android/answers/I$a;)V

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/i;->DW:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/crashlytics/android/answers/i;->FH:Lcom/crashlytics/android/answers/j;

    iget-object v0, v0, Lcom/crashlytics/android/answers/j;->gn:Lcom/crashlytics/android/answers/G;

    invoke-interface {v0}, Labcd/xz;->j6()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_21

    :catch_15
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to process event"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    return-void
.end method

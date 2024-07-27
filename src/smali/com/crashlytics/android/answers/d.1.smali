.class Lcom/crashlytics/android/answers/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/j;->j6(Labcd/Tz;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:Lcom/crashlytics/android/answers/j;

.field final j6:Labcd/Tz;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/j;Labcd/Tz;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/crashlytics/android/answers/d;->FH:Lcom/crashlytics/android/answers/j;

    iput-object p2, p0, Lcom/crashlytics/android/answers/d;->j6:Labcd/Tz;

    iput-object p3, p0, Lcom/crashlytics/android/answers/d;->DW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/d;->FH:Lcom/crashlytics/android/answers/j;

    iget-object v0, v0, Lcom/crashlytics/android/answers/j;->gn:Lcom/crashlytics/android/answers/G;

    iget-object v1, p0, Lcom/crashlytics/android/answers/d;->j6:Labcd/Tz;

    iget-object v2, p0, Lcom/crashlytics/android/answers/d;->DW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/answers/G;->j6(Labcd/Tz;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to set analytics settings data"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

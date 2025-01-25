.class Lcom/crashlytics/android/answers/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/j;->DW()V
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

    iput-object p1, p0, Lcom/crashlytics/android/answers/g;->j6:Lcom/crashlytics/android/answers/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/g;->j6:Lcom/crashlytics/android/answers/j;

    invoke-static {v0}, Lcom/crashlytics/android/answers/j;->j6(Lcom/crashlytics/android/answers/j;)Lcom/crashlytics/android/answers/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/L;->j6()Lcom/crashlytics/android/answers/J;

    move-result-object v7

    iget-object v0, p0, Lcom/crashlytics/android/answers/g;->j6:Lcom/crashlytics/android/answers/j;

    invoke-static {v0}, Lcom/crashlytics/android/answers/j;->DW(Lcom/crashlytics/android/answers/j;)Lcom/crashlytics/android/answers/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/k;->j6()Lcom/crashlytics/android/answers/D;

    move-result-object v5

    iget-object v0, p0, Lcom/crashlytics/android/answers/g;->j6:Lcom/crashlytics/android/answers/j;

    invoke-virtual {v5, v0}, Labcd/uz;->j6(Labcd/wz;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/g;->j6:Lcom/crashlytics/android/answers/j;

    new-instance v9, Lcom/crashlytics/android/answers/s;

    invoke-static {v0}, Lcom/crashlytics/android/answers/j;->FH(Lcom/crashlytics/android/answers/j;)Lio/fabric/sdk/android/Kit;

    move-result-object v2

    iget-object v1, p0, Lcom/crashlytics/android/answers/g;->j6:Lcom/crashlytics/android/answers/j;

    invoke-static {v1}, Lcom/crashlytics/android/answers/j;->Hw(Lcom/crashlytics/android/answers/j;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/crashlytics/android/answers/g;->j6:Lcom/crashlytics/android/answers/j;

    iget-object v4, v1, Lcom/crashlytics/android/answers/j;->VH:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/crashlytics/android/answers/g;->j6:Lcom/crashlytics/android/answers/j;

    invoke-static {v1}, Lcom/crashlytics/android/answers/j;->v5(Lcom/crashlytics/android/answers/j;)Labcd/Jz;

    move-result-object v6

    iget-object v1, p0, Lcom/crashlytics/android/answers/g;->j6:Lcom/crashlytics/android/answers/j;

    invoke-static {v1}, Lcom/crashlytics/android/answers/j;->Zo(Lcom/crashlytics/android/answers/j;)Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/crashlytics/android/answers/s;-><init>(Lio/fabric/sdk/android/Kit;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/D;Labcd/Jz;Lcom/crashlytics/android/answers/J;Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;)V

    iput-object v9, v0, Lcom/crashlytics/android/answers/j;->gn:Lcom/crashlytics/android/answers/G;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_4a

    :catch_3e
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to enable events"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4a
    return-void
.end method

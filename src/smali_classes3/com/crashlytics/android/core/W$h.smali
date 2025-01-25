.class final Lcom/crashlytics/android/core/W$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/La$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final DW:Lcom/crashlytics/android/core/Ea;

.field private final FH:Labcd/gA;

.field private final j6:Lio/fabric/sdk/android/Kit;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Lcom/crashlytics/android/core/Ea;Labcd/gA;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/W$h;->j6:Lio/fabric/sdk/android/Kit;

    iput-object p2, p0, Lcom/crashlytics/android/core/W$h;->DW:Lcom/crashlytics/android/core/Ea;

    iput-object p3, p0, Lcom/crashlytics/android/core/W$h;->FH:Labcd/gA;

    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W$h;)Lcom/crashlytics/android/core/Ea;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/core/W$h;->DW:Lcom/crashlytics/android/core/Ea;

    return-object p0
.end method


# virtual methods
.method public j6()Z
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/W$h;->j6:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getFabric()Lio/fabric/sdk/android/Fabric;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/Fabric;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_39

    :cond_13
    new-instance v1, Lcom/crashlytics/android/core/X;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/X;-><init>(Lcom/crashlytics/android/core/W$h;)V

    iget-object v2, p0, Lcom/crashlytics/android/core/W$h;->FH:Labcd/gA;

    invoke-static {v0, v2, v1}, Lcom/crashlytics/android/core/n;->j6(Landroid/app/Activity;Labcd/gA;Lcom/crashlytics/android/core/n$a;)Lcom/crashlytics/android/core/n;

    move-result-object v1

    new-instance v2, Lcom/crashlytics/android/core/Y;

    invoke-direct {v2, p0, v1}, Lcom/crashlytics/android/core/Y;-><init>(Lcom/crashlytics/android/core/W$h;Lcom/crashlytics/android/core/n;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Waiting for user opt-in."

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/n;->j6()V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/n;->DW()Z

    move-result v0

    return v0

    :cond_39
    :goto_39
    const/4 v0, 0x1

    return v0
.end method

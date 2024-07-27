.class final Lcom/crashlytics/android/core/W$k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final DW:Lcom/crashlytics/android/core/Ka;

.field private final FH:Lcom/crashlytics/android/core/La;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/core/Ka;Lcom/crashlytics/android/core/La;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/W$k;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/core/W$k;->DW:Lcom/crashlytics/android/core/Ka;

    iput-object p3, p0, Lcom/crashlytics/android/core/W$k;->FH:Lcom/crashlytics/android/core/La;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/core/W$k;->j6:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->DW(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/W$k;->FH:Lcom/crashlytics/android/core/La;

    iget-object v1, p0, Lcom/crashlytics/android/core/W$k;->DW:Lcom/crashlytics/android/core/Ka;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/La;->j6(Lcom/crashlytics/android/core/Ka;)Z

    goto :goto_0
.end method

.class public final Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;->createIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .registers 4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;->getSynchronousResult(Landroid/content/Context;Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v0

    return-object v0
.end method

.method public getSynchronousResult(Landroid/content/Context;Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_d

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;-><init>(Ljava/lang/Object;)V

    :goto_c
    return-object v0

    :cond_d
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;-><init>(Ljava/lang/Object;)V

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public parseResult(ILandroid/content/Intent;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    const/4 v1, -0x1

    if-eq p1, v1, :cond_b

    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    if-eqz v2, :cond_6

    aget v1, v1, v0

    if-nez v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;->parseResult(ILandroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

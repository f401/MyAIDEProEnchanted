.class public Landroidx/activity/result/contract/ActivityResultContracts$OpenMultipleDocuments;
.super Landroidx/activity/result/contract/ActivityResultContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenMultipleDocuments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract",
        "<[",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
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

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$OpenMultipleDocuments;->createIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .registers 4

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$OpenMultipleDocuments;->getSynchronousResult(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v0

    return-object v0
.end method

.method public final getSynchronousResult(Landroid/content/Context;[Ljava/lang/String;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$OpenMultipleDocuments;->parseResult(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final parseResult(ILandroid/content/Intent;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_a

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p2}, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;->getClipDataUris(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    goto :goto_9
.end method

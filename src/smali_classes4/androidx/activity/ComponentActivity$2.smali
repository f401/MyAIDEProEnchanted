.class Landroidx/activity/ComponentActivity$2;
.super Landroidx/activity/result/ActivityResultRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2

    iput-object p1, p0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Landroidx/activity/result/ActivityResultRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/activity/result/contract/ActivityResultContract",
            "<TI;TO;>;TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    invoke-virtual {p2, v0, p3}, Landroidx/activity/result/contract/ActivityResultContract;->getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    move-result-object v1

    if-eqz v1, :cond_1b

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/activity/ComponentActivity$2$1;

    invoke-direct {v2, p0, p1, v1}, Landroidx/activity/ComponentActivity$2$1;-><init>(Landroidx/activity/ComponentActivity$2;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p2, v0, p3}, Landroidx/activity/result/contract/ActivityResultContract;->createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    const/4 v7, 0x0

    const-string v3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    const-string v3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_33
    :goto_33
    const-string v3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    const-string v3, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    move v1, v2

    :goto_4e
    if-ge v1, v5, :cond_6f

    aget-object v6, v3, v1

    iget-object v7, p0, Landroidx/activity/ComponentActivity$2;->this$0:Landroidx/activity/ComponentActivity;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/activity/ComponentActivity;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_65

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_68
    if-eqz p4, :cond_33

    invoke-virtual {p4}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    goto :goto_33

    :cond_6f
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1a

    :cond_81
    const-string v2, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    const-string v2, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/activity/result/IntentSenderRequest;

    :try_start_96
    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsMask()I

    move-result v4

    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsValues()I

    move-result v5

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_ab
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_96 .. :try_end_ab} :catch_ad

    goto/16 :goto_1a

    :catch_ad
    move-exception v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroidx/activity/ComponentActivity$2$2;

    invoke-direct {v2, p0, p1, v0}, Landroidx/activity/ComponentActivity$2$2;-><init>(Landroidx/activity/ComponentActivity$2;ILandroid/content/IntentSender$SendIntentException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1a

    :cond_c1
    invoke-static {v0, v1, p1, v7}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto/16 :goto_1a
.end method

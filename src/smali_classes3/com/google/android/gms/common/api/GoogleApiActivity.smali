.class public Lcom/google/android/gms/common/api/GoogleApiActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private j6:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6:I

    return-void
.end method

.method private static synthetic j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x8000000

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "pending_intent"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "failing_client_id"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "notify_manager"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private static synthetic j6(Ljava/lang/Object;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 14

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiActivity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    invoke-static/range {p0 .. p6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3f

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "notify_manager"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6:I

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    if-eqz p1, :cond_47

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3b

    if-eqz p2, :cond_25

    goto :goto_47

    :cond_25
    new-instance p2, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "failing_client_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_47

    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b;->FH()V

    goto :goto_47

    :cond_3f
    const/4 v1, 0x2

    if-ne p1, v1, :cond_47

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6:I

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_47
    :goto_47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_d

    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6:I

    :cond_d
    iget p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_65

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "GoogleApiActivity"

    if-nez p1, :cond_27

    const-string p1, "Activity started without extras"

    :goto_20
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_27
    const-string v2, "pending_intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const-string v3, "error_code"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez v2, :cond_3e

    if-nez p1, :cond_3e

    const-string p1, "Activity started without resolution"

    goto :goto_20

    :cond_3e
    if-eqz v2, :cond_57

    :try_start_40
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6(Ljava/lang/Object;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6:I
    :try_end_4f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_40 .. :try_end_4f} :catch_50

    return-void

    :catch_50
    move-exception p1

    const-string v0, "Failed to launch pendingIntent"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :cond_57
    invoke-static {}, Lcom/google/android/gms/common/b;->j6()Lcom/google/android/gms/common/b;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, p1, v2, p0}, Lcom/google/android/gms/common/b;->DW(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6:I

    :cond_65
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "resolution"

    iget v1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->j6:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

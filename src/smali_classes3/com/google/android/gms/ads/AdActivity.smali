.class public Lcom/google/android/gms/ads/AdActivity;
.super Landroid/app/Activity;


# instance fields
.field private j6:Lcom/google/android/gms/internal/ads/eg;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eg;->An()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/eg;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eg;->ti()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_10

    :catch_9
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_15

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_15
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/eg;->u7(Labcd/ox;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->DW()Lcom/google/android/gms/internal/ads/iH;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/iH;->j6(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/eg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    const-string v1, "#007 Could not call remote method."

    if-nez v0, :cond_19

    const/4 p1, 0x0

    :goto_12
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_19
    :try_start_19
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/eg;->tp(Landroid/os/Bundle;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    goto :goto_12
.end method

.method protected onDestroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eg;->onDestroy()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eg;->onPause()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_11
    :goto_11
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eg;->ct()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    :cond_a
    return-void

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eg;->onResume()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    :cond_a
    return-void

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/eg;->we(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_11
    :goto_11
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eg;->IS()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    :cond_a
    return-void

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->j6:Lcom/google/android/gms/internal/ads/eg;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eg;->u9()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_11
    :goto_11
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->j6()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->j6()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->j6()V

    return-void
.end method

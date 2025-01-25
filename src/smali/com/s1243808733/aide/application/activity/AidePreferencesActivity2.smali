.class public Lcom/s1243808733/aide/application/activity/AidePreferencesActivity2;
.super Landroid/preference/PreferenceActivity;
.source "AidePreferencesActivity2.java"


# instance fields
.field private mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isDisableDrag()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 14
    invoke-static {p0}, Lcom/s1243808733/aide/application/AppTheme;->initTheme(Landroid/app/Activity;)V

    .line 15
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "screen_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;

    invoke-direct {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;-><init>()V

    .line 20
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment2;->setArguments(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity2;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 27
    const v0, 0x1020002

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity2;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->onDestroy()V

    :cond_a
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-direct {v0, p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity2;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    .line 44
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity2;->isDisableDrag()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDragBack()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v0, v1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->setEnableDragBack(Z)V

    .line 45
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity2;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 2

    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity2;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->snapshot()V

    :cond_a
    return-void
.end method

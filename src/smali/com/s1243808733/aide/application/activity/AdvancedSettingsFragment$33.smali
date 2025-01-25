.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

.field final val$ps:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;Landroid/preference/PreferenceScreen;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1428
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;->val$ps:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private customWindow(Landroid/preference/PreferenceScreen;Landroid/app/Dialog;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1454
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1456
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 1457
    const v1, 0x10f0006

    invoke-virtual {v0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 1458
    invoke-virtual {v0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 1459
    invoke-virtual {v0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setReenterTransition(Landroid/transition/Transition;)V

    .line 1460
    invoke-virtual {v0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    .line 1464
    invoke-virtual {p2}, Landroid/app/Dialog;->hide()V

    .line 1465
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 1467
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    .line 1468
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/BarUtils;->setStatusBarLightMode(Landroid/view/Window;Z)V

    .line 1470
    :cond_3d
    invoke-static {p1}, Lcom/s1243808733/app/base/BaseActivity;->setStatusBar(Landroid/view/Window;)V

    .line 1472
    invoke-virtual {p2}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_7c

    .line 1474
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1475
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1476
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "android"

    const-string v4, "action_bar"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1477
    const-class v1, Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/s1243808733/util/ViewUtil;->findViewByName(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_78

    .line 1479
    new-instance p1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33$1;

    invoke-direct {p1, p0, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;Landroid/app/Dialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7c

    .line 1489
    :cond_78
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_7c
    :goto_7c
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4

    .line 1432
    check-cast p1, Landroid/preference/PreferenceScreen;

    .line 1433
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    .line 1441
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1444
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/s1243808733/aide/application/activity/AidePreferencesActivity2;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1445
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;->val$ps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

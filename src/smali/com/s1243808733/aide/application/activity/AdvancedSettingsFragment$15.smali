.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$15;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .registers 2

    .line 583
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$15;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4

    .line 587
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    :try_start_11
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$15;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    const-string v1, "choose"

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_2b

    :catch_1f
    move-exception p1

    .line 593
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2b
    const/4 p1, 0x0

    return p1
.end method

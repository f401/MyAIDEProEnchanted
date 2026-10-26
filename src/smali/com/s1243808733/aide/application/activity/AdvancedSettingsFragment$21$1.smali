.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;->show(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;

.field final val$finali:I


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 780
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;

    iput p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21$1;->val$finali:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    .line 784
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    :goto_0
    return v3

    .line 785
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 787
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ytfyssx"

    iget v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21$1;->val$finali:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

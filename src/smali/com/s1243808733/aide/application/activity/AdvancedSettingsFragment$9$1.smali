.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->show(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;

.field final val$finali:I


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;

    iput p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;->val$finali:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 439
    iget v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;->val$finali:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 442
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->-$$Nest$mshowUnInstallDialog(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->showInstallDialog(Landroid/app/Activity;)V

    goto :goto_0
.end method

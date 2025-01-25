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
    .registers 3
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
    .registers 3

    .line 439
    iget p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;->val$finali:I

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    goto :goto_19

    .line 445
    :cond_8
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->-$$Nest$mshowUnInstallDialog(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;)V

    goto :goto_19

    .line 442
    :cond_e
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->showInstallDialog(Landroid/app/Activity;)V

    :goto_19
    const/4 p1, 0x0

    return p1
.end method

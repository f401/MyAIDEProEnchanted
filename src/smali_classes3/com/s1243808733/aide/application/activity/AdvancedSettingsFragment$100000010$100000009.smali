.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010$100000009;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;

.field private final val$status:Z


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010$100000009;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;

    iput-boolean p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010$100000009;->val$status:Z

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010$100000009;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010$100000009;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 439
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010$100000009;->val$status:Z

    if-eqz v0, :cond_1

    .line 442
    invoke-static {}, Lcom/ndk/GradleNdk;->removeNdk()V

    .line 443
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5378\u8f7d\u5b8c\u6210"

    :goto_0
    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 447
    :goto_1
    return-void

    .line 443
    :cond_0
    const-string v0, "Uninstall complete"

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010$100000009;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;->access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ndk/GradleNdk;->installNdk(Landroid/app/Activity;)V

    goto :goto_1
.end method

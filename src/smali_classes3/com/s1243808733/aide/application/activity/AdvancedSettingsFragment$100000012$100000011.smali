.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012$100000011;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;

.field private final val$finali:I


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012$100000011;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;

    iput p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012$100000011;->val$finali:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012$100000011;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012$100000011;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x0

    .line 495
    iget v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012$100000011;->val$finali:I

    packed-switch v0, :pswitch_data_0

    .line 508
    :goto_0
    return v4

    .line 497
    :pswitch_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012$100000011;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;->access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cd %1$s/usr&&./install.sh %1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012$100000011;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;->access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :pswitch_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012$100000011;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;->access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->showInstallDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 504
    :pswitch_2
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012$100000011;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;->access$1000015(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;)V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023$100000022;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023;

.field private final val$project:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023$100000022;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023$100000022;->val$project:Ljava/io/File;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023$100000022;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023$100000022;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 712
    const-string v0, "resguard"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023$100000022;->val$project:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u6dfb\u52a0\u5230\uff1a"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023$100000022;->val$project:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 719
    :goto_1
    return-void

    .line 714
    :cond_0
    const-string v0, "Added to:"

    goto :goto_0

    .line 719
    :cond_1
    const-string v0, "failed"

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

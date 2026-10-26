.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 906
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private restoreFromFile(Ljava/io/File;)V
    .locals 6

    .line 936
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-static {p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/s1243808733/data/SettingsBackup;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/data/SettingsBackup;

    .line 937
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 938
    const-string v2, "shared_prefs"

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences.xml"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0}, Lcom/s1243808733/data/SettingsBackup;->getPreference()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 945
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v4, v4, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v4, v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    .line 949
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/data/SettingsBackup;->getCodeHighlight()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 950
    invoke-virtual {v0}, Lcom/s1243808733/data/SettingsBackup;->getCodeHighlight()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/data/CodeHighlight;

    .line 951
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Lcom/s1243808733/data/CodeHighlight;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v5, v5, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v1}, Lcom/s1243808733/data/CodeHighlight;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_0

    .line 956
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/data/SettingsBackup;->getCustomCommand()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 958
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v2, v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v2, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    .line 910
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 913
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u65e0\u6548\u8def\u5f84"

    :goto_0
    invoke-static {v0, v2}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 914
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 931
    :goto_1
    return-void

    .line 918
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->restoreFromFile(Ljava/io/File;)V

    .line 920
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 922
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 924
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 926
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 928
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 931
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 913
    :cond_2
    const-string v0, "Invalid path"

    goto :goto_0
.end method

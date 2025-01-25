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
    .registers 3
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
    .registers 7

    .line 936
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-static {p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/s1243808733/data/SettingsBackup;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/data/SettingsBackup;

    .line 937
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 938
    const-string v1, "shared_prefs"

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_preferences.xml"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 943
    invoke-virtual {p1}, Lcom/s1243808733/data/SettingsBackup;->getPreference()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 945
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v3, v3, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v3, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    .line 949
    :cond_4d
    invoke-virtual {p1}, Lcom/s1243808733/data/SettingsBackup;->getCodeHighlight()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 950
    invoke-virtual {p1}, Lcom/s1243808733/data/SettingsBackup;->getCodeHighlight()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/data/CodeHighlight;

    .line 951
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/s1243808733/data/CodeHighlight;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v4, v4, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v2}, Lcom/s1243808733/data/CodeHighlight;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_5b

    .line 956
    :cond_80
    invoke-virtual {p1}, Lcom/s1243808733/data/SettingsBackup;->getCustomCommand()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 958
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v1, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    :cond_95
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 910
    const-string p1, "packagename"

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 912
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_4b

    .line 918
    :cond_1a
    :try_start_1a
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23$1;->restoreFromFile(Ljava/io/File;)V

    .line 920
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

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
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_3e

    goto :goto_4a

    :catchall_3e
    move-exception p1

    .line 931
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_4a
    return-void

    .line 913
    :cond_4b
    :goto_4b
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_54

    const-string p1, "无效路径"

    goto :goto_56

    :cond_54
    const-string p1, "Invalid path"

    :goto_56
    invoke-static {p1, v1}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 914
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;

.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;Landroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->val$input:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;

    return-object v0
.end method

.method private restoreFromFile(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;->access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "com.s1243808733.data.SettingsBackup"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/data/SettingsBackup;

    .line 996
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;->access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 997
    const-string v2, "shared_prefs"

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 999
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "_preferences.xml"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0}, Lcom/s1243808733/data/SettingsBackup;->getPreference()Ljava/lang/String;

    move-result-object v1

    .line 1003
    if-eqz v1, :cond_0

    .line 1004
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;

    invoke-static {v4}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;->access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    .line 1008
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/data/SettingsBackup;->getCodeHighlight()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1009
    invoke-virtual {v0}, Lcom/s1243808733/data/SettingsBackup;->getCodeHighlight()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1010
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1015
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/data/SettingsBackup;->getCustomCommand()Ljava/lang/String;

    move-result-object v0

    .line 1016
    if-eqz v0, :cond_2

    .line 1017
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;->access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    :cond_2
    return-void

    .line 995
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1009
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/data/CodeHighlight;

    .line 1010
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Lcom/s1243808733/data/CodeHighlight;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;

    invoke-static {v5}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;->access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    move-result-object v5

    invoke-virtual {v1}, Lcom/s1243808733/data/CodeHighlight;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x0

    .line 969
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 971
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 972
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u65e0\u6548\u8def\u5f84"

    :goto_0
    invoke-static {v0, v2}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 990
    :goto_1
    return-void

    .line 972
    :cond_1
    const-string v0, "Invalid path"

    goto :goto_0

    .line 977
    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->restoreFromFile(Ljava/io/File;)V

    .line 979
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 981
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 983
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036$100000034;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;

    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;->access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 985
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 987
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 990
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

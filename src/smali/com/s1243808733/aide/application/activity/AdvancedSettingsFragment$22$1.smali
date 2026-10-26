.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

.field final val$states:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 827
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->val$states:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v1, 0x0

    .line 833
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->val$states:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 840
    const-string v2, "shared_prefs"

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_preferences.xml"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 844
    new-instance v3, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1$1;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 851
    new-instance v3, Lcom/s1243808733/data/SettingsBackup;

    invoke-direct {v3}, Lcom/s1243808733/data/SettingsBackup;-><init>()V

    .line 852
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iget-object v4, v4, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/s1243808733/data/SettingsBackup;->setPreference(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/s1243808733/data/SettingsBackup;->setCustomCommand(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 856
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    .line 857
    new-instance v6, Lcom/s1243808733/data/CodeHighlight;

    invoke-direct {v6}, Lcom/s1243808733/data/CodeHighlight;-><init>()V

    .line 858
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/s1243808733/data/CodeHighlight;->setName(Ljava/lang/String;)V

    .line 859
    iget-object v7, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iget-object v7, v7, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-static {v5}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/s1243808733/data/CodeHighlight;->setData(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v3}, Lcom/s1243808733/data/SettingsBackup;->getCodeHighlight()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v4, "aidepro_%s.backup"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 867
    invoke-static {v3}, Lcom/blankj/utilcode/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5df2\u5bfc\u51fa\u5230"

    const-string v3, "Exported to "

    invoke-static {v0, v3}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    .line 835
    :cond_2
    const-string v0, "\u81f3\u5c11\u9009\u62e9\u4e00\u9879"

    const-string v1, "Select at least one item"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

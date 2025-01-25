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
    .registers 3
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
    .registers 9

    .line 833
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->val$states:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_104

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 839
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 840
    const-string p2, "shared_prefs"

    invoke-static {p2}, Lcom/s1243808733/util/Utils;->getDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_preferences.xml"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 844
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;)V

    invoke-virtual {p2, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p2

    .line 851
    new-instance v0, Lcom/s1243808733/data/SettingsBackup;

    invoke-direct {v0}, Lcom/s1243808733/data/SettingsBackup;-><init>()V

    .line 852
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-static {p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/data/SettingsBackup;->setPreference(Ljava/lang/String;)V

    .line 853
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/data/SettingsBackup;->setCustomCommand(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_a2

    .line 856
    array-length v1, p2

    const/4 v2, 0x0

    :goto_79
    if-ge v2, v1, :cond_a2

    aget-object v3, p2, v2

    .line 857
    new-instance v4, Lcom/s1243808733/data/CodeHighlight;

    invoke-direct {v4}, Lcom/s1243808733/data/CodeHighlight;-><init>()V

    .line 858
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/s1243808733/data/CodeHighlight;->setName(Ljava/lang/String;)V

    .line 859
    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iget-object v5, v5, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-static {v3}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/s1243808733/data/CodeHighlight;->setData(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0}, Lcom/s1243808733/data/SettingsBackup;->getCodeHighlight()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 864
    :cond_a2
    new-instance p2, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    const-string p1, "aidepro_%s.backup"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 865
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iget-object p1, p1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    .line 867
    invoke-static {v0}, Lcom/blankj/utilcode/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 865
    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    .line 869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "已导出到"

    const-string v1, "Exported to "

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 835
    :cond_104
    const-string p1, "至少选择一项"

    const-string p2, "Select at least one item"

    invoke-static {p1, p2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

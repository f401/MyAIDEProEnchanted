.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->showInstallDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;

.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1179
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1183
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1184
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    .line 1185
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_4c

    .line 1191
    :cond_1e
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1192
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "tar xvJf %1$s -C %2$s&&chmod 777 -R %2$s/framework/*&&exit"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1194
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 1186
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_55

    const-string p1, "无效文件"

    goto :goto_57

    :cond_55
    const-string p1, "Invalid file"

    :goto_57
    invoke-static {p1, v0}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1187
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

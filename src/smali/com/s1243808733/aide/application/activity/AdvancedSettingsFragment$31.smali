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
    .locals 0
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
    .locals 5

    const/4 v4, 0x0

    .line 1183
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1184
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1186
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u65e0\u6548\u6587\u4ef6"

    :goto_0
    invoke-static {v0, v4}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1187
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1194
    :goto_1
    return-void

    .line 1191
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1192
    const-string v2, "tar xvJf %1$s -C %2$s&&chmod 777 -R %2$s/framework/*&&exit"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1194
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1186
    :cond_2
    const-string v0, "Invalid file"

    goto :goto_0
.end method

.class Lcom/s1243808733/aide/util/CreateClassDialog$CreateBroadcastReceiver;
.super Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;
.source "CreateClassDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/util/CreateClassDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateBroadcastReceiver"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/util/CreateClassDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V
    .registers 2

    .line 570
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$CreateBroadcastReceiver;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;-><init>()V

    return-void
.end method


# virtual methods
.method public makeCode(Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;)Ljava/lang/String;
    .registers 8

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_25

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "package "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v2

    .line 576
    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "import android.content.BroadcastReceiver;\nimport android.content.Context;\nimport android.content.Intent;\n\npublic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-boolean v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->abstractModifier:Z

    if-eqz v1, :cond_35

    const-string v1, "abstract "

    goto :goto_36

    :cond_35
    move-object v1, v2

    :goto_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extends BroadcastReceiver {\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-boolean v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->isAddTag:Z

    if-eqz v1, :cond_61

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n    public static final String TAG = \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\";\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    @Override\n    public void onReceive(Context context, Intent intent) {\n        \n    }\n    \n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    iget-boolean v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->autoAdd:Z

    if-eqz v1, :cond_f6

    .line 593
    :try_start_71
    new-instance v1, Lcom/s1243808733/aide/util/AndroidManifestRead;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "src/main/AndroidManifest.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/io/File;)V

    .line 594
    new-instance v2, Lcom/s1243808733/aide/util/FActivityInfo;

    invoke-direct {v2}, Lcom/s1243808733/aide/util/FActivityInfo;-><init>()V

    .line 595
    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->appPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_a6} :catch_ec

    const-string v4, "."

    if-eqz v3, :cond_bb

    .line 596
    :try_start_aa
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    goto :goto_d3

    .line 598
    :cond_bb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    .line 600
    :goto_d3
    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->addReceiver(Lcom/s1243808733/aide/util/FActivityInfo;)V

    .line 601
    invoke-virtual {v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->Save()V

    .line 602
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$CreateBroadcastReceiver;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->format(Landroid/app/Activity;Ljava/io/File;Z)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_eb} :catch_ec

    goto :goto_f6

    :catch_ec
    move-exception p1

    .line 604
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$CreateBroadcastReceiver;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_f6
    :goto_f6
    return-object v0
.end method

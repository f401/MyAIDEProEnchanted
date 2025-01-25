.class Lcom/s1243808733/aide/util/CreateClassDialog$CreateActivity;
.super Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;
.source "CreateClassDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/util/CreateClassDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateActivity"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/util/CreateClassDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$CreateActivity;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;-><init>()V

    return-void
.end method


# virtual methods
.method public makeCode(Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;)Ljava/lang/String;
    .registers 9

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_25

    .line 450
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

    .line 451
    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "import android.app.Activity;\nimport android.os.Bundle;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-boolean v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->addLayout:Z

    if-eqz v1, :cond_52

    iget-object v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->appPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\nimport "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".R;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    :cond_52
    move-object v1, v2

    :goto_53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\npublic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-boolean v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->abstractModifier:Z

    if-eqz v1, :cond_62

    const-string v1, "abstract "

    goto :goto_63

    :cond_62
    move-object v1, v2

    :goto_63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extends Activity {\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-boolean v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->isAddTag:Z

    if-eqz v1, :cond_8e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n    public static final String TAG = \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\";\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    @Override\n    protected void onCreate(Bundle savedInstanceState) {\n        super.onCreate(savedInstanceState);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-boolean v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->addLayout:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->layoutName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "\n        setContentView(R.layout.%s);"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ab

    :cond_a9
    const-string v1, "\n        "

    :goto_ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        \n    }\n    \n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-boolean v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->autoAdd:Z

    if-eqz v1, :cond_13f

    .line 471
    :try_start_bb
    new-instance v1, Lcom/s1243808733/aide/util/AndroidManifestRead;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "src/main/AndroidManifest.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/io/File;)V

    .line 472
    new-instance v3, Lcom/s1243808733/aide/util/FActivityInfo;

    invoke-direct {v3}, Lcom/s1243808733/aide/util/FActivityInfo;-><init>()V

    .line 473
    iget-object v4, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->appPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_f0} :catch_135

    const-string v5, "."

    if-eqz v4, :cond_105

    .line 474
    :try_start_f4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    goto :goto_11d

    .line 476
    :cond_105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    .line 478
    :goto_11d
    invoke-virtual {v1, v3}, Lcom/s1243808733/aide/util/AndroidManifestRead;->addActivity(Lcom/s1243808733/aide/util/FActivityInfo;)V

    .line 479
    invoke-virtual {v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->Save()V

    .line 480
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$CreateActivity;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->format(Landroid/app/Activity;Ljava/io/File;Z)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_134} :catch_135

    goto :goto_13f

    :catch_135
    move-exception p1

    .line 482
    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$CreateActivity;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_13f
    :goto_13f
    return-object v0
.end method

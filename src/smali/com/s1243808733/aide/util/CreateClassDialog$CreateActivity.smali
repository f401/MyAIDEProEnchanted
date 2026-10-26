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
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$CreateActivity;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Lcom/s1243808733/aide/util/CreateClassDialog$CreateClass;-><init>()V

    return-void
.end method


# virtual methods
.method public makeCode(Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "package "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "import android.app.Activity;\nimport android.os.Bundle;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-boolean v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->addLayout:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->appPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\nimport "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".R;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\npublic "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-boolean v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->abstractModifier:Z

    if-eqz v0, :cond_3

    const-string v0, "abstract "

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " extends Activity {\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-boolean v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->isAddTag:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n    public static final String TAG = \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\";\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    @Override\n    protected void onCreate(Bundle savedInstanceState) {\n        super.onCreate(savedInstanceState);"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-boolean v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->addLayout:Z

    if-eqz v0, :cond_4

    const-string v0, "\n        setContentView(R.layout.%s);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->layoutName:Ljava/lang/String;

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        \n    }\n    \n}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    iget-boolean v0, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->autoAdd:Z

    if-eqz v0, :cond_0

    .line 471
    :try_start_0
    new-instance v0, Lcom/s1243808733/aide/util/AndroidManifestRead;

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

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/io/File;)V

    .line 472
    new-instance v2, Lcom/s1243808733/aide/util/FActivityInfo;

    invoke-direct {v2}, Lcom/s1243808733/aide/util/FActivityInfo;-><init>()V

    .line 473
    iget-object v3, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->appPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;

    .line 478
    :goto_5
    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->addActivity(Lcom/s1243808733/aide/util/FActivityInfo;)V

    .line 479
    invoke-virtual {v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;->Save()V

    .line 480
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$CreateActivity;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/util/ProjectUtils;->getAndroidManifest(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/s1243808733/aide/util/AndroidManifestRead;->format(Landroid/app/Activity;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_6
    return-object v1

    .line 450
    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    .line 454
    :cond_2
    const-string v0, ""

    goto/16 :goto_1

    .line 456
    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    .line 462
    :cond_4
    const-string v0, "\n        "

    goto :goto_4

    .line 476
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/s1243808733/aide/util/CreateClassDialog$Configuration;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/s1243808733/aide/util/FActivityInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 480
    :catch_0
    move-exception v0

    .line 482
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$CreateActivity;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmActivity(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    move-object v0, v1

    goto/16 :goto_3
.end method

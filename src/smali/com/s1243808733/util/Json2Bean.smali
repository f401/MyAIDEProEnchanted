.class public Lcom/s1243808733/util/Json2Bean;
.super Ljava/lang/Object;
.source "Json2Bean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/util/Json2Bean$DialogView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressionJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 414
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 415
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 408
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x0

    .line 36
    new-instance v1, Lcom/s1243808733/util/Json2Bean$DialogView;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/Json2Bean$DialogView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v2, Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-direct {v2}, Lcom/s1243808733/util/Json2Java$Configurd;-><init>()V

    .line 40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v3, "Json2Bean"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v1}, Lcom/s1243808733/util/Json2Bean$DialogView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 43
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u751f\u6210"

    :goto_0
    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 44
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u683c\u5f0f\u5316"

    :goto_1
    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 45
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u914d\u7f6e"

    :goto_2
    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 47
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, v1, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getSrcJavaPkg(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 57
    :try_start_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Labcd/gj;->DW(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    iget-object v6, v1, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    :goto_3
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 66
    const/4 v0, -0x2

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 67
    const/4 v0, -0x3

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 69
    new-instance v0, Lcom/s1243808733/util/Json2Bean$1;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/util/Json2Bean$1;-><init>(Lcom/s1243808733/util/Json2Bean$DialogView;Lcom/s1243808733/util/Json2Java$Configurd;Landroid/app/Activity;Ljava/io/File;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v0, Lcom/s1243808733/util/Json2Bean$2;

    invoke-direct {v0, v1, p0}, Lcom/s1243808733/util/Json2Bean$2;-><init>(Lcom/s1243808733/util/Json2Bean$DialogView;Landroid/app/Activity;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v0, Lcom/s1243808733/util/Json2Bean$3;

    invoke-direct {v0, v2, p0}, Lcom/s1243808733/util/Json2Bean$3;-><init>(Lcom/s1243808733/util/Json2Java$Configurd;Landroid/app/Activity;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 43
    :cond_2
    const-string v0, "Generate"

    goto :goto_0

    .line 44
    :cond_3
    const-string v0, "Format"

    goto :goto_1

    .line 45
    :cond_4
    const-string v0, "Configured"

    goto :goto_2

    .line 58
    :catchall_0
    move-exception v3

    .line 60
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, v1, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

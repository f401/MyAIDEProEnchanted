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
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressionJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

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

    move-result-object p0

    .line 416
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

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

    move-result-object p0

    .line 410
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 13

    .line 36
    new-instance v6, Lcom/s1243808733/util/Json2Bean$DialogView;

    invoke-direct {v6, p0}, Lcom/s1243808733/util/Json2Bean$DialogView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v7, Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-direct {v7}, Lcom/s1243808733/util/Json2Java$Configurd;-><init>()V

    .line 40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v1, "Json2Bean"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v6}, Lcom/s1243808733/util/Json2Bean$DialogView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "生成"

    goto :goto_28

    :cond_26
    const-string v1, "Generate"

    :goto_28
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "格式化"

    goto :goto_38

    :cond_36
    const-string v1, "Format"

    :goto_38
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "配置"

    goto :goto_47

    :cond_45
    const-string v1, "Configured"

    :goto_47
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 47
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    if-eqz p1, :cond_59

    .line 50
    iget-object v0, v6, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_59
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getSrcJavaPkg(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 57
    :try_start_61
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Labcd/gj;->DW(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, v6, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_7e
    .catchall {:try_start_61 .. :try_end_7e} :catchall_7f

    goto :goto_8f

    :catchall_7f
    move-exception v0

    .line 60
    invoke-static {p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 61
    iget-object v0, v6, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_8f
    :goto_8f
    const/4 p1, -0x1

    invoke-virtual {v5, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 66
    const/4 v0, -0x2

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 67
    const/4 v0, -0x3

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    .line 69
    new-instance v10, Lcom/s1243808733/util/Json2Bean$1;

    move-object v0, v10

    move-object v1, v6

    move-object v2, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/util/Json2Bean$1;-><init>(Lcom/s1243808733/util/Json2Bean$DialogView;Lcom/s1243808733/util/Json2Java$Configurd;Landroid/app/Activity;Ljava/io/File;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance p1, Lcom/s1243808733/util/Json2Bean$2;

    invoke-direct {p1, v6, p0}, Lcom/s1243808733/util/Json2Bean$2;-><init>(Lcom/s1243808733/util/Json2Bean$DialogView;Landroid/app/Activity;)V

    invoke-virtual {v8, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance p1, Lcom/s1243808733/util/Json2Bean$3;

    invoke-direct {p1, v7, p0}, Lcom/s1243808733/util/Json2Bean$3;-><init>(Lcom/s1243808733/util/Json2Java$Configurd;Landroid/app/Activity;)V

    invoke-virtual {v9, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

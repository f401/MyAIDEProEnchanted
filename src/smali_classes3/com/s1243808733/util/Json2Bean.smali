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

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressionJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 418
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 412
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 413
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 40
    new-instance v1, Lcom/s1243808733/util/Json2Bean$DialogView;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/Json2Bean$DialogView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v2, Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-direct {v2}, Lcom/s1243808733/util/Json2Java$Configurd;-><init>()V

    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Json2Bean"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/s1243808733/util/Json2Bean$DialogView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u751f\u6210"

    move-object v4, v0

    :goto_0
    move-object v0, v3

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u683c\u5f0f\u5316"

    move-object v4, v0

    :goto_1
    move-object v0, v3

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u914d\u7f6e"

    :goto_2
    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, v1, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getSrcJavaPkg(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 61
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

    .line 62
    iget-object v6, v1, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_1
    :goto_3
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 70
    const/4 v0, -0x2

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 71
    const/4 v0, -0x3

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 73
    new-instance v0, Lcom/s1243808733/util/Json2Bean$100000009;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/util/Json2Bean$100000009;-><init>(Lcom/s1243808733/util/Json2Bean$DialogView;Lcom/s1243808733/util/Json2Java$Configurd;Landroid/app/Activity;Ljava/io/File;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v0, Lcom/s1243808733/util/Json2Bean$100000012;

    invoke-direct {v0, v1, p0}, Lcom/s1243808733/util/Json2Bean$100000012;-><init>(Lcom/s1243808733/util/Json2Bean$DialogView;Landroid/app/Activity;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance v0, Lcom/s1243808733/util/Json2Bean$100000014;

    invoke-direct {v0, v2, p0}, Lcom/s1243808733/util/Json2Bean$100000014;-><init>(Lcom/s1243808733/util/Json2Java$Configurd;Landroid/app/Activity;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 44
    :cond_2
    const-string v0, "Generate"

    move-object v4, v0

    goto/16 :goto_0

    :cond_3
    const-string v0, "Format"

    move-object v4, v0

    goto :goto_1

    :cond_4
    const-string v0, "Configured"

    goto :goto_2

    .line 62
    :catch_0
    move-exception v3

    .line 64
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, v1, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

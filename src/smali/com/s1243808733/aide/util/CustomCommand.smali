.class public Lcom/s1243808733/aide/util/CustomCommand;
.super Ljava/lang/Object;
.source "CustomCommand.java"


# static fields
.field static sFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([Lcom/s1243808733/aide/util/Command;)Ljava/lang/String;
    .locals 5

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    invoke-virtual {v3}, Lcom/s1243808733/aide/util/Command;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)[Lcom/s1243808733/aide/util/Command;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_1

    .line 78
    :try_start_1
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    array-length v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 80
    aget-object v3, v2, v5

    .line 81
    aget-object v2, v2, v6

    .line 82
    :try_start_2
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    invoke-static {v2}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    new-instance v4, Lcom/s1243808733/aide/util/Command;

    invoke-direct {v4, v3, v2}, Lcom/s1243808733/aide/util/Command;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 88
    :cond_1
    new-array v2, v6, [Ljava/io/Closeable;

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 90
    new-array v1, v5, [Lcom/s1243808733/aide/util/Command;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/util/Command;

    return-object v0
.end method

.method public static getCommands()[Lcom/s1243808733/aide/util/Command;
    .locals 4

    .line 96
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-class v1, [Lcom/s1243808733/aide/util/Command;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/util/Command;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 103
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Lcom/s1243808733/aide/util/Command;

    const-string v2, "clean"

    const-string v3, "gradle clean"

    invoke-direct {v0, v2, v3}, Lcom/s1243808733/aide/util/Command;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Lcom/s1243808733/aide/util/Command;

    const-string v2, "assembleDebug"

    const-string v3, "gradle assembleDebug"

    invoke-direct {v0, v2, v3}, Lcom/s1243808733/aide/util/Command;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v0, Lcom/s1243808733/aide/util/Command;

    const-string v2, "assembleRelease"

    const-string v3, "gradle assembleRelease"

    invoke-direct {v0, v2, v3}, Lcom/s1243808733/aide/util/Command;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/s1243808733/aide/util/Command;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/util/Command;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    .line 101
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFile()Ljava/io/File;
    .locals 3

    .line 123
    sget-object v0, Lcom/s1243808733/aide/util/CustomCommand;->sFile:Ljava/io/File;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "commands.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/util/CustomCommand;->sFile:Ljava/io/File;

    goto :goto_0
.end method

.method public static setCommands([Lcom/s1243808733/aide/util/Command;)V
    .locals 2

    .line 117
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p0}, Lcom/blankj/utilcode/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;)V
    .locals 8

    const/4 v7, -0x2

    const/high16 v5, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 26
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 31
    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMinWidth(I)V

    .line 32
    invoke-virtual {v0, v1, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 34
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getCommands()[Lcom/s1243808733/aide/util/Command;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/util/CustomCommand;->convert([Lcom/s1243808733/aide/util/Command;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v3, Landroid/widget/HorizontalScrollView;

    invoke-direct {v3, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v3, v0, v4, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    .line 39
    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 42
    invoke-static {v5}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    invoke-static {v6}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v4

    invoke-static {v5}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v5

    invoke-static {v6}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v6

    .line 41
    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 44
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v0, "\u81ea\u5b9a\u4e49\u547d\u4ee4"

    const-string v4, "Custom command"

    invoke-static {v0, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/aide/util/CustomCommand$1;

    invoke-direct {v2, v1}, Lcom/s1243808733/aide/util/CustomCommand$1;-><init>(Landroid/widget/EditText;)V

    .line 48
    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

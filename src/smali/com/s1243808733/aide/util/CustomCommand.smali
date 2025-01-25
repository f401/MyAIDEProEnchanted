.class public Lcom/s1243808733/aide/util/CustomCommand;
.super Ljava/lang/Object;
.source "CustomCommand.java"


# static fields
.field static sFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([Lcom/s1243808733/aide/util/Command;)Ljava/lang/String;
    .registers 6

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_2c

    aget-object v3, p0, v2

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_16
    invoke-virtual {v3}, Lcom/s1243808733/aide/util/Command;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 68
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/String;)[Lcom/s1243808733/aide/util/Command;
    .registers 7

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    :cond_f
    :goto_f
    const/4 p0, 0x1

    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_40

    if-eqz v3, :cond_41

    .line 78
    :try_start_17
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 79
    array-length v4, v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_3e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_40

    const/4 v5, 0x2

    if-ge v4, v5, :cond_24

    goto :goto_f

    .line 80
    :cond_24
    aget-object v4, v3, v2

    .line 81
    aget-object v3, v3, p0

    .line 82
    :try_start_28
    invoke-static {v4}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 83
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_f

    .line 84
    :cond_35
    new-instance v5, Lcom/s1243808733/aide/util/Command;

    invoke-direct {v5, v4, v3}, Lcom/s1243808733/aide/util/Command;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3d} :catch_40

    goto :goto_f

    .line 90
    :catch_3e
    move-exception p0

    goto :goto_f

    :catch_40
    move-exception v3

    .line 88
    :cond_41
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v1, p0, v2

    invoke-static {p0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 90
    new-array p0, v2, [Lcom/s1243808733/aide/util/Command;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/s1243808733/aide/util/Command;

    return-object p0
.end method

.method public static getCommands()[Lcom/s1243808733/aide/util/Command;
    .registers 4

    .line 96
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 97
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-class v1, [Lcom/s1243808733/aide/util/Command;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/util/Command;
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception v0

    .line 101
    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2b

    .line 103
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_55

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
    :cond_55
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/s1243808733/aide/util/Command;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/util/Command;

    return-object v0
.end method

.method public static getFile()Ljava/io/File;
    .registers 3

    .line 123
    sget-object v0, Lcom/s1243808733/aide/util/CustomCommand;->sFile:Ljava/io/File;

    if-eqz v0, :cond_5

    goto :goto_16

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "commands.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/util/CustomCommand;->sFile:Ljava/io/File;

    :goto_16
    return-object v0
.end method

.method public static setCommands([Lcom/s1243808733/aide/util/Command;)V
    .registers 2

    .line 117
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p0}, Lcom/blankj/utilcode/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;)V
    .registers 8

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
    const/high16 v2, 0x43960000  # 300.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMinWidth(I)V

    .line 32
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 34
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getCommands()[Lcom/s1243808733/aide/util/Command;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/aide/util/CustomCommand;->convert([Lcom/s1243808733/aide/util/Command;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v5, Landroid/widget/HorizontalScrollView;

    invoke-direct {v5, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v5, v0, v2, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    .line 39
    invoke-virtual {v4, v5, v2, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 42
    const/high16 v0, 0x41c00000  # 24.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v6

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    .line 41
    invoke-virtual {v4, v2, v6, v0, v3}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    const-string p0, "自定义命令"

    const-string v2, "Custom command"

    invoke-static {p0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 47
    invoke-virtual {p0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/s1243808733/aide/util/CustomCommand$1;

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/util/CustomCommand$1;-><init>(Landroid/widget/EditText;)V

    .line 48
    const v1, 0x104000a

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 57
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

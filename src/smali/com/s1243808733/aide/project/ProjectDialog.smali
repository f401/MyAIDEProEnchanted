.class public Lcom/s1243808733/aide/project/ProjectDialog;
.super Ljava/lang/Object;
.source "ProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;,
        Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;,
        Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smcreateProject(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/aide/project/ProjectDialog;->createProject(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createProject(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V
    .registers 13

    .line 251
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getProject()Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v0

    .line 252
    new-instance v4, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;

    invoke-direct {v4, p0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;-><init>(Landroid/content/Context;)V

    .line 254
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 256
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 257
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 258
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "创建"

    goto :goto_2a

    :cond_28
    const-string v3, "Create"

    :goto_2a
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 259
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 261
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/s1243808733/aide/project/PUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 263
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 265
    :cond_47
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 266
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 267
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 269
    invoke-static {v4}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->-$$Nest$fgetinput_projectName(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 270
    invoke-static {v4}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->-$$Nest$fgetinput_packageName(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    .line 271
    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Project;->isNoPkg()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 272
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 273
    invoke-static {v4}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->-$$Nest$fgetinput_packageName(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->setVisibility(I)V

    .line 276
    :cond_79
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 277
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_8b

    .line 278
    :cond_86
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppProjects()Ljava/io/File;

    move-result-object v0

    move-object v8, v0

    .line 280
    :goto_8b
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$6;

    invoke-direct {v1, v3, v0, v8, v5}, Lcom/s1243808733/aide/project/ProjectDialog$6;-><init>(Landroid/widget/EditText;Landroid/widget/Button;Ljava/io/File;Landroid/widget/EditText;)V

    .line 306
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 307
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 309
    const-string v1, "Application"

    invoke-static {v8, v1, v2}, Lcom/s1243808733/aide/project/ProjectDialog;->getCreateLocation(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/AdvancedSetting;->getPackagePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 313
    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$7;

    invoke-direct {v1, v0}, Lcom/s1243808733/aide/project/ProjectDialog$7;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 324
    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$8;

    invoke-direct {v1, v0}, Lcom/s1243808733/aide/project/ProjectDialog$8;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 335
    new-instance v10, Lcom/s1243808733/aide/project/ProjectDialog$9;

    move-object v1, v10

    move-object v2, v3

    move-object v3, v5

    move-object v5, p1

    move-object v6, v9

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/s1243808733/aide/project/ProjectDialog$9;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/io/File;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    new-instance p0, Lcom/s1243808733/aide/project/ProjectDialog$10;

    invoke-direct {p0}, Lcom/s1243808733/aide/project/ProjectDialog$10;-><init>()V

    invoke-virtual {v9, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private static getCreateLocation(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .registers 6

    .line 243
    const/4 v0, 0x1

    if-le p2, v0, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, p1

    :goto_14
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_20

    return-object v2

    .line 247
    :cond_20
    add-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/s1243808733/aide/project/ProjectDialog;->getCreateLocation(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static showCreateDialog(Landroid/app/Activity;)V
    .registers 7

    .line 70
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->checkDirectoryWritable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    const-string p0, "出了点问题"

    const-string v1, "Warning"

    invoke-static {p0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 73
    const-string v0, "这个目录无法正常写入"

    const-string v1, "This directory cannot be written"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$1;

    invoke-direct {v0}, Lcom/s1243808733/aide/project/ProjectDialog$1;-><init>()V

    .line 74
    const v1, 0x104000a

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 86
    :cond_3f
    new-instance v0, Lcom/s1243808733/widget/CustomExpandableListView;

    invoke-direct {v0, p0}, Lcom/s1243808733/widget/CustomExpandableListView;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_52

    const-string v2, "新建项目"

    goto :goto_54

    :cond_52
    const-string v2, "Create New Project"

    :goto_54
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 91
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_65

    const-string v2, "更多"

    goto :goto_67

    :cond_65
    const-string v2, "More"

    :goto_67
    new-instance v3, Lcom/s1243808733/aide/project/ProjectDialog$3;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/project/ProjectDialog$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 98
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 99
    const-string v2, "导入项目"

    const-string v3, "Import"

    invoke-static {v2, v3}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/s1243808733/aide/project/ProjectDialog$2;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/project/ProjectDialog$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 197
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    :try_start_9b
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_f8

    if-eqz v2, :cond_a4

    const-string v2, "template_zh.json"

    goto :goto_a6

    :cond_a4
    const-string v2, "template.json"

    .line 201
    :goto_a6
    :try_start_a6
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableCustomTemplate()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 202
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getDefaultCustomTemplateDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_c7

    .line 204
    :cond_bb
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v2}, Lcom/s1243808733/aide/project/PUtils;->getAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 207
    :goto_c7
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v3, Lcom/s1243808733/aide/project/jsonbean/CategoryList;

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/aide/project/jsonbean/CategoryList;

    invoke-virtual {v2}, Lcom/s1243808733/aide/project/jsonbean/CategoryList;->getCategory()Ljava/util/List;

    move-result-object v2

    .line 208
    new-instance v3, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;

    invoke-direct {v3, p0, v2}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 209
    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 210
    new-instance v2, Lcom/s1243808733/aide/project/ProjectDialog$4;

    invoke-direct {v2, v3, p0, v1}, Lcom/s1243808733/aide/project/ProjectDialog$4;-><init>(Lcom/s1243808733/aide/project/adapter/TemplateAdapter;Landroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 219
    invoke-virtual {v3}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getGroupCount()I

    move-result v1

    if-lez v1, :cond_fc

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z
    :try_end_f7
    .catchall {:try_start_a6 .. :try_end_f7} :catchall_f8

    goto :goto_fc

    :catchall_f8
    move-exception v1

    .line 223
    invoke-static {p0, v1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 226
    :cond_fc
    :goto_fc
    new-instance p0, Lcom/s1243808733/aide/project/ProjectDialog$5;

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/project/ProjectDialog$5;-><init>(Landroid/widget/ExpandableListView;)V

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    return-void
.end method

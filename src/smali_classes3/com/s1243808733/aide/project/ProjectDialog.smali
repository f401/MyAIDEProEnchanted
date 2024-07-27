.class public Lcom/s1243808733/aide/project/ProjectDialog;
.super Ljava/lang/Object;
.source "ProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;,
        Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;,
        Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000030(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/aide/project/ProjectDialog;->createProject(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V

    return-void
.end method

.method private static createProject(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/s1243808733/aide/project/jsonbean/Category$Templates;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 251
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getProject()Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v4

    .line 252
    new-instance v3, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;-><init>(Landroid/content/Context;)V

    .line 254
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u521b\u5efa"

    move-object v2, v0

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/s1243808733/aide/project/PUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_0

    .line 263
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 265
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 266
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 267
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 269
    invoke-static {v3}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->access$L1000031(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 270
    invoke-static {v3}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->access$L1000032(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 271
    invoke-virtual {v4}, Lcom/s1243808733/aide/project/jsonbean/Project;->isNoPkg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 273
    invoke-static {v3}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->access$L1000032(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->setVisibility(I)V

    .line 276
    :cond_1
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_3

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 281
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/s1243808733/aide/project/ProjectDialog$100000010;-><init>(Landroid/widget/EditText;Landroid/widget/Button;Ljava/io/File;Landroid/widget/EditText;)V

    .line 306
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 307
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 309
    const-string v0, "Application"

    invoke-static {v7, v0, v6}, Lcom/s1243808733/aide/project/ProjectDialog;->getCreateLocation(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/AdvancedSetting;->getPackagePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 313
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$100000011;

    invoke-direct {v0, v8}, Lcom/s1243808733/aide/project/ProjectDialog$100000011;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 324
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$100000012;

    invoke-direct {v0, v8}, Lcom/s1243808733/aide/project/ProjectDialog$100000012;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 335
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/io/File;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$100000015;

    invoke-direct {v0}, Lcom/s1243808733/aide/project/ProjectDialog$100000015;-><init>()V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void

    .line 254
    :cond_2
    const-string v0, "Create"

    move-object v2, v0

    goto/16 :goto_0

    .line 277
    :cond_3
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppProjects()Ljava/io/File;

    move-result-object v7

    goto :goto_1
.end method

.method private static getCreateLocation(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .registers 5

    .line 243
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 247
    :goto_1
    return-object v0

    :cond_0
    move-object v0, p1

    .line 243
    goto :goto_0

    .line 247
    :cond_1
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/s1243808733/aide/project/ProjectDialog;->getCreateLocation(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    goto :goto_1
.end method

.method public static showCreateDialog(Landroid/app/Activity;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->checkDirectoryWritable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u51fa\u4e86\u70b9\u95ee\u9898"

    const-string v2, "Warning"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v0, "\u8fd9\u4e2a\u76ee\u5f55\u65e0\u6cd5\u6b63\u5e38\u5199\u5165"

    const-string v2, "This directory cannot be written"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/s1243808733/aide/project/ProjectDialog$100000000;

    invoke-direct {v2}, Lcom/s1243808733/aide/project/ProjectDialog$100000000;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 226
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v2, Lcom/s1243808733/widget/CustomExpandableListView;

    invoke-direct {v2, p0}, Lcom/s1243808733/widget/CustomExpandableListView;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u65b0\u5efa\u9879\u76ee"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u66f4\u591a"

    :goto_2
    new-instance v3, Lcom/s1243808733/aide/project/ProjectDialog$100000001;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/project/ProjectDialog$100000001;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v3, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v0, "\u5bfc\u5165\u9879\u76ee"

    const-string v3, "Import"

    invoke-static {v0, v3}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/s1243808733/aide/project/ProjectDialog$100000007;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/project/ProjectDialog$100000007;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 195
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 197
    const/4 v0, -0x3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "template_zh.json"

    move-object v1, v0

    .line 201
    :goto_3
    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableCustomTemplate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 202
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getDefaultCustomTemplateDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 207
    :goto_4
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "com.s1243808733.aide.project.jsonbean.CategoryList"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    invoke-virtual {v1, v4, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/project/jsonbean/CategoryList;

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/CategoryList;->getCategory()Ljava/util/List;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;

    invoke-direct {v1, p0, v0}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 209
    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 210
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$100000008;

    invoke-direct {v0, v1, p0, v3}, Lcom/s1243808733/aide/project/ProjectDialog$100000008;-><init>(Lcom/s1243808733/aide/project/adapter/TemplateAdapter;Landroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 219
    invoke-virtual {v1}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 226
    :cond_1
    :goto_5
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$100000009;

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/project/ProjectDialog$100000009;-><init>(Landroid/widget/ExpandableListView;)V

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    goto/16 :goto_0

    .line 88
    :cond_2
    const-string v0, "Create New Project"

    goto/16 :goto_1

    :cond_3
    const-string v0, "More"

    goto/16 :goto_2

    .line 199
    :cond_4
    const-string v0, "template.json"

    move-object v1, v0

    goto :goto_3

    .line 204
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v1}, Lcom/s1243808733/aide/project/PUtils;->getAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    .line 207
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 220
    :catch_1
    move-exception v0

    .line 223
    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

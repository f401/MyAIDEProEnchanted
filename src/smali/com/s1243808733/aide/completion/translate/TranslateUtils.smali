.class public Lcom/s1243808733/aide/completion/translate/TranslateUtils;
.super Ljava/lang/Object;
.source "TranslateUtils.java"


# static fields
.field public static final STATE_FAILED:I = -0x1

.field public static final STATE_START:I = 0x0

.field public static final STATE_SUCCESS:I = 0x1

.field public static db:Lorg/xutils/DbManager; = null

.field private static lang:Ljava/lang/String; = "auto"

.field private static targetLang:Ljava/lang/String; = "zh"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V
    .registers 7

    .line 396
    invoke-static {p1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 408
    :cond_7
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 410
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 417
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const v0, -0x555556

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {p3, p1, v2, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 418
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 419
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_32

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_32
    return-void
.end method

.method public static getDb()Lorg/xutils/DbManager;
    .registers 3

    .line 79
    sget-object v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->db:Lorg/xutils/DbManager;

    if-nez v0, :cond_48

    .line 81
    const/4 v0, 0x1

    :try_start_5
    new-instance v1, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v1}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    .line 83
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDbFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    .line 84
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDbFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xutils/DbManager$DaoConfig;->setDbDir(Ljava/io/File;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/completion/translate/TranslateUtils$2;

    invoke-direct {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$2;-><init>()V

    .line 86
    invoke-virtual {v1, v2}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/completion/translate/TranslateUtils$1;

    invoke-direct {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$1;-><init>()V

    .line 94
    invoke-virtual {v1, v2}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    .line 99
    invoke-static {v1}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v1

    sput-object v1, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->db:Lorg/xutils/DbManager;
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3f

    goto :goto_48

    :catchall_3f
    move-exception v1

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 104
    :cond_48
    :goto_48
    sget-object v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->db:Lorg/xutils/DbManager;

    return-object v0
.end method

.method public static getDbFile()Ljava/io/File;
    .registers 3

    .line 108
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "translate_file"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 111
    :try_start_11
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    return-object v1

    :catchall_17
    move-exception v0

    .line 113
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "GetDbFile Exception"

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_23
    const-string v0, "translate/translate.db"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getSdDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLang()Ljava/lang/String;
    .registers 1

    .line 65
    sget-object v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public static getTargetLang()Ljava/lang/String;
    .registers 1

    .line 57
    sget-object v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->targetLang:Ljava/lang/String;

    return-object v0
.end method

.method public static onItemLongClick(Lcom/aide/ui/views/CompletionListView;Lcom/aide/engine/SourceEntity;Landroid/view/View;I)V
    .registers 9

    .line 124
    invoke-virtual {p0}, Lcom/aide/ui/views/CompletionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/BaseAdapter;

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 132
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p3, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 133
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 135
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableTranslate()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 137
    const v2, 0x7f080025

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 138
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "\n"

    invoke-static {v2, v3, v4}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 140
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_3b
    invoke-static {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object p2

    if-eqz p2, :cond_4c

    .line 147
    invoke-virtual {p2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_49

    goto :goto_4c

    :cond_49
    const-string v3, "修正翻译"

    goto :goto_4e

    :cond_4c
    :goto_4c
    const-string v3, "翻译内容"

    :goto_4e
    invoke-interface {v1, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;

    invoke-direct {v4, p3, p2, v2, p0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$3;-><init>(Landroid/content/Context;Lcom/s1243808733/aide/completion/translate/TranslateTable;Ljava/lang/String;Landroid/widget/BaseAdapter;)V

    .line 148
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    if-eqz p2, :cond_6a

    .line 229
    const-string v2, "删除翻译"

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/aide/completion/translate/TranslateUtils$4;

    invoke-direct {v3, p2, p0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$4;-><init>(Lcom/s1243808733/aide/completion/translate/TranslateTable;Landroid/widget/BaseAdapter;)V

    .line 230
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_6a
    if-eqz p1, :cond_93

    .line 247
    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const-string p2, "BT"

    invoke-virtual {p0, p2}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_93

    .line 249
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_85

    const-string p0, "查看文档"

    goto :goto_87

    :cond_85
    const-string p0, "View Document"

    :goto_87
    invoke-interface {v1, p0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    new-instance p2, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;

    invoke-direct {p2, p3, p1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$5;-><init>(Landroid/content/Context;Lcom/aide/engine/SourceEntity;)V

    .line 250
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 328
    :cond_93
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public static query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;
    .registers 4

    .line 387
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    const-class v1, Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p0}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/aide/completion/translate/TranslateTable;
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-object p0

    :catchall_19
    move-exception p0

    .line 390
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Query DbException"

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static requestTranslate(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 2

    .line 69
    invoke-static {p1}, Lcom/s1243808733/aide/completion/translate/Translate;->youdaoTranslate(Ljava/lang/String;)V

    return-void
.end method

.method public static setLang(Ljava/lang/String;)V
    .registers 1

    .line 61
    sput-object p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->lang:Ljava/lang/String;

    return-void
.end method

.method public static setTargetLang(Ljava/lang/String;)V
    .registers 1

    .line 53
    sput-object p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->targetLang:Ljava/lang/String;

    return-void
.end method

.method public static translate(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V
    .registers 9

    .line 333
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {p1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object v2

    .line 335
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "not_translate"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_23

    if-nez v2, :cond_15

    return-void

    .line 337
    :cond_15
    invoke-virtual {v2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result p1

    if-ne p1, v1, :cond_22

    .line 338
    invoke-virtual {v2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getTranslation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V

    :cond_22
    return-void

    :cond_23
    if-nez v2, :cond_45

    .line 344
    new-instance v2, Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-direct {v2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;-><init>()V

    .line 345
    invoke-virtual {v2, p1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setSource(Ljava/lang/String;)V

    .line 346
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setTranslation(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v2, v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    .line 348
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z

    .line 349
    const-string v2, "已写入数据，请滑动列表进行翻译。"

    invoke-static {p0, v2, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 350
    invoke-static {p0, p1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->requestTranslate(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    .line 354
    :cond_45
    invoke-virtual {v2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v3

    if-ne v3, v1, :cond_53

    .line 355
    invoke-virtual {v2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getTranslation()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V

    goto :goto_8a

    .line 357
    :cond_53
    invoke-virtual {v2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v3

    if-nez v3, :cond_62

    .line 358
    const-string v2, "正在翻译中..."

    invoke-static {p0, v2, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 359
    invoke-static {p0, p1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->requestTranslate(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_8a

    .line 360
    :cond_62
    invoke-virtual {v2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8a

    .line 361
    invoke-virtual {v2}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getTranslation()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 363
    const-string v2, "翻译失败"

    invoke-static {p0, v2, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V

    goto :goto_7c

    .line 365
    :cond_79
    invoke-static {p0, v2, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 367
    :goto_7c
    invoke-static {p0, p1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->requestTranslate(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_2 .. :try_end_7f} :catchall_80

    goto :goto_8a

    :catchall_80
    move-exception p0

    .line 372
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "Translate DbException"

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public static update(Lcom/s1243808733/aide/completion/translate/TranslateTable;)V
    .registers 4

    .line 378
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/xutils/ex/DbException; {:try_start_1 .. :try_end_a} :catch_b

    goto :goto_16

    :catch_b
    move-exception p0

    .line 380
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Update DbException"

    invoke-static {p0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_16
    return-void
.end method

.method public static wordSegmentation(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 73
    const-string v0, " - "

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 75
    :cond_d
    invoke-static {p0}, Lcom/s1243808733/translate/TUtil;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

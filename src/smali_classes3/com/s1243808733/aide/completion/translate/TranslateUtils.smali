.class public Lcom/s1243808733/aide/completion/translate/TranslateUtils;
.super Ljava/lang/Object;
.source "TranslateUtils.java"


# static fields
.field public static final STATE_FAILED:I = -0x1

.field public static final STATE_START:I = 0x0

.field public static final STATE_SUCCESS:I = 0x1

.field public static db:Lorg/xutils/DbManager;

.field private static lang:Ljava/lang/String;

.field private static targetLang:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const-string v0, "auto"

    sput-object v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->lang:Ljava/lang/String;

    const-string v0, "zh"

    sput-object v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->targetLang:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, Lorg/xutils/DbManager;

    sput-object v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->db:Lorg/xutils/DbManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 396
    invoke-static {p1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 410
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 411
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x555556

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 418
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 419
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getDb()Lorg/xutils/DbManager;
    .registers 3

    const/4 v2, 0x1

    .line 79
    sget-object v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->db:Lorg/xutils/DbManager;

    if-nez v0, :cond_0

    .line 81
    :try_start_0
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDbFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDbFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbDir(Ljava/io/File;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000000;

    invoke-direct {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000000;-><init>()V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000001;

    invoke-direct {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000001;-><init>()V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->db:Lorg/xutils/DbManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    sget-object v0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->db:Lorg/xutils/DbManager;

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDbFile()Ljava/io/File;
    .registers 4

    .line 108
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "translate_file"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    const-string v1, "GetDbFile Exception"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    const-string v0, "translate/translate.db"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getSdDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
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
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/views/CompletionListView;",
            "Lcom/aide/engine/SourceEntity;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/aide/ui/views/CompletionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 132
    new-instance v4, Landroid/widget/PopupMenu;

    invoke-direct {v4, v3, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 133
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    .line 135
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableTranslate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const v1, 0x7f080025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 138
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    const-string v7, "\n"

    invoke-static {v6, v2, v7}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    if-nez v2, :cond_5

    .line 140
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    :goto_0
    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object v6

    .line 147
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3

    :cond_0
    const-string/jumbo v2, "\u7ffb\u8bd1\u5185\u5bb9"

    :goto_1
    invoke-interface {v5, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v7, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;

    invoke-direct {v7, v3, v6, v1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000003;-><init>(Landroid/content/Context;Lcom/s1243808733/aide/completion/translate/TranslateTable;Ljava/lang/String;Landroid/widget/BaseAdapter;)V

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 228
    if-eqz v6, :cond_1

    .line 229
    const-string v1, "\u5220\u9664\u7ffb\u8bd1"

    invoke-interface {v5, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000004;

    invoke-direct {v2, v6, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000004;-><init>(Lcom/s1243808733/aide/completion/translate/TranslateTable;Landroid/widget/BaseAdapter;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 247
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "BT"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u67e5\u770b\u6587\u6863"

    :goto_2
    invoke-interface {v5, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;

    invoke-direct {v1, v3, p1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils$100000006;-><init>(Landroid/content/Context;Lcom/aide/engine/SourceEntity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 328
    :cond_2
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 147
    :cond_3
    const-string v2, "\u4fee\u6b63\u7ffb\u8bd1"

    goto :goto_1

    .line 249
    :cond_4
    const-string v0, "View Document"

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method public static query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;
    .registers 5

    .line 386
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    const-string v1, "com.s1243808733.aide.completion.translate.TranslateTable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p0}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/completion/translate/TranslateTable;

    .line 392
    :goto_0
    return-object v0

    .line 386
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 388
    :catch_1
    move-exception v0

    .line 390
    const-string v1, "Query DbException"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/aide/completion/translate/TranslateTable;

    goto :goto_0
.end method

.method private static requestTranslate(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Lcom/s1243808733/aide/completion/translate/Translate;->youdaoTranslate(Ljava/lang/String;)V

    return-void
.end method

.method public static setLang(Ljava/lang/String;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    sput-object p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->lang:Ljava/lang/String;

    return-void
.end method

.method public static setTargetLang(Ljava/lang/String;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    sput-object p0, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->targetLang:Ljava/lang/String;

    return-void
.end method

.method public static translate(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    :try_start_0
    invoke-static {p1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object v0

    .line 335
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "not_translate"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    if-nez v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getTranslation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 372
    const-string v1, "Translate DbException"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    :cond_2
    if-nez v0, :cond_3

    .line 344
    :try_start_1
    new-instance v0, Lcom/s1243808733/aide/completion/translate/TranslateTable;

    invoke-direct {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;-><init>()V

    .line 345
    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setSource(Ljava/lang/String;)V

    .line 346
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setTranslation(Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    .line 348
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z

    .line 349
    const-string v0, "\u5df2\u5199\u5165\u6570\u636e\uff0c\u8bf7\u6ed1\u52a8\u5217\u8868\u8fdb\u884c\u7ffb\u8bd1\u3002"

    invoke-static {p0, v0, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 350
    invoke-static {p0, p1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->requestTranslate(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 355
    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getTranslation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_4
    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v1

    if-nez v1, :cond_5

    .line 358
    const-string/jumbo v0, "\u6b63\u5728\u7ffb\u8bd1\u4e2d..."

    invoke-static {p0, v0, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 359
    invoke-static {p0, p1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->requestTranslate(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_5
    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getTranslation()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 363
    const-string/jumbo v0, "\u7ffb\u8bd1\u5931\u8d25"

    invoke-static {p0, v0, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 367
    :goto_1
    invoke-static {p0, p1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->requestTranslate(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_6
    invoke-static {p0, v0, p2, p3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->appendText(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static update(Lcom/s1243808733/aide/completion/translate/TranslateTable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/completion/translate/TranslateTable;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 378
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 380
    const-string v1, "Update DbException"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static wordSegmentation(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 73
    const-string v0, " - "

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 74
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/s1243808733/translate/TUtil;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

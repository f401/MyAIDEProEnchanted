.class Lcom/s1243808733/aide/completion/translate/Translate$100000000;
.super Ljava/lang/Thread;
.source "Translate.java"


# instance fields
.field private final val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 49
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/Translate;->access$L1000001()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ytfyssx"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 56
    if-ne v0, v3, :cond_1

    .line 57
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "zh"

    invoke-static {v1, v2, v3}, Lcom/yt/plugin/translate/BingWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/translate/Translate;->access$1000000(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 60
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "zh"

    invoke-static {v1, v2, v3}, Lcom/yt/plugin/translate/YoudaoWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/translate/Translate;->access$1000000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "zh"

    invoke-static {v1, v2, v3}, Lcom/yt/plugin/translate/BingWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/translate/Translate;->access$1000000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 77
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "zh"

    invoke-static {v1, v2, v3}, Lcom/yt/plugin/translate/YoudaoWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/translate/Translate;->access$1000000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 80
    :try_start_3
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "zh"

    invoke-static {v1, v2, v3}, Lcom/yt/plugin/translate/YandexWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/translate/Translate;->access$1000000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    .line 83
    :try_start_4
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "zh"

    invoke-static {v1, v2, v3}, Lcom/yt/plugin/translate/GoogleCNTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/translate/Translate;->access$1000000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    .line 86
    :try_start_5
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/Translate;->access$L1000001()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 91
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    .line 92
    invoke-static {v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->update(Lcom/s1243808733/aide/completion/translate/TranslateTable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    .line 99
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/Translate;->access$L1000001()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 62
    :cond_2
    if-ne v0, v4, :cond_3

    .line 63
    :try_start_6
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "zh"

    invoke-static {v1, v2, v3}, Lcom/yt/plugin/translate/YandexWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/translate/Translate;->access$1000000(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :cond_3
    if-nez v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "zh"

    invoke-static {v1, v2, v3}, Lcom/yt/plugin/translate/GoogleCNTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/translate/Translate;->access$1000000(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$100000000;->val$content:Ljava/lang/String;

    invoke-static {v1}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "zh"

    invoke-static {v1, v2, v3}, Lcom/yt/plugin/translate/BingWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/translate/Translate;->access$1000000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

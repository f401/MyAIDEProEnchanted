.class Lcom/s1243808733/aide/completion/translate/Translate$1;
.super Ljava/lang/Thread;
.source "Translate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/completion/translate/Translate;->youdaoTranslate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 49
    const-string v0, "zh"

    const-string v1, "auto"

    invoke-static {}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$sfgetSTATUS()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :try_start_12
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ytfyssx"

    const/4 v5, 0x3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2e

    .line 57
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-static {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/yt/plugin/translate/BingWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$smdr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d8

    :cond_2e
    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 60
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-static {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/yt/plugin/translate/YoudaoWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$smdr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d8

    :cond_40
    if-ne v2, v4, :cond_51

    .line 63
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-static {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/yt/plugin/translate/YandexWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$smdr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d8

    :cond_51
    if-nez v2, :cond_62

    .line 66
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-static {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/yt/plugin/translate/GoogleCNTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$smdr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d8

    .line 69
    :cond_62
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-static {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/yt/plugin/translate/BingWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$smdr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_12 .. :try_end_6f} :catchall_70

    goto :goto_d8

    .line 74
    :catchall_70
    move-exception v2

    :try_start_71
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-static {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/yt/plugin/translate/BingWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$smdr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_71 .. :try_end_7e} :catchall_7f

    goto :goto_d8

    .line 77
    :catchall_7f
    move-exception v2

    :try_start_80
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-static {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/yt/plugin/translate/YoudaoWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$smdr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_8e

    goto :goto_d8

    .line 80
    :catchall_8e
    move-exception v2

    :try_start_8f
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-static {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/yt/plugin/translate/YandexWebTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$smdr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_8f .. :try_end_9c} :catchall_9d

    goto :goto_d8

    .line 83
    :catchall_9d
    move-exception v2

    :try_start_9e
    iget-object v2, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-static {v2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->wordSegmentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/yt/plugin/translate/GoogleCNTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$smdr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_9e .. :try_end_ab} :catchall_ac

    goto :goto_d8

    .line 86
    :catchall_ac
    move-exception v0

    :try_start_ad
    invoke-static {}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$sfgetSTATUS()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->query(Ljava/lang/String;)Lcom/s1243808733/aide/completion/translate/TranslateTable;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 88
    invoke-virtual {v0}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->getState()I

    move-result v1

    if-ne v1, v4, :cond_c5

    goto :goto_cd

    .line 91
    :cond_c5
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/completion/translate/TranslateTable;->setState(I)V

    .line 92
    invoke-static {v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->update(Lcom/s1243808733/aide/completion/translate/TranslateTable;)V
    :try_end_cc
    .catchall {:try_start_ad .. :try_end_cc} :catchall_ce

    goto :goto_d8

    :cond_cd
    :goto_cd
    return-void

    .line 99
    :catchall_ce
    move-exception v0

    invoke-static {}, Lcom/s1243808733/aide/completion/translate/Translate;->-$$Nest$sfgetSTATUS()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/completion/translate/Translate$1;->val$content:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d8
    return-void
.end method

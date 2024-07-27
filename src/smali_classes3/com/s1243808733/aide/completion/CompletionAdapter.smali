.class public Lcom/s1243808733/aide/completion/CompletionAdapter;
.super Ljava/lang/Object;
.source "CompletionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;,
        Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;
    }
.end annotation


# static fields
.field private static sIDHolder:Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptSourceEntity(Lcom/aide/engine/SourceEntity;Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "completion_use_contains"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$L1000000()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;
    .registers 1

    sget-object v0, Lcom/s1243808733/aide/completion/CompletionAdapter;->sIDHolder:Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;)V
    .registers 1

    sput-object p0, Lcom/s1243808733/aide/completion/CompletionAdapter;->sIDHolder:Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    return-void
.end method

.method public static getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;
    .registers 1

    .line 41
    sget-object v0, Lcom/s1243808733/aide/completion/CompletionAdapter;->sIDHolder:Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    invoke-direct {v0}, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/completion/CompletionAdapter;->sIDHolder:Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    .line 42
    :cond_0
    sget-object v0, Lcom/s1243808733/aide/completion/CompletionAdapter;->sIDHolder:Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    return-object v0
.end method

.method public static hookSourceEntity(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private static isEnableTranslate()Z
    .registers 1

    .line 192
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableTranslate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static onItemLongClick(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 212
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 213
    const-string v1, "FH"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/CompletionListView;

    .line 215
    invoke-virtual {v0, p2}, Lcom/aide/ui/views/CompletionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 216
    instance-of v2, v1, Lcom/aide/engine/SourceEntity;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/aide/engine/SourceEntity;

    .line 219
    :goto_0
    invoke-static {v0, v1, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->onItemLongClick(Lcom/aide/ui/views/CompletionListView;Lcom/aide/engine/SourceEntity;Landroid/view/View;I)V

    return-void

    .line 216
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Lcom/aide/engine/SourceEntity;

    goto :goto_0
.end method

.method public static setView(Ljava/lang/Object;ILandroid/view/View;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/16 v7, 0x8

    .line 88
    check-cast p0, Landroid/widget/ArrayAdapter;

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 90
    const v1, 0x7f080025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v5

    .line 94
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    .line 96
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 102
    if-nez v3, :cond_2

    .line 103
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u6ca1\u6709\u5339\u914d\u5230\u7b26\u5408\u7684\u5185\u5bb9"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object v2

    iget v2, v2, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->translation:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_1
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object v2

    iget v2, v2, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->apiInfoView:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 108
    if-eqz v2, :cond_2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_2
    instance-of v2, v3, Lcom/aide/engine/SourceEntity;

    if-eqz v2, :cond_6

    move-object v2, v3

    check-cast v2, Lcom/aide/engine/SourceEntity;

    .line 116
    :goto_0
    :try_start_0
    const-string v3, "FH"

    invoke-virtual {v5, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/j;

    .line 117
    invoke-static {v3}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v3

    const-string v4, "VH"

    invoke-virtual {v3, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 119
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 120
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 121
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    const/16 v7, 0x21

    invoke-virtual {v6, v4, v5, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 127
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object v3

    iget v3, v3, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->translation:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .line 135
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->isEnableTranslate()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 140
    invoke-static {v4, v3, v1, v3}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->translate(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 145
    :cond_4
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object v3

    iget v3, v3, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->apiInfoView:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 146
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object v3

    iget v3, v3, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->apiInfo:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 148
    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    const v1, 0x7f080001

    invoke-virtual {v5, v1, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 155
    if-eqz v2, :cond_5

    .line 156
    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->VH()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->EQ()Lcom/aide/engine/SourceEntity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/engine/SourceEntity$a;->name()Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v8, "completion_show_api_info"

    const/4 v9, 0x1

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    move-object v0, v2

    check-cast v0, Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/s1243808733/aide/util/BaseObject;

    .line 162
    const/4 v8, 0x0

    check-cast v8, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    .line 163
    iget-object v9, v1, Lcom/s1243808733/aide/util/BaseObject;->baseObject_Data:Ljava/util/Map;

    if-nez v9, :cond_7

    .line 164
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v9, v1, Lcom/s1243808733/aide/util/BaseObject;->baseObject_Data:Ljava/util/Map;

    .line 168
    :goto_3
    if-eqz v8, :cond_8

    .line 169
    invoke-static {v5, v8}, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->setTo(Landroid/widget/TextView;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :cond_5
    :goto_4
    return-void

    :cond_6
    move-object v2, v4

    .line 112
    check-cast v2, Lcom/aide/engine/SourceEntity;

    goto/16 :goto_0

    .line 166
    :cond_7
    :try_start_3
    iget-object v1, v1, Lcom/s1243808733/aide/util/BaseObject;->baseObject_Data:Ljava/util/Map;

    const-string v8, "api"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-object v8, v1

    goto :goto_3

    .line 171
    :cond_8
    new-instance v1, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;

    invoke-direct/range {v1 .. v7}, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;-><init>(Lcom/aide/engine/SourceEntity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;Landroid/view/View;)V

    .line 173
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 180
    new-array v2, v10, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_4

    .line 127
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 140
    :catch_2
    move-exception v3

    goto/16 :goto_2
.end method

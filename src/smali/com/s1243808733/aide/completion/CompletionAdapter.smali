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
.method static bridge synthetic -$$Nest$sfgetsIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;
    .registers 1

    sget-object v0, Lcom/s1243808733/aide/completion/CompletionAdapter;->sIDHolder:Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptSourceEntity(Lcom/aide/engine/SourceEntity;Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 63
    :cond_8
    invoke-virtual {p0}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "completion_use_contains"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 70
    :cond_26
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;
    .registers 1

    .line 41
    sget-object v0, Lcom/s1243808733/aide/completion/CompletionAdapter;->sIDHolder:Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    if-nez v0, :cond_b

    new-instance v0, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    invoke-direct {v0}, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/completion/CompletionAdapter;->sIDHolder:Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    .line 42
    :cond_b
    sget-object v0, Lcom/s1243808733/aide/completion/CompletionAdapter;->sIDHolder:Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    return-object v0
.end method

.method public static hookSourceEntity(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static onItemLongClick(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 5

    .line 212
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    .line 213
    const-string v0, "FH"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/aide/ui/views/CompletionListView;

    .line 215
    invoke-virtual {p0, p2}, Lcom/aide/ui/views/CompletionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 217
    instance-of v1, v0, Lcom/aide/engine/SourceEntity;

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/aide/engine/SourceEntity;

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 219
    :goto_1c
    invoke-static {p0, v0, p1, p2}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->onItemLongClick(Lcom/aide/ui/views/CompletionListView;Lcom/aide/engine/SourceEntity;Landroid/view/View;I)V

    return-void
.end method

.method public static setView(Ljava/lang/Object;ILandroid/view/View;)V
    .registers 15

    .line 88
    check-cast p0, Landroid/widget/ArrayAdapter;

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 90
    const v1, 0x7f080025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    .line 94
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    .line 98
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFlags(I)V

    const/16 v2, 0x8

    if-nez v0, :cond_53

    .line 103
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, "没有匹配到符合的内容"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_33
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object v3

    iget v3, v3, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->translation:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_44

    .line 106
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_44
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object v3

    iget v3, v3, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->apiInfoView:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 108
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_53
    instance-of v3, v0, Lcom/aide/engine/SourceEntity;

    const/4 v4, 0x0

    if-eqz v3, :cond_5c

    check-cast v0, Lcom/aide/engine/SourceEntity;

    move-object v6, v0

    goto :goto_5d

    :cond_5c
    move-object v6, v4

    .line 116
    :goto_5d
    :try_start_5d
    const-string v0, "FH"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/aide/ui/j;

    .line 117
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const-string v0, "VH"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 118
    invoke-static {p0}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 119
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 121
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 123
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v7

    invoke-direct {v0, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 122
    add-int/2addr p0, v3

    const/16 v7, 0x21

    invoke-virtual {v5, v0, v3, p0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 127
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_b2
    .catchall {:try_start_5d .. :try_end_b2} :catchall_b3

    goto :goto_b4

    .line 180
    :catchall_b3
    move-exception p0

    .line 134
    :cond_b4
    :goto_b4
    :try_start_b4
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object p0

    iget p0, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->translation:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 135
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->isEnableTranslate()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 140
    invoke-static {p0, v0, v1, v0}, Lcom/s1243808733/aide/completion/translate/TranslateUtils;->translate(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;)V
    :try_end_d7
    .catchall {:try_start_b4 .. :try_end_d7} :catchall_d8

    goto :goto_d9

    .line 180
    :catchall_d8
    move-exception p0

    .line 145
    :cond_d9
    :goto_d9
    const/4 p0, 0x1

    :try_start_da
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object v0

    iget v0, v0, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->apiInfoView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 146
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->getIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object v0

    iget v0, v0, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->apiInfo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Landroid/widget/TextView;

    .line 148
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 153
    const p1, 0x7f080001

    invoke-virtual {v9, p1, v10}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    if-eqz v6, :cond_177

    .line 156
    invoke-virtual {v6}, Lcom/aide/engine/SourceEntity;->VH()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-virtual {v6}, Lcom/aide/engine/SourceEntity;->EQ()Lcom/aide/engine/SourceEntity$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aide/engine/SourceEntity$a;->name()Ljava/lang/String;

    move-result-object v8

    .line 159
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "completion_show_api_info"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_177

    .line 160
    move-object p1, v6

    check-cast p1, Lcom/s1243808733/aide/util/BaseObject;

    .line 163
    iget-object p2, p1, Lcom/s1243808733/aide/util/BaseObject;->baseObject_Data:Ljava/util/Map;

    if-nez p2, :cond_14f

    .line 164
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p1, Lcom/s1243808733/aide/util/BaseObject;->baseObject_Data:Ljava/util/Map;

    goto :goto_15a

    .line 166
    :cond_14f
    iget-object p1, p1, Lcom/s1243808733/aide/util/BaseObject;->baseObject_Data:Ljava/util/Map;

    const-string p2, "api"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    :goto_15a
    if-eqz v4, :cond_160

    .line 169
    invoke-static {v9, v4}, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->setTo(Landroid/widget/TextView;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)V

    goto :goto_177

    .line 171
    :cond_160
    new-instance p1, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;-><init>(Lcom/aide/engine/SourceEntity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;Landroid/view/View;)V

    .line 173
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V
    :try_end_16d
    .catchall {:try_start_da .. :try_end_16d} :catchall_16e

    goto :goto_177

    :catchall_16e
    move-exception p1

    .line 180
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :cond_177
    :goto_177
    return-void
.end method

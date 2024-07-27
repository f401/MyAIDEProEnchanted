.class public Lcom/baidu/mobstat/dd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/dd$a;,
        Lcom/baidu/mobstat/dd$b;,
        Lcom/baidu/mobstat/dd$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/dd$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/mobstat/df;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/baidu/mobstat/df;Z)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dd;->b:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/dd;->c:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/baidu/mobstat/dd;->d:Lcom/baidu/mobstat/df;

    .line 32
    iput-boolean p3, p0, Lcom/baidu/mobstat/dd;->e:Z

    .line 33
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/dd$c;Landroid/view/View;)V
    .registers 10

    .line 84
    if-nez p2, :cond_1

    .line 141
    :cond_0
    return-void

    .line 89
    :cond_1
    invoke-static {p2}, Lcom/baidu/mobstat/cd;->a(Landroid/view/View;)Z

    move-result v0

    .line 91
    if-nez v0, :cond_0

    .line 101
    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->c(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v1, Lcom/baidu/mobstat/dd$c;

    invoke-direct {v1, p2, p3, p4}, Lcom/baidu/mobstat/dd$c;-><init>(Landroid/view/View;Lcom/baidu/mobstat/dd$c;Landroid/view/View;)V

    .line 109
    if-eqz p3, :cond_5

    .line 110
    invoke-virtual {v1}, Lcom/baidu/mobstat/dd$c;->a()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v1}, Lcom/baidu/mobstat/dd$c;->b()Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-boolean v3, p0, Lcom/baidu/mobstat/dd;->a:Z

    if-eqz v3, :cond_6

    .line 114
    invoke-virtual {v1}, Lcom/baidu/mobstat/dd$c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    .line 116
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/baidu/mobstat/dd;->e:Z

    if-eqz v2, :cond_5

    .line 117
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 118
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accumulate view:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/baidu/mobstat/de;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 121
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accumulate view:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/baidu/mobstat/de;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 126
    :cond_4
    iget-object v2, p0, Lcom/baidu/mobstat/dd;->d:Lcom/baidu/mobstat/df;

    invoke-virtual {v2, p2, v0}, Lcom/baidu/mobstat/df;->a(Landroid/view/View;Z)V

    .line 130
    :cond_5
    instance-of v0, p2, Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 134
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 135
    check-cast p2, Landroid/view/ViewGroup;

    .line 137
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 138
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1, p4}, Lcom/baidu/mobstat/dd;->a(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/dd$c;Landroid/view/View;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_6
    iget-object v3, p0, Lcom/baidu/mobstat/dd;->b:Ljava/util/List;

    invoke-direct {p0, v3, v0, v2}, Lcom/baidu/mobstat/dd;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/dd$b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/dd$b;

    .line 146
    iget-boolean v1, v0, Lcom/baidu/mobstat/dd$b;->c:Z

    if-eqz v1, :cond_1

    move-object v1, p3

    .line 148
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    iget-object v0, v0, Lcom/baidu/mobstat/dd$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 157
    :goto_1
    return v0

    :cond_1
    move-object v1, p2

    .line 146
    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 4

    .line 75
    iget-boolean v0, p0, Lcom/baidu/mobstat/dd;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mobstat/dd;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/dd;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/dd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/baidu/mobstat/dd;->a(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/dd$c;Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    :try_start_0
    const-string v1, "meta"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 42
    const-string v2, "matchAll"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 43
    if-eqz v1, :cond_3

    move v1, v10

    :goto_1
    iput-boolean v1, p0, Lcom/baidu/mobstat/dd;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_2
    iget-boolean v1, p0, Lcom/baidu/mobstat/dd;->a:Z

    if-nez v1, :cond_0

    .line 53
    :try_start_1
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    move-object v7, v0

    move v8, v9

    .line 54
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 55
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 57
    const-string v2, "page"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    const-string v2, "layout"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    const-string v2, "contentAsLabel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 61
    const-string v2, "ignoreCellIndex"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 62
    if-eqz v1, :cond_4

    move v5, v10

    .line 64
    :goto_4
    iget-object v1, p0, Lcom/baidu/mobstat/dd;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    new-instance v1, Lcom/baidu/mobstat/dd$b;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/dd$b;-><init>(Lcom/baidu/mobstat/dd;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 66
    iget-object v2, p0, Lcom/baidu/mobstat/dd;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :cond_2
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_3

    :cond_3
    move v1, v9

    .line 43
    goto :goto_1

    :cond_4
    move v5, v9

    .line 62
    goto :goto_4

    .line 44
    :catch_0
    move-exception v1

    goto :goto_2

    .line 69
    :catch_1
    move-exception v1

    goto :goto_0
.end method

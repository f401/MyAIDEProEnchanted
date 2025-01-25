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
            "Ljava/util/List<",
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

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/dd;->c:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/baidu/mobstat/dd;->d:Lcom/baidu/mobstat/df;

    .line 32
    iput-boolean p3, p0, Lcom/baidu/mobstat/dd;->e:Z

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/dd$c;Landroid/view/View;)V
    .registers 11

    if-nez p2, :cond_3

    return-void

    .line 89
    :cond_3
    invoke-static {p2}, Lcom/baidu/mobstat/cd;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 101
    :cond_a
    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->c(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 106
    :cond_11
    new-instance v0, Lcom/baidu/mobstat/dd$c;

    invoke-direct {v0, p2, p3, p4}, Lcom/baidu/mobstat/dd$c;-><init>(Landroid/view/View;Lcom/baidu/mobstat/dd$c;Landroid/view/View;)V

    if-eqz p3, :cond_a2

    .line 110
    invoke-virtual {v0}, Lcom/baidu/mobstat/dd$c;->a()Ljava/lang/String;

    move-result-object p3

    .line 111
    invoke-virtual {v0}, Lcom/baidu/mobstat/dd$c;->b()Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-boolean v2, p0, Lcom/baidu/mobstat/dd;->a:Z

    if-eqz v2, :cond_2d

    .line 114
    invoke-virtual {v0}, Lcom/baidu/mobstat/dd$c;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;Ljava/lang/String;)Z

    move-result p3

    goto :goto_33

    :cond_2d
    iget-object v2, p0, Lcom/baidu/mobstat/dd;->b:Ljava/util/List;

    invoke-direct {p0, v2, p3, v1}, Lcom/baidu/mobstat/dd;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    :goto_33
    if-nez p3, :cond_39

    .line 116
    iget-boolean v1, p0, Lcom/baidu/mobstat/dd;->e:Z

    if-eqz v1, :cond_a2

    .line 117
    :cond_39
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v1

    const-string v2, "; content:"

    const-string v3, "accumulate view:"

    if-eqz v1, :cond_6e

    if-eqz p3, :cond_6e

    .line 118
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/baidu/mobstat/de;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {v1, v4}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 121
    :cond_6e
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 122
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/baidu/mobstat/de;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 126
    :cond_9d
    iget-object v1, p0, Lcom/baidu/mobstat/dd;->d:Lcom/baidu/mobstat/df;

    invoke-virtual {v1, p2, p3}, Lcom/baidu/mobstat/df;->a(Landroid/view/View;Z)V

    .line 130
    :cond_a2
    instance-of p3, p2, Landroid/webkit/WebView;

    if-eqz p3, :cond_a7

    return-void

    .line 134
    :cond_a7
    instance-of p3, p2, Landroid/view/ViewGroup;

    if-eqz p3, :cond_be

    .line 135
    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    .line 137
    :goto_ae
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p3, v1, :cond_be

    .line 138
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0, p4}, Lcom/baidu/mobstat/dd;->a(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/dd$c;Landroid/view/View;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_ae

    :cond_be
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/dd$b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/dd$b;

    .line 146
    iget-boolean v1, v0, Lcom/baidu/mobstat/dd$b;->c:Z

    if-eqz v1, :cond_16

    move-object v1, p3

    goto :goto_17

    :cond_16
    move-object v1, p2

    .line 148
    :goto_17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_4

    .line 152
    :cond_1e
    iget-object v0, v0, Lcom/baidu/mobstat/dd$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 4

    .line 75
    iget-boolean v0, p0, Lcom/baidu/mobstat/dd;->e:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/baidu/mobstat/dd;->a:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/mobstat/dd;->b:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    return-void

    .line 79
    :cond_13
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/baidu/mobstat/dd;->a(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/dd$c;Landroid/view/View;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 41
    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_5
    const-string v2, "meta"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 42
    const-string v3, "matchAll"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 43
    :goto_18
    iput-boolean v2, p0, Lcom/baidu/mobstat/dd;->a:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception v2

    .line 48
    :goto_1c
    iget-boolean v2, p0, Lcom/baidu/mobstat/dd;->a:Z

    if-eqz v2, :cond_21

    return-void

    .line 53
    :cond_21
    :try_start_21
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    const/4 v2, 0x0

    .line 54
    :goto_2a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6b

    .line 55
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 57
    const-string v4, "page"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    const-string v4, "layout"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    const-string v4, "contentAsLabel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 61
    const-string v4, "ignoreCellIndex"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_52

    const/4 v9, 0x1

    goto :goto_53

    :cond_52
    const/4 v9, 0x0

    .line 64
    :goto_53
    iget-object v3, p0, Lcom/baidu/mobstat/dd;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 65
    new-instance v3, Lcom/baidu/mobstat/dd$b;

    move-object v5, v3

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/baidu/mobstat/dd$b;-><init>(Lcom/baidu/mobstat/dd;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 66
    iget-object v4, p0, Lcom/baidu/mobstat/dd;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_67} :catch_6a

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :catch_6a
    move-exception p1

    :cond_6b
    return-void
.end method

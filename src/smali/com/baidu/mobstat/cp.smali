.class public Lcom/baidu/mobstat/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/cp$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/baidu/mobstat/cp;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/baidu/mobstat/cp;

    invoke-direct {v0}, Lcom/baidu/mobstat/cp;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/cp;->a:Lcom/baidu/mobstat/cp;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cp;->b:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cp;->c:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cp;->d:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cp;->e:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cp;->f:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/cp;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/cp;
    .registers 1

    .line 26
    sget-object v0, Lcom/baidu/mobstat/cp;->a:Lcom/baidu/mobstat/cp;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 84
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1b

    .line 86
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 89
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_8
    sget v0, Lcom/baidu/mobstat/cp$a;->a:I

    if-ne p2, v0, :cond_2b

    .line 52
    iget-object p2, p0, Lcom/baidu/mobstat/cp;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 54
    iget-object p2, p0, Lcom/baidu/mobstat/cp;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/mobstat/cp;->b:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 55
    iget-object p2, p0, Lcom/baidu/mobstat/cp;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2a
    return-object p2

    .line 59
    :cond_2b
    sget v0, Lcom/baidu/mobstat/cp$a;->c:I

    if-ne p2, v0, :cond_4e

    .line 60
    iget-object p2, p0, Lcom/baidu/mobstat/cp;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 62
    iget-object p2, p0, Lcom/baidu/mobstat/cp;->g:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/mobstat/cp;->f:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 63
    iget-object p2, p0, Lcom/baidu/mobstat/cp;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4d
    return-object p2

    .line 68
    :cond_4e
    iget-object p2, p0, Lcom/baidu/mobstat/cp;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 70
    iget-object p2, p0, Lcom/baidu/mobstat/cp;->e:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/mobstat/cp;->d:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/cp;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 71
    iget-object p2, p0, Lcom/baidu/mobstat/cp;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_6c
    return-object p2
.end method

.method public a(I)Lorg/json/JSONObject;
    .registers 5

    .line 104
    sget v0, Lcom/baidu/mobstat/cp$a;->a:I

    if-ne p1, v0, :cond_7

    .line 105
    iget-object p1, p0, Lcom/baidu/mobstat/cp;->b:Ljava/util/HashMap;

    goto :goto_10

    .line 106
    :cond_7
    sget v0, Lcom/baidu/mobstat/cp$a;->c:I

    if-ne p1, v0, :cond_e

    .line 107
    iget-object p1, p0, Lcom/baidu/mobstat/cp;->f:Ljava/util/HashMap;

    goto :goto_10

    .line 109
    :cond_e
    iget-object p1, p0, Lcom/baidu/mobstat/cp;->d:Ljava/util/HashMap;

    .line 112
    :goto_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_18

    return-object v0

    .line 117
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    :try_start_21
    new-instance p1, Lcom/baidu/mobstat/cp$1;

    invoke-direct {p1, p0}, Lcom/baidu/mobstat/cp$1;-><init>(Lcom/baidu/mobstat/cp;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_2a

    goto :goto_2b

    .line 134
    :catch_2a
    move-exception p1

    .line 129
    :goto_2b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    :try_start_47
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_2f

    :catch_4b
    move-exception v1

    goto :goto_2f

    :cond_4d
    return-object v0
.end method

.method public b()V
    .registers 2

    .line 157
    sget v0, Lcom/baidu/mobstat/cp$a;->a:I

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/cp;->b(I)V

    .line 158
    sget v0, Lcom/baidu/mobstat/cp$a;->c:I

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/cp;->b(I)V

    .line 159
    sget v0, Lcom/baidu/mobstat/cp$a;->b:I

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/cp;->b(I)V

    return-void
.end method

.method public b(I)V
    .registers 3

    .line 144
    sget v0, Lcom/baidu/mobstat/cp$a;->a:I

    if-ne p1, v0, :cond_f

    .line 145
    iget-object p1, p0, Lcom/baidu/mobstat/cp;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 146
    iget-object p1, p0, Lcom/baidu/mobstat/cp;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto :goto_28

    .line 147
    :cond_f
    sget v0, Lcom/baidu/mobstat/cp$a;->c:I

    if-ne p1, v0, :cond_1e

    .line 148
    iget-object p1, p0, Lcom/baidu/mobstat/cp;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 149
    iget-object p1, p0, Lcom/baidu/mobstat/cp;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto :goto_28

    .line 151
    :cond_1e
    iget-object p1, p0, Lcom/baidu/mobstat/cp;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 152
    iget-object p1, p0, Lcom/baidu/mobstat/cp;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :goto_28
    return-void
.end method

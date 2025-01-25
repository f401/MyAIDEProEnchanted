.class public Lcom/baidu/mobstat/df$a;
.super Lcom/baidu/mobstat/df;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/df$a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/mobstat/df$b;

.field private final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/baidu/mobstat/df$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/ref/WeakReference;Lcom/baidu/mobstat/df$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/baidu/mobstat/df$b;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/baidu/mobstat/df;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/baidu/mobstat/df$a;->a:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p3, p0, Lcom/baidu/mobstat/df$a;->b:Lcom/baidu/mobstat/df$b;

    .line 39
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/df$a;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 5

    .line 159
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 160
    const-string v2, "getAccessibilityDelegate"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 161
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$AccessibilityDelegate;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-object v0, p1

    goto :goto_14

    :catch_13
    move-exception p1

    :goto_14
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/df$a;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/baidu/mobstat/df$a;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mobstat/df$a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/baidu/mobstat/df$a;->a:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/df$a;)Lcom/baidu/mobstat/df$b;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/baidu/mobstat/df$a;->b:Lcom/baidu/mobstat/df$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/baidu/mobstat/df$a;->c:Ljava/util/WeakHashMap;

    if-nez v0, :cond_5

    return-void

    .line 181
    :cond_5
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 183
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobstat/df$a$a;

    .line 185
    invoke-virtual {v1}, Lcom/baidu/mobstat/df$a$a;->a()Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    .line 186
    invoke-virtual {v2, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_d

    .line 189
    :cond_2d
    iget-object v0, p0, Lcom/baidu/mobstat/df$a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .registers 5

    .line 171
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/baidu/mobstat/df$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/baidu/mobstat/df$a;->a(Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/df$a;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v5

    .line 143
    instance-of v0, v5, Lcom/baidu/mobstat/df$a$a;

    if-nez v0, :cond_1c

    .line 144
    new-instance v7, Lcom/baidu/mobstat/df$a$a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/df$a$a;-><init>(Lcom/baidu/mobstat/df$a;Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Landroid/view/View$AccessibilityDelegate;Z)V

    .line 146
    invoke-virtual {p2, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 147
    iget-object p1, p0, Lcom/baidu/mobstat/df$a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 150
    :cond_1c
    check-cast v5, Lcom/baidu/mobstat/df$a$a;

    .line 152
    invoke-virtual {v5, p4}, Lcom/baidu/mobstat/df$a$a;->a(Z)V

    :goto_21
    return-void
.end method

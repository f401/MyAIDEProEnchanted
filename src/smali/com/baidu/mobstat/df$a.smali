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
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/mobstat/df$b;

.field private final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/baidu/mobstat/df$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/ref/WeakReference;Lcom/baidu/mobstat/df$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
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
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/df$a;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 4

    const/4 v1, 0x0

    .line 159
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 160
    const-string v2, "getAccessibilityDelegate"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AccessibilityDelegate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/df$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/baidu/mobstat/df$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/df$a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/baidu/mobstat/df$a;->a:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/df$a;)Lcom/baidu/mobstat/df$b;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/baidu/mobstat/df$a;->b:Lcom/baidu/mobstat/df$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/baidu/mobstat/df$a;->c:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/df$a$a;

    .line 185
    invoke-virtual {v0}, Lcom/baidu/mobstat/df$a$a;->a()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    .line 186
    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/df$a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 2

    .line 171
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/baidu/mobstat/df$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/baidu/mobstat/df$a;->a(Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
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

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/baidu/mobstat/df$a$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/df$a$a;-><init>(Lcom/baidu/mobstat/df$a;Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Landroid/view/View$AccessibilityDelegate;Z)V

    .line 146
    invoke-virtual {p2, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 147
    iget-object v1, p0, Lcom/baidu/mobstat/df$a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    check-cast v5, Lcom/baidu/mobstat/df$a$a;

    .line 152
    invoke-virtual {v5, p4}, Lcom/baidu/mobstat/df$a$a;->a(Z)V

    goto :goto_0
.end method

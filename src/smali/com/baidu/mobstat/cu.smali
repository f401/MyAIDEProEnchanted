.class public Lcom/baidu/mobstat/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Lcom/baidu/mobstat/cu;

.field private static volatile l:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Activity;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Landroid/graphics/PointF;

.field private j:Lcom/baidu/mobstat/da;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/baidu/mobstat/cu;

    invoke-direct {v0}, Lcom/baidu/mobstat/cu;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/cu;->k:Lcom/baidu/mobstat/cu;

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/cu;->l:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/baidu/mobstat/da;->a()Lcom/baidu/mobstat/da;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/cu;->j:Lcom/baidu/mobstat/da;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/cu;)Landroid/graphics/PointF;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/baidu/mobstat/cu;->i:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mobstat/cu;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/baidu/mobstat/cu;->i:Landroid/graphics/PointF;

    return-object p1
.end method

.method private a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3

    :goto_0
    if-eqz p1, :cond_d

    .line 207
    instance-of v0, p1, Lcom/baidu/mobstat/cg;

    if-eqz v0, :cond_d

    .line 208
    check-cast p1, Lcom/baidu/mobstat/cg;

    .line 209
    invoke-virtual {p1}, Lcom/baidu/mobstat/cg;->a()Landroid/view/Window$Callback;

    move-result-object p1

    goto :goto_0

    :cond_d
    return-object p1
.end method

.method public static a()Lcom/baidu/mobstat/cu;
    .registers 1

    .line 45
    sget-object v0, Lcom/baidu/mobstat/cu;->k:Lcom/baidu/mobstat/cu;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/cu;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/baidu/mobstat/cu;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Z)V
    .registers 1

    if-eqz p0, :cond_5

    .line 72
    invoke-static {}, Lcom/baidu/mobstat/da;->b()V

    .line 75
    :cond_5
    sput-boolean p0, Lcom/baidu/mobstat/cu;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/cu;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/baidu/mobstat/cu;->c:Z

    return p1
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 10

    if-nez p3, :cond_3

    return-void

    .line 319
    :cond_3
    iget-object v1, p0, Lcom/baidu/mobstat/cu;->b:Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/dg;->a(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/cu;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/baidu/mobstat/cu;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/mobstat/cu;)Landroid/content/Context;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/baidu/mobstat/cu;->a:Landroid/content/Context;

    return-object p0
.end method

.method private c(Landroid/app/Activity;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 97
    :cond_a
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 104
    :cond_11
    new-instance v1, Lcom/baidu/mobstat/cg;

    new-instance v2, Lcom/baidu/mobstat/cu$1;

    invoke-direct {v2, p0}, Lcom/baidu/mobstat/cu$1;-><init>(Lcom/baidu/mobstat/cu;)V

    invoke-direct {v1, v0, v2}, Lcom/baidu/mobstat/cg;-><init>(Landroid/view/Window$Callback;Lcom/baidu/mobstat/cg$a;)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public static c()Z
    .registers 1

    .line 79
    sget-boolean v0, Lcom/baidu/mobstat/cu;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/baidu/mobstat/cu;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/baidu/mobstat/cu;->h:Ljava/lang/String;

    return-object p0
.end method

.method private d(Landroid/app/Activity;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 191
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 196
    :cond_a
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/cu;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method private d()Z
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/baidu/mobstat/cu;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method private e()V
    .registers 7

    .line 257
    iget-boolean v0, p0, Lcom/baidu/mobstat/cu;->c:Z

    if-eqz v0, :cond_5

    return-void

    .line 262
    :cond_5
    iget-boolean v0, p0, Lcom/baidu/mobstat/cu;->d:Z

    if-nez v0, :cond_16

    .line 263
    iget-object v0, p0, Lcom/baidu/mobstat/cu;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/cu;->e:Ljava/lang/String;

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/cu;->d:Z

    .line 268
    :cond_16
    iget-wide v0, p0, Lcom/baidu/mobstat/cu;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_36

    .line 269
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/cu;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dl;->n(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/cu;->f:J

    .line 270
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/cu;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dl;->o(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/cu;->g:J

    .line 277
    :cond_36
    iget-wide v0, p0, Lcom/baidu/mobstat/cu;->g:J

    .line 280
    iget-boolean v2, p0, Lcom/baidu/mobstat/cu;->d:Z

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/baidu/mobstat/cu;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 281
    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/mobstat/cu;->f:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_52

    .line 282
    :cond_4f
    invoke-direct {p0}, Lcom/baidu/mobstat/cu;->f()V

    :cond_52
    return-void
.end method

.method private f()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/baidu/mobstat/cu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 292
    :cond_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mobstat/cu$2;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/cu$2;-><init>(Lcom/baidu/mobstat/cu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 310
    const-string v1, "downloadThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 4

    .line 144
    invoke-direct {p0}, Lcom/baidu/mobstat/cu;->d()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 149
    :cond_7
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/mobstat/cu;->a(Z)V

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/cu;->a:Landroid/content/Context;

    .line 152
    iput-object p1, p0, Lcom/baidu/mobstat/cu;->b:Landroid/app/Activity;

    .line 155
    invoke-direct {p0}, Lcom/baidu/mobstat/cu;->e()V

    .line 158
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cu;->c(Landroid/app/Activity;)V

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/cu;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .registers 5

    .line 167
    instance-of v0, p1, Lcom/baidu/mobstat/IIgnoreAutoEvent;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p2, :cond_f

    .line 171
    iget-object p2, p0, Lcom/baidu/mobstat/cu;->j:Lcom/baidu/mobstat/da;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v0}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;ZLorg/json/JSONObject;Z)V

    goto :goto_14

    .line 173
    :cond_f
    iget-object p2, p0, Lcom/baidu/mobstat/cu;->j:Lcom/baidu/mobstat/da;

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;Z)V

    :goto_14
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V
    .registers 5

    .line 233
    iget-object p2, p0, Lcom/baidu/mobstat/cu;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 234
    iget-object p2, p0, Lcom/baidu/mobstat/cu;->a:Landroid/content/Context;

    sget-object v0, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/baidu/mobstat/dj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/mobstat/cu;->e:Ljava/lang/String;

    .line 237
    :cond_12
    iget-object p2, p0, Lcom/baidu/mobstat/cu;->e:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/cu;->b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/dg;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cs;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroid/graphics/PointF;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/baidu/mobstat/cu;->i:Landroid/graphics/PointF;

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .registers 3

    .line 220
    invoke-direct {p0}, Lcom/baidu/mobstat/cu;->d()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/cu;->b:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/cu;->d(Landroid/app/Activity;)V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/cu;->b:Landroid/app/Activity;

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/cu;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/baidu/mobstat/cu;->h:Ljava/lang/String;

    return-void
.end method

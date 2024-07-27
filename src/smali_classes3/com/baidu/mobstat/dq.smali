.class public Lcom/baidu/mobstat/dq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/baidu/mobstat/dq;

.field private static final c:Ljava/util/regex/Pattern;

.field private static i:Z

.field private static j:Z

.field private static k:Lcom/baidu/mobstat/OnAppBackgroundListener;

.field private static l:Z


# instance fields
.field public final a:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/PermissionEnum;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    .line 22
    const-string v0, "\\s*|\t|\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/dq;->c:Ljava/util/regex/Pattern;

    .line 40
    sput-boolean v1, Lcom/baidu/mobstat/dq;->i:Z

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/dq;->j:Z

    .line 51
    sput-boolean v1, Lcom/baidu/mobstat/dq;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dq;->d:Ljava/util/List;

    .line 24
    const-string v0, "android.permission.APP_LIST"

    iput-object v0, p0, Lcom/baidu/mobstat/dq;->e:Ljava/lang/String;

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/mobstat/dq;->a:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dq;->h:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/dq;
    .registers 2

    .line 55
    sget-object v0, Lcom/baidu/mobstat/dq;->b:Lcom/baidu/mobstat/dq;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/baidu/mobstat/dq;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/dq;->b:Lcom/baidu/mobstat/dq;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/baidu/mobstat/dq;

    invoke-direct {v0}, Lcom/baidu/mobstat/dq;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/dq;->b:Lcom/baidu/mobstat/dq;

    .line 60
    :cond_0
    const-class v0, Lcom/baidu/mobstat/dq;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/dq;->b:Lcom/baidu/mobstat/dq;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    const-class v1, Lcom/baidu/mobstat/dq;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()Z
    .registers 2

    .line 235
    sget-object v0, Lcom/baidu/mobstat/dq;->k:Lcom/baidu/mobstat/OnAppBackgroundListener;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/baidu/mobstat/dq;->k:Lcom/baidu/mobstat/OnAppBackgroundListener;

    invoke-interface {v0}, Lcom/baidu/mobstat/OnAppBackgroundListener;->isBackground()Z

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/baidu/mobstat/dq;->j:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/OnAppBackgroundListener;)V
    .registers 2

    .line 243
    sput-object p1, Lcom/baidu/mobstat/dq;->k:Lcom/baidu/mobstat/OnAppBackgroundListener;

    .line 245
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/baidu/mobstat/dq;->g:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public a(Z)Z
    .registers 3

    .line 220
    if-eqz p1, :cond_1

    .line 221
    sget-boolean v0, Lcom/baidu/mobstat/dq;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/mobstat/dq;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :cond_1
    sget-boolean v0, Lcom/baidu/mobstat/dq;->i:Z

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, ""

    .line 95
    :goto_0
    return-object v0

    .line 94
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/dq;->c:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/baidu/mobstat/dq;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 95
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Z)V
    .registers 2

    .line 229
    sput-boolean p1, Lcom/baidu/mobstat/dq;->i:Z

    .line 231
    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 252
    sput-boolean p1, Lcom/baidu/mobstat/dq;->l:Z

    .line 253
    return-void
.end method

.method public c()Z
    .registers 2

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/dq;->a(Z)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .line 248
    sget-boolean v0, Lcom/baidu/mobstat/dq;->l:Z

    return v0
.end method

.class Lcom/baidu/mobstat/Session$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Z

.field private g:Lorg/json/JSONObject;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;ZLjava/lang/String;)V
    .registers 14

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/baidu/mobstat/Session$a;->b:Ljava/lang/String;

    .line 305
    iput-object p2, p0, Lcom/baidu/mobstat/Session$a;->c:Ljava/lang/String;

    .line 306
    iput-object p3, p0, Lcom/baidu/mobstat/Session$a;->a:Ljava/lang/String;

    .line 307
    iput-wide p4, p0, Lcom/baidu/mobstat/Session$a;->d:J

    .line 308
    iput-wide p6, p0, Lcom/baidu/mobstat/Session$a;->e:J

    .line 309
    iput-boolean p8, p0, Lcom/baidu/mobstat/Session$a;->f:Z

    .line 310
    iput-object p11, p0, Lcom/baidu/mobstat/Session$a;->i:Ljava/lang/String;

    .line 312
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 313
    if-eqz p9, :cond_0

    .line 314
    invoke-virtual {p9}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 316
    :cond_0
    iput-object v0, p0, Lcom/baidu/mobstat/Session$a;->g:Lorg/json/JSONObject;

    .line 318
    iput-boolean p10, p0, Lcom/baidu/mobstat/Session$a;->h:Z

    .line 319
    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/baidu/mobstat/Session$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/mobstat/Session$a;)Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/baidu/mobstat/Session$a;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/baidu/mobstat/Session$a;)Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/baidu/mobstat/Session$a;->h:Z

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/baidu/mobstat/Session$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/baidu/mobstat/Session$a;)V
    .registers 4

    .line 350
    iget-object v0, p1, Lcom/baidu/mobstat/Session$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/Session$a;->a:Ljava/lang/String;

    .line 351
    iget-object v0, p1, Lcom/baidu/mobstat/Session$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/Session$a;->b:Ljava/lang/String;

    .line 352
    iget-object v0, p1, Lcom/baidu/mobstat/Session$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/Session$a;->c:Ljava/lang/String;

    .line 353
    iget-wide v0, p1, Lcom/baidu/mobstat/Session$a;->d:J

    iput-wide v0, p0, Lcom/baidu/mobstat/Session$a;->d:J

    .line 354
    iget-wide v0, p1, Lcom/baidu/mobstat/Session$a;->e:J

    iput-wide v0, p0, Lcom/baidu/mobstat/Session$a;->e:J

    .line 355
    iget-boolean v0, p1, Lcom/baidu/mobstat/Session$a;->f:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/Session$a;->f:Z

    .line 356
    iget-object v0, p1, Lcom/baidu/mobstat/Session$a;->g:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/baidu/mobstat/Session$a;->g:Lorg/json/JSONObject;

    .line 357
    iget-boolean v0, p1, Lcom/baidu/mobstat/Session$a;->h:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/Session$a;->h:Z

    .line 358
    iget-object v0, p1, Lcom/baidu/mobstat/Session$a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/Session$a;->i:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/baidu/mobstat/Session$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .registers 3

    .line 330
    iget-wide v0, p0, Lcom/baidu/mobstat/Session$a;->d:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    .line 334
    iget-wide v0, p0, Lcom/baidu/mobstat/Session$a;->e:J

    return-wide v0
.end method

.method public e()Lorg/json/JSONObject;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/baidu/mobstat/Session$a;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .line 342
    iget-boolean v0, p0, Lcom/baidu/mobstat/Session$a;->f:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/baidu/mobstat/Session$a;->i:Ljava/lang/String;

    return-object v0
.end method

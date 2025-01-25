.class Lcom/baidu/mobstat/ao$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ao;

.field private b:Lcom/baidu/mobstat/bt;

.field private c:J

.field private d:Lcom/baidu/mobstat/bw$a;

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ao;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/ao$b;->a:Lcom/baidu/mobstat/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/baidu/mobstat/bt;

    invoke-direct {p1}, Lcom/baidu/mobstat/bt;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/ao$b;->b:Lcom/baidu/mobstat/bt;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/ao$b;->f:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "pub_lst_ts"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/mobstat/ao$b;->c:J

    const-string p1, "pub_info"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ao$b;->d:Lcom/baidu/mobstat/bw$a;

    const-string p1, "d_form_ver"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/mobstat/ao$b;->g:I

    iput-boolean v1, p0, Lcom/baidu/mobstat/ao$b;->e:Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_2c

    const/4 p1, 0x1

    return p1

    :catch_2c
    move-exception p1

    :cond_2d
    return v1
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mobstat/ao$b;->c:J

    return-wide v0
.end method

.method public a(J)V
    .registers 6

    iget-wide v0, p0, Lcom/baidu/mobstat/ao$b;->c:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_b

    iput-wide p1, p0, Lcom/baidu/mobstat/ao$b;->c:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/ao$b;->e:Z

    :cond_b
    return-void
.end method

.method public a(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/mobstat/ao$b;->b:Lcom/baidu/mobstat/bt;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/mobstat/bt;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/ao$b;->e:Z

    :cond_b
    return-void
.end method

.method public a(Lcom/baidu/mobstat/bw$a;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mobstat/ao$b;->d:Lcom/baidu/mobstat/bw$a;

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/bw$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iput-object p1, p0, Lcom/baidu/mobstat/ao$b;->d:Lcom/baidu/mobstat/bw$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/ao$b;->e:Z

    :cond_d
    return-void
.end method

.method public a(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mobstat/ao$b;->a:Lcom/baidu/mobstat/ao;

    iget-object v0, v0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bq$a;->a(Ljava/io/File;)Lcom/baidu/mobstat/bq$a;

    move-result-object p1

    const-string v0, "pub.dat"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/ao$b;->f:Z

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ao$b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/baidu/mobstat/bw$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/ao$b;->d:Lcom/baidu/mobstat/bw$a;

    return-object v0
.end method

.method public c()Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/mobstat/ao$b;->a:Lcom/baidu/mobstat/ao;

    iget-object v0, v0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    const-string v1, "pub.dat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ao$b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 6

    iget-boolean v0, p0, Lcom/baidu/mobstat/ao$b;->f:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/baidu/mobstat/ao$b;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pub_info"

    iget-object v3, p0, Lcom/baidu/mobstat/ao$b;->d:Lcom/baidu/mobstat/bw$a;

    invoke-virtual {v3}, Lcom/baidu/mobstat/bw$a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pub_lst_ts"

    iget-wide v3, p0, Lcom/baidu/mobstat/ao$b;->c:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "d_form_ver"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/mobstat/ao$b;->a:Lcom/baidu/mobstat/ao;

    iget-object v2, v2, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    const-string v4, "pub.dat"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0, v3}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    iput-boolean v1, p0, Lcom/baidu/mobstat/ao$b;->e:Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_35} :catch_36

    return v3

    :catch_36
    move-exception v0

    :cond_37
    return v1

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/mobstat/ao$b;->a:Lcom/baidu/mobstat/ao;

    iget-object v0, v0, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    const-string v1, "pub.dat"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bq$a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ao;->a(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

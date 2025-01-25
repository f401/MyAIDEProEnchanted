.class Lcom/baidu/mobstat/ao$c;
.super Lcom/baidu/mobstat/am$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ao;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/baidu/mobstat/bw$a;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ao;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/mobstat/ao$c;->a:Lcom/baidu/mobstat/ao;

    iget-object p1, p1, Lcom/baidu/mobstat/ao;->d:Lcom/baidu/mobstat/bq$a;

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/am$b;-><init>(Lcom/baidu/mobstat/bq$a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/ao$b;)V
    .registers 4

    invoke-virtual {p1}, Lcom/baidu/mobstat/ao$b;->b()Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ao$c;->a(Lcom/baidu/mobstat/bw$a;)Z

    invoke-virtual {p1}, Lcom/baidu/mobstat/ao$b;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/ao$c;->b(J)Z

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ao$c;->c:Ljava/lang/String;

    const-string v0, "tar_pkg_lst_pub_ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/baidu/mobstat/ao$c;->e:J

    const-string v0, "last_fe_ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/ao$c;->d:J

    const-string v0, "info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bw;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bw$a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ao$c;->g:Lcom/baidu/mobstat/bw$a;

    const-string v0, "tar_pkg_lst_up_ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mobstat/ao$c;->f:J

    const-string v0, "d_form_ver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/mobstat/ao$c;->b:I

    return-void
.end method

.method public a(J)Z
    .registers 6

    iget-wide v0, p0, Lcom/baidu/mobstat/ao$c;->d:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_d

    iput-wide p1, p0, Lcom/baidu/mobstat/ao$c;->d:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ao$c;->a(Z)V

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/baidu/mobstat/bw$a;)Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/mobstat/ao$c;->g:Lcom/baidu/mobstat/bw$a;

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/bw$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/baidu/mobstat/ao$c;->g:Lcom/baidu/mobstat/bw$a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ao$c;->a(Z)V

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/mobstat/ao$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/baidu/mobstat/ao$c;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ao$c;->a(Z)V

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "pkg"

    iget-object v1, p0, Lcom/baidu/mobstat/ao$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "last_fe_ts"

    iget-wide v1, p0, Lcom/baidu/mobstat/ao$c;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "tar_pkg_lst_pub_ts"

    iget-wide v1, p0, Lcom/baidu/mobstat/ao$c;->e:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/mobstat/ao$c;->g:Lcom/baidu/mobstat/bw$a;

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tar_pkg_lst_up_ts"

    iget-wide v1, p0, Lcom/baidu/mobstat/ao$c;->f:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "d_form_ver"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method public b(J)Z
    .registers 6

    iget-wide v0, p0, Lcom/baidu/mobstat/ao$c;->e:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_d

    iput-wide p1, p0, Lcom/baidu/mobstat/ao$c;->e:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ao$c;->a(Z)V

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/ao$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)Z
    .registers 6

    iget-wide v0, p0, Lcom/baidu/mobstat/ao$c;->f:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_d

    iput-wide p1, p0, Lcom/baidu/mobstat/ao$c;->f:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ao$c;->a(Z)V

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public d()Lcom/baidu/mobstat/bw$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/ao$c;->g:Lcom/baidu/mobstat/bw$a;

    return-object v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mobstat/ao$c;->f:J

    return-wide v0
.end method

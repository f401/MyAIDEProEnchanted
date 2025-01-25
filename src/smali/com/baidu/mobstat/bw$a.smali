.class public Lcom/baidu/mobstat/bw$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "V"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "O"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/mobstat/bw$a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/bw$a;->i:Z

    iput v0, p0, Lcom/baidu/mobstat/bw$a;->k:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/bw$a;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/mobstat/bw$a;->k:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/bw$a;J)J
    .registers 3

    iput-wide p1, p0, Lcom/baidu/mobstat/bw$a;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/bw$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/mobstat/bw$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/bw$a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/bw$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mobstat/bw$a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/bw$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/baidu/mobstat/bw$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/bw$a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/bw$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mobstat/bw$a;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/bw$a;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/bw$a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/bw$a;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/baidu/mobstat/bw$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/bw$a;->j:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/bw$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/bw$a;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/baidu/mobstat/bw$a;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/bw$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/bw$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mobstat/bw$a;->g:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/bw$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_59

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_59

    :cond_12
    check-cast p1, Lcom/baidu/mobstat/bw$a;

    iget v2, p0, Lcom/baidu/mobstat/bw$a;->k:I

    iget v3, p1, Lcom/baidu/mobstat/bw$a;->k:I

    if-ne v2, v3, :cond_57

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/mobstat/bw$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/mobstat/bw$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/mobstat/bw$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-boolean v2, p0, Lcom/baidu/mobstat/bw$a;->g:Z

    iget-boolean v3, p1, Lcom/baidu/mobstat/bw$a;->g:Z

    if-ne v2, v3, :cond_57

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/mobstat/bw$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/baidu/mobstat/bw$a;->f:Ljava/lang/String;

    if-eq v2, p1, :cond_58

    if-eqz v2, :cond_57

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :cond_58
    :goto_58
    return v0

    :cond_59
    :goto_59
    return v1
.end method

.method public f()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/bw$a;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/bw$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .registers 3

    invoke-static {}, Lcom/baidu/mobstat/bw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/mobstat/bw$a;->g:Z

    iput-object v0, p0, Lcom/baidu/mobstat/bw$a;->h:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/baidu/mobstat/bw$a;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/baidu/mobstat/bw$a;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Lcom/baidu/mobstat/br;
    .registers 5

    new-instance v0, Lcom/baidu/mobstat/br;

    invoke-direct {v0}, Lcom/baidu/mobstat/br;-><init>()V

    iget-object v1, p0, Lcom/baidu/mobstat/bw$a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/br;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "V"

    iget-object v3, p0, Lcom/baidu/mobstat/bw$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/br;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "dik"

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "v270fk"

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cck"

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vsk"

    iget v2, p0, Lcom/baidu/mobstat/bw$a;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ctk"

    iget-wide v2, p0, Lcom/baidu/mobstat/bw$a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "csk"

    iget-boolean v2, p0, Lcom/baidu/mobstat/bw$a;->g:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/mobstat/bw$a;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "pmk"

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e
    iget-object v1, p0, Lcom/baidu/mobstat/bw$a;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    const-string v1, "ock"

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4d
    const-string v1, "hrk"

    iget-boolean v2, p0, Lcom/baidu/mobstat/bw$a;->i:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ek"

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5f} :catch_60

    return-object v0

    :catch_60
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bu;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/baidu/mobstat/bw$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "0"

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/bw$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "V"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/mobstat/bw$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    iget-object v0, p0, Lcom/baidu/mobstat/bw$a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/baidu/mobstat/bw$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public La/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:Z

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/e;->a:Ljava/io/File;

    iput-boolean p2, p0, La/e;->b:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, La/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, La/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    sub-int v2, v0, v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private t()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, La/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    iget-object v0, p0, La/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La/e;->k:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-direct {p0}, La/e;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/e;->k:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, La/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, La/e;->c:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/io/File;
    .registers 2

    iget-object v0, p0, La/e;->a:Ljava/io/File;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, La/e;->d:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, La/e;->e:Ljava/util/List;

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, La/e;->b:Z

    return v0
.end method

.method public d(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, La/e;->f:Ljava/util/List;

    return-void
.end method

.method public d()Z
    .registers 2

    const-string v0, ".apk"

    invoke-direct {p0, v0}, La/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ".ap_"

    invoke-direct {p0, v0}, La/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public e(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, La/e;->g:Ljava/util/List;

    return-void
.end method

.method public e()Z
    .registers 2

    const-string v0, ".jar"

    invoke-direct {p0, v0}, La/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, La/e;->h:Ljava/util/List;

    return-void
.end method

.method public f()Z
    .registers 2

    const-string v0, ".aar"

    invoke-direct {p0, v0}, La/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, La/e;->i:Ljava/util/List;

    return-void

    :cond_c
    iget-object v0, p0, La/e;->i:Ljava/util/List;

    goto :goto_9
.end method

.method public g()Z
    .registers 2

    const-string v0, ".war"

    invoke-direct {p0, v0}, La/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, La/e;->j:Ljava/util/List;

    return-void
.end method

.method public h()Z
    .registers 2

    const-string v0, ".ear"

    invoke-direct {p0, v0}, La/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    const-string v0, ".jmod"

    invoke-direct {p0, v0}, La/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 2

    const-string v0, ".zip"

    invoke-direct {p0, v0}, La/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 2

    iget-object v0, p0, La/e;->c:Ljava/util/List;

    if-nez v0, :cond_20

    iget-object v0, p0, La/e;->d:Ljava/util/List;

    if-nez v0, :cond_20

    iget-object v0, p0, La/e;->e:Ljava/util/List;

    if-nez v0, :cond_20

    iget-object v0, p0, La/e;->f:Ljava/util/List;

    if-nez v0, :cond_20

    iget-object v0, p0, La/e;->g:Ljava/util/List;

    if-nez v0, :cond_20

    iget-object v0, p0, La/e;->h:Ljava/util/List;

    if-nez v0, :cond_20

    iget-object v0, p0, La/e;->i:Ljava/util/List;

    if-nez v0, :cond_20

    iget-object v0, p0, La/e;->j:Ljava/util/List;

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public l()Ljava/util/List;
    .registers 2

    iget-object v0, p0, La/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .registers 2

    iget-object v0, p0, La/e;->d:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .registers 2

    iget-object v0, p0, La/e;->e:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .registers 2

    iget-object v0, p0, La/e;->f:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .registers 2

    iget-object v0, p0, La/e;->g:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .registers 2

    iget-object v0, p0, La/e;->h:Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .registers 2

    iget-object v0, p0, La/e;->i:Ljava/util/List;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .registers 2

    iget-object v0, p0, La/e;->j:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, La/e;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/e;->c:Ljava/util/List;

    if-nez v1, :cond_21

    iget-object v1, p0, La/e;->e:Ljava/util/List;

    if-nez v1, :cond_21

    iget-object v1, p0, La/e;->f:Ljava/util/List;

    if-nez v1, :cond_21

    iget-object v1, p0, La/e;->g:Ljava/util/List;

    if-nez v1, :cond_21

    iget-object v1, p0, La/e;->h:Ljava/util/List;

    if-nez v1, :cond_21

    iget-object v1, p0, La/e;->i:Ljava/util/List;

    if-nez v1, :cond_21

    iget-object v1, p0, La/e;->j:Ljava/util/List;

    if-eqz v1, :cond_d4

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/e;->f:Ljava/util/List;

    if-eqz v0, :cond_d5

    iget-object v0, p0, La/e;->f:Ljava/util/List;

    invoke-static {v0, v2}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    :goto_3a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/e;->d:Ljava/util/List;

    if-eqz v0, :cond_d9

    iget-object v0, p0, La/e;->d:Ljava/util/List;

    invoke-static {v0, v2}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    :goto_4e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/e;->j:Ljava/util/List;

    if-eqz v0, :cond_dd

    iget-object v0, p0, La/e;->j:Ljava/util/List;

    invoke-static {v0, v2}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    :goto_62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/e;->i:Ljava/util/List;

    if-eqz v0, :cond_e0

    iget-object v0, p0, La/e;->i:Ljava/util/List;

    invoke-static {v0, v2}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    :goto_76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/e;->h:Ljava/util/List;

    if-eqz v0, :cond_e3

    iget-object v0, p0, La/e;->h:Ljava/util/List;

    invoke-static {v0, v2}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    :goto_8a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/e;->g:Ljava/util/List;

    if-eqz v0, :cond_e6

    iget-object v0, p0, La/e;->g:Ljava/util/List;

    invoke-static {v0, v2}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    :goto_9e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/e;->e:Ljava/util/List;

    if-eqz v0, :cond_e9

    iget-object v0, p0, La/e;->e:Ljava/util/List;

    invoke-static {v0, v2}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    :goto_b2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/e;->c:Ljava/util/List;

    if-eqz v0, :cond_ec

    iget-object v0, p0, La/e;->c:Ljava/util/List;

    invoke-static {v0, v2}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    :goto_c6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d4
    return-object v0

    :cond_d5
    const-string v0, ""

    goto/16 :goto_3a

    :cond_d9
    const-string v0, ""

    goto/16 :goto_4e

    :cond_dd
    const-string v0, ""

    goto :goto_62

    :cond_e0
    const-string v0, ""

    goto :goto_76

    :cond_e3
    const-string v0, ""

    goto :goto_8a

    :cond_e6
    const-string v0, ""

    goto :goto_9e

    :cond_e9
    const-string v0, ""

    goto :goto_b2

    :cond_ec
    const-string v0, ""

    goto :goto_c6
.end method

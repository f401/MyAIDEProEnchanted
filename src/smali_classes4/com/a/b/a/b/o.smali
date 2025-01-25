.class public final Lcom/a/b/a/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/a/e/g;


# instance fields
.field private final a:Lcom/a/b/a/e/g;

.field private final b:Lcom/a/b/a/e/c;

.field private final c:Lcom/a/b/a/a/c;

.field private final d:Lcom/a/b/a/b/r;

.field private final e:Lcom/a/b/a/b/t;


# direct methods
.method public constructor <init>(Lcom/a/b/a/e/g;Lcom/a/b/a/e/c;ZZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/a/b/o;->a:Lcom/a/b/a/e/g;

    iput-object p2, p0, Lcom/a/b/a/b/o;->b:Lcom/a/b/a/e/c;

    invoke-interface {p1}, Lcom/a/b/a/e/g;->h()Lcom/a/b/a/e/b;

    move-result-object v0

    const-string v1, "Code"

    invoke-interface {v0, v1}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/c;

    iput-object v0, p0, Lcom/a/b/a/b/o;->c:Lcom/a/b/a/a/c;

    iget-object v0, p0, Lcom/a/b/a/b/o;->c:Lcom/a/b/a/a/c;

    invoke-virtual {v0}, Lcom/a/b/a/a/c;->f()Lcom/a/b/a/e/b;

    move-result-object v3

    sget-object v1, Lcom/a/b/a/b/r;->a:Lcom/a/b/a/b/r;

    if-eqz p3, :cond_80

    const-string v0, "LineNumberTable"

    invoke-interface {v3, v0}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/i;

    :goto_27
    if-nez v0, :cond_53

    move-object v0, v1

    :goto_2a
    iput-object v0, p0, Lcom/a/b/a/b/o;->d:Lcom/a/b/a/b/r;

    sget-object v1, Lcom/a/b/a/b/t;->a:Lcom/a/b/a/b/t;

    if-eqz p4, :cond_82

    const-string v0, "LocalVariableTable"

    invoke-interface {v3, v0}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/j;

    :goto_38
    if-nez v0, :cond_62

    sget-object v2, Lcom/a/b/a/b/t;->a:Lcom/a/b/a/b/t;

    const-string v0, "LocalVariableTypeTable"

    invoke-interface {v3, v0}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/k;

    :goto_44
    if-nez v0, :cond_71

    invoke-virtual {v2}, Lcom/a/b/a/b/t;->d_()I

    move-result v0

    if-eqz v0, :cond_82

    invoke-static {v1, v2}, Lcom/a/b/a/b/t;->b(Lcom/a/b/a/b/t;Lcom/a/b/a/b/t;)Lcom/a/b/a/b/t;

    move-result-object v0

    :goto_50
    iput-object v0, p0, Lcom/a/b/a/b/o;->e:Lcom/a/b/a/b/t;

    return-void

    :cond_53
    invoke-virtual {v0}, Lcom/a/b/a/a/i;->b()Lcom/a/b/a/b/r;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/b/a/b/r;->a(Lcom/a/b/a/b/r;Lcom/a/b/a/b/r;)Lcom/a/b/a/b/r;

    move-result-object v1

    invoke-interface {v3, v0}, Lcom/a/b/a/e/b;->a(Lcom/a/b/a/e/a;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/i;

    goto :goto_27

    :cond_62
    invoke-virtual {v0}, Lcom/a/b/a/a/j;->b()Lcom/a/b/a/b/t;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/b/a/b/t;->a(Lcom/a/b/a/b/t;Lcom/a/b/a/b/t;)Lcom/a/b/a/b/t;

    move-result-object v1

    invoke-interface {v3, v0}, Lcom/a/b/a/e/b;->a(Lcom/a/b/a/e/a;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/j;

    goto :goto_38

    :cond_71
    invoke-virtual {v0}, Lcom/a/b/a/a/k;->b()Lcom/a/b/a/b/t;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/a/b/a/b/t;->a(Lcom/a/b/a/b/t;Lcom/a/b/a/b/t;)Lcom/a/b/a/b/t;

    move-result-object v2

    invoke-interface {v3, v0}, Lcom/a/b/a/e/b;->a(Lcom/a/b/a/e/a;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/k;

    goto :goto_44

    :cond_80
    move-object v0, v1

    goto :goto_2a

    :cond_82
    move-object v0, v1

    goto :goto_50
.end method


# virtual methods
.method public a(I)Lcom/a/b/e/b/ad;
    .registers 5

    new-instance v0, Lcom/a/b/e/b/ad;

    invoke-virtual {p0}, Lcom/a/b/a/b/o;->a()Lcom/a/b/e/c/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/o;->d:Lcom/a/b/a/b/r;

    invoke-virtual {v2, p1}, Lcom/a/b/a/b/r;->b(I)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/a/b/e/b/ad;-><init>(Lcom/a/b/e/c/ad;II)V

    return-object v0
.end method

.method public a()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->b:Lcom/a/b/a/e/c;

    invoke-interface {v0}, Lcom/a/b/a/e/c;->m()Lcom/a/b/e/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->b:Lcom/a/b/a/e/c;

    invoke-interface {v0}, Lcom/a/b/a/e/c;->d()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/a/b/a/b/o;->d()Lcom/a/b/e/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->f()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final c()Z
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/a/b/o;->g()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d()Lcom/a/b/e/c/aa;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->a:Lcom/a/b/a/e/g;

    invoke-interface {v0}, Lcom/a/b/a/e/g;->d()Lcom/a/b/e/c/aa;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->a:Lcom/a/b/a/e/g;

    invoke-interface {v0}, Lcom/a/b/a/e/g;->e()Lcom/a/b/e/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->a:Lcom/a/b/a/e/g;

    invoke-interface {v0}, Lcom/a/b/a/e/g;->f()Lcom/a/b/e/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->a:Lcom/a/b/a/e/g;

    invoke-interface {v0}, Lcom/a/b/a/e/g;->g()I

    move-result v0

    return v0
.end method

.method public h()Lcom/a/b/a/e/b;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->a:Lcom/a/b/a/e/g;

    invoke-interface {v0}, Lcom/a/b/a/e/g;->h()Lcom/a/b/a/e/b;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->a:Lcom/a/b/a/e/g;

    invoke-interface {v0}, Lcom/a/b/a/e/g;->i()Lcom/a/b/e/c/ae;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/a/b/e/d/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->a:Lcom/a/b/a/e/g;

    invoke-interface {v0}, Lcom/a/b/a/e/g;->j()Lcom/a/b/e/d/a;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->c:Lcom/a/b/a/a/c;

    invoke-virtual {v0}, Lcom/a/b/a/a/c;->b()I

    move-result v0

    return v0
.end method

.method public l()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->c:Lcom/a/b/a/a/c;

    invoke-virtual {v0}, Lcom/a/b/a/a/c;->c()I

    move-result v0

    return v0
.end method

.method public m()Lcom/a/b/a/b/k;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->c:Lcom/a/b/a/a/c;

    invoke-virtual {v0}, Lcom/a/b/a/a/c;->d()Lcom/a/b/a/b/k;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/a/b/a/b/h;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->c:Lcom/a/b/a/a/c;

    invoke-virtual {v0}, Lcom/a/b/a/a/c;->e()Lcom/a/b/a/b/h;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/a/b/a/b/t;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/o;->e:Lcom/a/b/a/b/t;

    return-object v0
.end method

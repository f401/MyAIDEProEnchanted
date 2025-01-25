.class public abstract Lc/z;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/bo;


# instance fields
.field public a:I

.field public b:Z

.field public h:Lc/e;


# direct methods
.method public constructor <init>(ZILc/e;)V
    .registers 6

    invoke-direct {p0}, Lc/s;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/z;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lc/z;->h:Lc/e;

    instance-of v1, p3, Lc/d;

    if-eqz v1, :cond_10

    iput-boolean v0, p0, Lc/z;->b:Z

    goto :goto_12

    :cond_10
    iput-boolean p1, p0, Lc/z;->b:Z

    :goto_12
    iput p2, p0, Lc/z;->a:I

    iget-boolean p1, p0, Lc/z;->b:Z

    if-eqz p1, :cond_19

    goto :goto_1f

    :cond_19
    invoke-interface {p3}, Lc/e;->l()Lc/s;

    move-result-object p1

    instance-of p1, p1, Lc/v;

    :goto_1f
    iput-object p3, p0, Lc/z;->h:Lc/e;

    return-void
.end method


# virtual methods
.method public final c()Lc/s;
    .registers 1

    return-object p0
.end method

.method public final d(Lc/s;)Z
    .registers 5

    instance-of v0, p1, Lc/z;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lc/z;

    iget v0, p0, Lc/z;->a:I

    iget v2, p1, Lc/z;->a:I

    if-ne v0, v2, :cond_31

    iget-boolean v0, p0, Lc/z;->b:Z

    iget-boolean v2, p1, Lc/z;->b:Z

    if-eq v0, v2, :cond_15

    goto :goto_31

    :cond_15
    iget-object v0, p0, Lc/z;->h:Lc/e;

    if-nez v0, :cond_1e

    iget-object p1, p1, Lc/z;->h:Lc/e;

    if-eqz p1, :cond_2f

    return v1

    :cond_1e
    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    iget-object p1, p1, Lc/z;->h:Lc/e;

    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    return v1

    :cond_2f
    const/4 p1, 0x1

    return p1

    :cond_31
    :goto_31
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lc/z;->a:I

    iget-object v1, p0, Lc/z;->h:Lc/e;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_b
    return v0
.end method

.method public final i()Lc/s;
    .registers 5

    new-instance v0, Lc/bf;

    iget-boolean v1, p0, Lc/z;->b:Z

    iget v2, p0, Lc/z;->a:I

    iget-object v3, p0, Lc/z;->h:Lc/e;

    invoke-direct {v0, v1, v2, v3}, Lc/bf;-><init>(ZILc/e;)V

    return-object v0
.end method

.method public final j()Lc/s;
    .registers 5

    new-instance v0, Lc/bm;

    iget-boolean v1, p0, Lc/z;->b:Z

    iget v2, p0, Lc/z;->a:I

    iget-object v3, p0, Lc/z;->h:Lc/e;

    invoke-direct {v0, v1, v2, v3}, Lc/bm;-><init>(ZILc/e;)V

    return-object v0
.end method

.method public final k()Lc/s;
    .registers 2

    iget-object v0, p0, Lc/z;->h:Lc/e;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "["

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lc/z;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/z;->h:Lc/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

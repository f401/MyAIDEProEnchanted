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
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lc/s;-><init>()V

    iput-boolean v1, p0, Lc/z;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc/z;->h:Lc/e;

    instance-of v0, p3, Lc/d;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lc/z;->b:Z

    :goto_0
    iput p2, p0, Lc/z;->a:I

    iget-boolean v0, p0, Lc/z;->b:Z

    if-eqz v0, :cond_1

    :goto_1
    iput-object p3, p0, Lc/z;->h:Lc/e;

    return-void

    :cond_0
    iput-boolean p1, p0, Lc/z;->b:Z

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lc/e;->l()Lc/s;

    move-result-object v0

    instance-of v0, v0, Lc/v;

    goto :goto_1
.end method


# virtual methods
.method public final c()Lc/s;
    .locals 0

    return-object p0
.end method

.method public final d(Lc/s;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lc/z;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lc/z;

    iget v1, p0, Lc/z;->a:I

    iget v2, p1, Lc/z;->a:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lc/z;->b:Z

    iget-boolean v2, p1, Lc/z;->b:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lc/z;->h:Lc/e;

    if-nez v1, :cond_3

    iget-object v1, p1, Lc/z;->h:Lc/e;

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lc/e;->l()Lc/s;

    move-result-object v1

    iget-object v2, p1, Lc/z;->h:Lc/e;

    invoke-interface {v2}, Lc/e;->l()Lc/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lc/z;->a:I

    iget-object v1, p0, Lc/z;->h:Lc/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final i()Lc/s;
    .locals 4

    new-instance v0, Lc/bf;

    iget-boolean v1, p0, Lc/z;->b:Z

    iget v2, p0, Lc/z;->a:I

    iget-object v3, p0, Lc/z;->h:Lc/e;

    invoke-direct {v0, v1, v2, v3}, Lc/bf;-><init>(ZILc/e;)V

    return-object v0
.end method

.method public final j()Lc/s;
    .locals 4

    new-instance v0, Lc/bm;

    iget-boolean v1, p0, Lc/z;->b:Z

    iget v2, p0, Lc/z;->a:I

    iget-object v3, p0, Lc/z;->h:Lc/e;

    invoke-direct {v0, v1, v2, v3}, Lc/bm;-><init>(ZILc/e;)V

    return-object v0
.end method

.method public final k()Lc/s;
    .locals 1

    iget-object v0, p0, Lc/z;->h:Lc/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

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

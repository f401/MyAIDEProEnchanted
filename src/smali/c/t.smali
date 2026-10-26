.class public abstract Lc/t;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/s;",
        "Ljava/lang/Iterable;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lc/f;)V
    .locals 3

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lc/f;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lc/f;->c(I)Lc/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lc/e;)V
    .locals 3

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lc/t;->a:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Object;)Lc/t;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lc/t;

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    check-cast p0, Lc/t;

    move-object v0, p0

    :goto_0
    return-object v0

    .line 4294967295
    :cond_1
    instance-of v0, p0, Lc/u;

    if-eqz v0, :cond_2

    check-cast p0, Lc/u;

    invoke-interface {p0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-static {v0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object v0

    invoke-static {v0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1
    const-string v1, "failed to construct sequence from byte[]: "

    invoke-static {v1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    instance-of v1, v0, Lc/t;

    if-eqz v1, :cond_4

    check-cast v0, Lc/t;

    goto :goto_0

    .line 3
    :cond_4
    const-string v0, "unknown object in getInstance: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Lc/z;)Lc/t;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/z;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/z;->k()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .locals 5

    const/4 v1, 0x0

    instance-of v0, p1, Lc/t;

    if-nez v0, :cond_0

    move v0, v1

    .line 2
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    check-cast p1, Lc/t;

    invoke-virtual {p0}, Lc/t;->p()I

    move-result v0

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v2

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v2

    invoke-virtual {p1}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v3

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    .line 2
    invoke-virtual {p0, v3}, Lc/t;->h(Ljava/util/Enumeration;)Lc/e;

    move-result-object v4

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-interface {v4}, Lc/e;->l()Lc/s;

    move-result-object v4

    if-eq v0, v4, :cond_2

    invoke-virtual {v0, v4}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(Ljava/util/Enumeration;)Lc/e;
    .locals 1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v2

    invoke-virtual {p0}, Lc/t;->p()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    .line 2
    mul-int/lit8 v1, v1, 0x11

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public i()Lc/s;
    .locals 2

    new-instance v0, Lc/bc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/bc;-><init>(I)V

    iget-object v1, p0, Lc/t;->a:Ljava/util/Vector;

    iput-object v1, v0, Lc/t;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lc/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/t;->p()I

    move-result v0

    new-array v1, v0, [Lc/e;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lc/t;->p()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lx/a$a;

    invoke-direct {v0, v1}, Lx/a$a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public j()Lc/s;
    .locals 2

    new-instance v0, Lc/bc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/bc;-><init>(I)V

    iget-object v1, p0, Lc/t;->a:Ljava/util/Vector;

    iput-object v1, v0, Lc/t;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public k(I)Lc/e;
    .locals 1

    iget-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    return-object v0
.end method

.method public o()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

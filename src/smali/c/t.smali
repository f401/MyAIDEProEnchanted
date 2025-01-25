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
    .registers 2

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lc/f;)V
    .registers 5

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Lc/f;->d()I

    move-result v1

    if-eq v0, v1, :cond_1d

    iget-object v1, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lc/f;->c(I)Lc/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public constructor <init>([Lc/e;)V
    .registers 5

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_b
    array-length v1, p1

    if-eq v0, v1, :cond_18

    iget-object v1, p0, Lc/t;->a:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    return-void
.end method

.method public static b(Ljava/lang/Object;)Lc/t;
    .registers 3

    if-eqz p0, :cond_6a

    instance-of v0, p0, Lc/t;

    if-eqz v0, :cond_7

    goto :goto_6a

    :cond_7
    instance-of v0, p0, Lc/u;

    if-eqz v0, :cond_16

    check-cast p0, Lc/u;

    invoke-interface {p0}, Lc/e;->l()Lc/s;

    move-result-object p0

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, [B

    if-eqz v0, :cond_3d

    :try_start_1a
    check-cast p0, [B

    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object p0

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    .line 1
    const-string v0, "failed to construct sequence from byte[]: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_4f

    move-object v0, p0

    check-cast v0, Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    instance-of v1, v0, Lc/t;

    if-eqz v1, :cond_4f

    check-cast v0, Lc/t;

    return-object v0

    .line 3
    :cond_4f
    const-string v0, "unknown object in getInstance: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    :goto_6a
    check-cast p0, Lc/t;

    return-object p0
.end method

.method public static c(Lc/z;)Lc/t;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/z;->b:Z

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {p0}, Lc/z;->k()Lc/s;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "object implicit - explicit expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 6

    instance-of v0, p1, Lc/t;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lc/t;

    invoke-virtual {p0}, Lc/t;->p()I

    move-result v0

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v2

    if-eq v0, v2, :cond_13

    return v1

    :cond_13
    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e;

    .line 2
    invoke-virtual {p0, p1}, Lc/t;->h(Ljava/util/Enumeration;)Lc/e;

    move-result-object v3

    invoke-interface {v2}, Lc/e;->l()Lc/s;

    move-result-object v2

    invoke-interface {v3}, Lc/e;->l()Lc/s;

    move-result-object v3

    if-eq v2, v3, :cond_1b

    invoke-virtual {v2, v3}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_1b

    :cond_3c
    return v1

    :cond_3d
    const/4 p1, 0x1

    return p1
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final h(Ljava/util/Enumeration;)Lc/e;
    .registers 2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e;

    return-object p1
.end method

.method public final hashCode()I
    .registers 4

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0}, Lc/t;->p()I

    move-result v1

    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e;

    .line 2
    mul-int/lit8 v1, v1, 0x11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_8

    :cond_1c
    return v1
.end method

.method public i()Lc/s;
    .registers 3

    new-instance v0, Lc/bc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/bc;-><init>(I)V

    iget-object v1, p0, Lc/t;->a:Ljava/util/Vector;

    iput-object v1, v0, Lc/t;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lc/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/t;->p()I

    move-result v0

    new-array v0, v0, [Lc/e;

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0}, Lc/t;->p()I

    move-result v2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v1}, Lc/t;->k(I)Lc/e;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2
    :cond_16
    new-instance v1, Lx/a$a;

    invoke-direct {v1, v0}, Lx/a$a;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method

.method public j()Lc/s;
    .registers 3

    new-instance v0, Lc/bc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/bc;-><init>(I)V

    iget-object v1, p0, Lc/t;->a:Ljava/util/Vector;

    iput-object v1, v0, Lc/t;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public k(I)Lc/e;
    .registers 3

    iget-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e;

    return-object p1
.end method

.method public o()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .registers 2

    iget-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

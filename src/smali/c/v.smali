.class public abstract Lc/v;
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

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/v;->b:Z

    return-void
.end method

.method public constructor <init>(Lc/e;)V
    .locals 2

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc/v;->b:Z

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lc/f;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lc/v;->a:Ljava/util/Vector;

    iput-boolean v0, p0, Lc/v;->b:Z

    :goto_0
    invoke-virtual {p1}, Lc/f;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lc/v;->a:Ljava/util/Vector;

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

    const/4 v0, 0x0

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lc/v;->a:Ljava/util/Vector;

    iput-boolean v0, p0, Lc/v;->b:Z

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lc/v;->a:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/v;->q()V

    return-void
.end method

.method public static c(Ljava/lang/Object;)Lc/v;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lc/v;

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    check-cast p0, Lc/v;

    move-object v0, p0

    :goto_0
    return-object v0

    .line 4294967295
    :cond_1
    instance-of v0, p0, Lc/w;

    if-eqz v0, :cond_2

    check-cast p0, Lc/w;

    invoke-interface {p0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-static {v0}, Lc/v;->c(Ljava/lang/Object;)Lc/v;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object v0

    invoke-static {v0}, Lc/v;->c(Ljava/lang/Object;)Lc/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1
    const-string v1, "failed to construct set from byte[]: "

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

    instance-of v1, v0, Lc/v;

    if-eqz v1, :cond_4

    check-cast v0, Lc/v;

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


# virtual methods
.method public final d(Lc/s;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lc/v;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lc/v;

    invoke-virtual {p0}, Lc/v;->p()I

    move-result v1

    invoke-virtual {p1}, Lc/v;->p()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lc/v;->o()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p1}, Lc/v;->o()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1}, Lc/v;->h(Ljava/util/Enumeration;)Lc/e;

    move-result-object v3

    invoke-virtual {p0, v2}, Lc/v;->h(Ljava/util/Enumeration;)Lc/e;

    move-result-object v4

    invoke-interface {v3}, Lc/e;->l()Lc/s;

    move-result-object v3

    invoke-interface {v4}, Lc/e;->l()Lc/s;

    move-result-object v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

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

    if-nez v0, :cond_0

    sget-object v0, Lc/ax;->a:Lc/ax;

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lc/v;->o()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p0}, Lc/v;->p()I

    move-result v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0, v1}, Lc/v;->h(Ljava/util/Enumeration;)Lc/e;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final i()Lc/s;
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lc/v;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lc/bd;

    invoke-direct {v0, v1}, Lc/bd;-><init>(I)V

    iget-object v1, p0, Lc/v;->a:Ljava/util/Vector;

    iput-object v1, v0, Lc/v;->a:Ljava/util/Vector;

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_1
    iget-object v3, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lc/bd;

    invoke-direct {v0, v1}, Lc/bd;-><init>(I)V

    iput-object v2, v0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Lc/v;->q()V

    goto :goto_0
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
    invoke-virtual {p0}, Lc/v;->p()I

    move-result v0

    new-array v1, v0, [Lc/e;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lc/v;->p()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lc/v;->k(I)Lc/e;

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

.method public final j()Lc/s;
    .locals 2

    new-instance v0, Lc/bd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/bd;-><init>(I)V

    iget-object v1, p0, Lc/v;->a:Ljava/util/Vector;

    iput-object v1, v0, Lc/v;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public final k(I)Lc/e;
    .locals 1

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    return-object v0
.end method

.method public final o()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final q()V
    .locals 13

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lc/v;->b:Z

    if-nez v0, :cond_5

    iput-boolean v5, p0, Lc/v;->b:Z

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_5

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v9, v2

    move v4, v5

    :goto_0
    if-eqz v4, :cond_5

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    .line 1
    :try_start_0
    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lc/m;->n(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move v3, v7

    move v2, v7

    move v4, v7

    :goto_1
    if-eq v3, v9, :cond_4

    .line 2
    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    .line 3
    :try_start_1
    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    const-string v6, "DER"

    invoke-virtual {v0, v6}, Lc/m;->n(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 4
    array-length v6, v1

    array-length v10, v0

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v6, v7

    :goto_2
    if-eq v6, v10, :cond_2

    aget-byte v11, v1, v6

    aget-byte v12, v0, v6

    if-eq v11, v12, :cond_1

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v10, v12, 0xff

    if-ge v6, v10, :cond_3

    :cond_0
    :goto_3
    move-object v1, v0

    move v3, v8

    .line 5
    goto :goto_1

    .line 4
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    array-length v6, v1

    if-eq v10, v6, :cond_0

    .line 5
    :cond_3
    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v2, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move-object v0, v1

    move v2, v3

    move v4, v5

    goto :goto_3

    .line 6
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot encode object added to SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v9, v2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot encode object added to SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
    .registers 2

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/v;->b:Z

    return-void
.end method

.method public constructor <init>(Lc/e;)V
    .registers 4

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
    .registers 5

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/v;->b:Z

    :goto_d
    invoke-virtual {p1}, Lc/f;->d()I

    move-result v1

    if-eq v0, v1, :cond_1f

    iget-object v1, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lc/f;->c(I)Lc/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1f
    return-void
.end method

.method public constructor <init>([Lc/e;)V
    .registers 5

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/v;->b:Z

    :goto_d
    array-length v1, p1

    if-eq v0, v1, :cond_1a

    iget-object v1, p0, Lc/v;->a:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1a
    invoke-virtual {p0}, Lc/v;->q()V

    return-void
.end method

.method public static c(Ljava/lang/Object;)Lc/v;
    .registers 3

    if-eqz p0, :cond_6a

    instance-of v0, p0, Lc/v;

    if-eqz v0, :cond_7

    goto :goto_6a

    :cond_7
    instance-of v0, p0, Lc/w;

    if-eqz v0, :cond_16

    check-cast p0, Lc/w;

    invoke-interface {p0}, Lc/e;->l()Lc/s;

    move-result-object p0

    invoke-static {p0}, Lc/v;->c(Ljava/lang/Object;)Lc/v;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, [B

    if-eqz v0, :cond_3d

    :try_start_1a
    check-cast p0, [B

    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object p0

    invoke-static {p0}, Lc/v;->c(Ljava/lang/Object;)Lc/v;

    move-result-object p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    .line 1
    const-string v0, "failed to construct set from byte[]: "

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

    instance-of v1, v0, Lc/v;

    if-eqz v1, :cond_4f

    check-cast v0, Lc/v;

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
    check-cast p0, Lc/v;

    return-object p0
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 6

    instance-of v0, p1, Lc/v;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lc/v;

    invoke-virtual {p0}, Lc/v;->p()I

    move-result v0

    invoke-virtual {p1}, Lc/v;->p()I

    move-result v2

    if-eq v0, v2, :cond_13

    return v1

    :cond_13
    invoke-virtual {p0}, Lc/v;->o()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lc/v;->o()Ljava/util/Enumeration;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0, v0}, Lc/v;->h(Ljava/util/Enumeration;)Lc/e;

    move-result-object v2

    invoke-virtual {p0, p1}, Lc/v;->h(Ljava/util/Enumeration;)Lc/e;

    move-result-object v3

    invoke-interface {v2}, Lc/e;->l()Lc/s;

    move-result-object v2

    invoke-interface {v3}, Lc/e;->l()Lc/s;

    move-result-object v3

    if-eq v2, v3, :cond_1b

    invoke-virtual {v2, v3}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_1b

    :cond_3a
    return v1

    :cond_3b
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

    if-nez p1, :cond_a

    sget-object p1, Lc/ax;->a:Lc/ax;

    :cond_a
    return-object p1
.end method

.method public final hashCode()I
    .registers 4

    invoke-virtual {p0}, Lc/v;->o()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0}, Lc/v;->p()I

    move-result v1

    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1a

    mul-int/lit8 v1, v1, 0x11

    invoke-virtual {p0, v0}, Lc/v;->h(Ljava/util/Enumeration;)Lc/e;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_8

    :cond_1a
    return v1
.end method

.method public final i()Lc/s;
    .registers 5

    iget-boolean v0, p0, Lc/v;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    new-instance v0, Lc/bd;

    invoke-direct {v0, v1}, Lc/bd;-><init>(I)V

    iget-object v1, p0, Lc/v;->a:Ljava/util/Vector;

    iput-object v1, v0, Lc/v;->a:Ljava/util/Vector;

    return-object v0

    :cond_f
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    :goto_15
    iget-object v3, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_29

    iget-object v3, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_29
    new-instance v2, Lc/bd;

    invoke-direct {v2, v1}, Lc/bd;-><init>(I)V

    iput-object v0, v2, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Lc/v;->q()V

    return-object v2
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
    invoke-virtual {p0}, Lc/v;->p()I

    move-result v0

    new-array v0, v0, [Lc/e;

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0}, Lc/v;->p()I

    move-result v2

    if-eq v1, v2, :cond_16

    invoke-virtual {p0, v1}, Lc/v;->k(I)Lc/e;

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

.method public final j()Lc/s;
    .registers 3

    new-instance v0, Lc/bd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/bd;-><init>(I)V

    iget-object v1, p0, Lc/v;->a:Ljava/util/Vector;

    iput-object v1, v0, Lc/v;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public final k(I)Lc/e;
    .registers 3

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e;

    return-object p1
.end method

.method public final o()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final p()I
    .registers 2

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final q()V
    .registers 16

    const-string v0, "cannot encode object added to SET"

    const-string v1, "DER"

    iget-boolean v2, p0, Lc/v;->b:Z

    if-nez v2, :cond_8d

    const/4 v2, 0x1

    iput-boolean v2, p0, Lc/v;->b:Z

    iget-object v3, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v2, :cond_8d

    iget-object v3, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    :goto_1b
    if-eqz v4, :cond_8d

    iget-object v4, p0, Lc/v;->a:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e;

    .line 1
    :try_start_26
    invoke-interface {v4}, Lc/e;->l()Lc/s;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_86

    move-object v7, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_32
    if-eq v8, v3, :cond_83

    .line 2
    iget-object v9, p0, Lc/v;->a:Ljava/util/Vector;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/e;

    .line 3
    :try_start_3e
    invoke-interface {v9}, Lc/e;->l()Lc/s;

    move-result-object v9

    invoke-virtual {v9, v1}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object v9
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_46} :catch_7c

    .line 4
    array-length v11, v7

    array-length v12, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    :goto_4d
    if-eq v12, v11, :cond_5f

    aget-byte v13, v7, v12

    aget-byte v14, v9, v12

    if-eq v13, v14, :cond_5c

    and-int/lit16 v11, v13, 0xff

    and-int/lit16 v12, v14, 0xff

    if-ge v11, v12, :cond_64

    goto :goto_62

    :cond_5c
    add-int/lit8 v12, v12, 0x1

    goto :goto_4d

    :cond_5f
    array-length v12, v7

    if-ne v11, v12, :cond_64

    :goto_62
    move-object v7, v9

    goto :goto_7a

    .line 5
    :cond_64
    iget-object v4, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v6, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v6, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v6, v4, v10}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v4, v8

    const/4 v6, 0x1

    :goto_7a
    move v8, v10

    goto :goto_32

    .line 6
    :catch_7c
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_83
    move v3, v4

    move v4, v6

    goto :goto_1b

    :catch_86
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8d
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/v;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

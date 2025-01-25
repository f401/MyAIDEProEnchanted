.class public abstract Lc/o;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/p;


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Lc/s;-><init>()V

    const-string v0, "string cannot be null"

    invoke-static {p1, v0}, Lc/aw$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lc/o;->a:[B

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lc/o;
    .registers 3

    if-eqz p0, :cond_5b

    instance-of v0, p0, Lc/o;

    if-eqz v0, :cond_7

    goto :goto_5b

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_2e

    :try_start_b
    check-cast p0, [B

    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object p0

    invoke-static {p0}, Lc/o;->b(Ljava/lang/Object;)Lc/o;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 1
    const-string v0, "failed to construct OCTET STRING from byte[]: "

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

    :cond_2e
    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_40

    move-object v0, p0

    check-cast v0, Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    instance-of v1, v0, Lc/o;

    if-eqz v1, :cond_40

    check-cast v0, Lc/o;

    return-object v0

    .line 3
    :cond_40
    const-string v0, "illegal object in getInstance: "

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

    :cond_5b
    :goto_5b
    check-cast p0, Lc/o;

    return-object p0
.end method


# virtual methods
.method public final c()Lc/s;
    .registers 1

    return-object p0
.end method

.method public final d(Lc/s;)Z
    .registers 3

    instance-of v0, p1, Lc/o;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lc/o;

    iget-object v0, p0, Lc/o;->a:[B

    iget-object p1, p1, Lc/o;->a:[B

    invoke-static {v0, p1}, Lx/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public final h()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lc/o;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-virtual {p0}, Lc/o;->k()[B

    move-result-object v0

    invoke-static {v0}, Lx/a;->c([B)I

    move-result v0

    return v0
.end method

.method public final i()Lc/s;
    .registers 3

    new-instance v0, Lc/az;

    iget-object v1, p0, Lc/o;->a:[B

    invoke-direct {v0, v1}, Lc/az;-><init>([B)V

    return-object v0
.end method

.method public final j()Lc/s;
    .registers 3

    new-instance v0, Lc/az;

    iget-object v1, p0, Lc/o;->a:[B

    invoke-direct {v0, v1}, Lc/az;-><init>([B)V

    return-object v0
.end method

.method public k()[B
    .registers 2

    iget-object v0, p0, Lc/o;->a:[B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "#"

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/o;->a:[B

    invoke-static {v1}, Ly/a;->c([B)[B

    move-result-object v1

    invoke-static {v1}, Lx/b;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

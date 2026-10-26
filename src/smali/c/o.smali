.class public abstract Lc/o;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/p;


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lc/s;-><init>()V

    const-string v0, "string cannot be null"

    invoke-static {p1, v0}, Lc/aw$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lc/o;->a:[B

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lc/o;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lc/o;

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    check-cast p0, Lc/o;

    move-object v0, p0

    :goto_0
    return-object v0

    .line 4294967295
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object v0

    invoke-static {v0}, Lc/o;->b(Ljava/lang/Object;)Lc/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1
    const-string v1, "failed to construct OCTET STRING from byte[]: "

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

    :cond_2
    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    instance-of v1, v0, Lc/o;

    if-eqz v1, :cond_3

    check-cast v0, Lc/o;

    goto :goto_0

    .line 3
    :cond_3
    const-string v0, "illegal object in getInstance: "

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
.method public final c()Lc/s;
    .locals 0

    return-object p0
.end method

.method public final d(Lc/s;)Z
    .locals 2

    instance-of v0, p1, Lc/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lc/o;

    iget-object v0, p0, Lc/o;->a:[B

    iget-object v1, p1, Lc/o;->a:[B

    invoke-static {v0, v1}, Lx/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final h()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lc/o;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lc/o;->k()[B

    move-result-object v0

    invoke-static {v0}, Lx/a;->c([B)I

    move-result v0

    return v0
.end method

.method public final i()Lc/s;
    .locals 2

    new-instance v0, Lc/az;

    iget-object v1, p0, Lc/o;->a:[B

    invoke-direct {v0, v1}, Lc/az;-><init>([B)V

    return-object v0
.end method

.method public final j()Lc/s;
    .locals 2

    new-instance v0, Lc/az;

    iget-object v1, p0, Lc/o;->a:[B

    invoke-direct {v0, v1}, Lc/az;-><init>([B)V

    return-object v0
.end method

.method public k()[B
    .locals 1

    iget-object v0, p0, Lc/o;->a:[B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

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

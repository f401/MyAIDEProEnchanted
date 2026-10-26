.class public abstract Lc/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lc/e;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lc/e;

    invoke-virtual {p0}, Lc/m;->l()Lc/s;

    move-result-object v0

    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lc/m;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract l()Lc/s;
.end method

.method public final m()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lc/q;

    invoke-direct {v1, v0}, Lc/q;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lc/q;->j(Lc/e;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lc/ba;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/ba;-><init>(Ljava/io/OutputStream;I)V

    :goto_0
    invoke-virtual {v0, p0}, Lc/ba;->j(Lc/e;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lc/ba;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc/ba;-><init>(Ljava/io/OutputStream;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc/m;->m()[B

    move-result-object v0

    goto :goto_1
.end method

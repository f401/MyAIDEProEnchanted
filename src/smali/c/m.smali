.class public abstract Lc/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lc/e;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lc/e;

    invoke-virtual {p0}, Lc/m;->l()Lc/s;

    move-result-object v0

    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lc/m;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract l()Lc/s;
.end method

.method public final m()[B
    .registers 3

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
    .registers 4

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lc/ba;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc/ba;-><init>(Ljava/io/OutputStream;I)V

    goto :goto_27

    :cond_14
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lc/ba;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lc/ba;-><init>(Ljava/io/OutputStream;I)V

    :goto_27
    invoke-virtual {v0, p0}, Lc/ba;->j(Lc/e;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_2f
    invoke-virtual {p0}, Lc/m;->m()[B

    move-result-object p1

    return-object p1
.end method

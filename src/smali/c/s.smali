.class public abstract Lc/s;
.super Lc/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lc/m;-><init>()V

    return-void
.end method

.method public static t([B)Lc/s;
    .registers 2

    new-instance v0, Lc/j;

    invoke-direct {v0, p0}, Lc/j;-><init>([B)V

    :try_start_5
    invoke-virtual {v0}, Lc/j;->j()Lc/s;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_10

    return-object p0

    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Extra data detected in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_18} :catch_18

    :catch_18
    move-exception p0

    new-instance p0, Ljava/io/IOException;

    const-string v0, "cannot recognise object in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract d(Lc/s;)Z
.end method

.method public abstract e(Lc/q;)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lc/e;

    if-eqz v1, :cond_15

    check-cast p1, Lc/e;

    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/s;->d(Lc/s;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public abstract f()I
.end method

.method public abstract g()Z
.end method

.method public abstract hashCode()I
.end method

.method public i()Lc/s;
    .registers 1

    return-object p0
.end method

.method public j()Lc/s;
    .registers 1

    return-object p0
.end method

.method public final l()Lc/s;
    .registers 1

    return-object p0
.end method

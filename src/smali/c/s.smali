.class public abstract Lc/s;
.super Lc/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/m;-><init>()V

    return-void
.end method

.method public static t([B)Lc/s;
    .locals 2

    new-instance v0, Lc/j;

    invoke-direct {v0, p0}, Lc/j;-><init>([B)V

    :try_start_0
    invoke-virtual {v0}, Lc/j;->j()Lc/s;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Extra data detected in stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot recognise object in stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract d(Lc/s;)Z
.end method

.method public abstract e(Lc/q;)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lc/e;

    if-eqz v1, :cond_2

    check-cast p1, Lc/e;

    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/s;->d(Lc/s;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract f()I
.end method

.method public abstract g()Z
.end method

.method public abstract hashCode()I
.end method

.method public i()Lc/s;
    .locals 0

    return-object p0
.end method

.method public j()Lc/s;
    .locals 0

    return-object p0
.end method

.method public final l()Lc/s;
    .locals 0

    return-object p0
.end method

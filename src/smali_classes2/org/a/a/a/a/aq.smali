.class public final Lorg/a/a/a/a/aq;
.super Lorg/a/a/a/a/bf;


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/n;Lorg/a/a/a/c/j;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/a/a/a/a/bf;-><init>(Lorg/a/a/a/a/n;Lorg/a/a/a/c/j;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public a(III)Z
    .registers 5

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/a/a/a/a/bf;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7e

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/a/a/a/a/bf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

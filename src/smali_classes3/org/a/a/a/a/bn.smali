.class public final Lorg/a/a/a/a/bn;
.super Lorg/a/a/a/a/bl;


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/a/a/bl;-><init>(Lorg/a/a/a/a/n;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public a(III)Z
    .locals 1

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "."

    return-object v0
.end method

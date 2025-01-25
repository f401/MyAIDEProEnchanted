.class public Lorg/a/a/a/a/y;
.super Lorg/a/a/a/a/bg;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lorg/a/a/a/a/bg;-><init>(Lorg/a/a/a/a/ax;I)V

    return-void
.end method


# virtual methods
.method public a(I)Lorg/a/a/a/a/ax;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)I
    .registers 3

    iget v0, p0, Lorg/a/a/a/a/y;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "$"

    return-object v0
.end method

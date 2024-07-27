.class public abstract Lorg/a/a/a/a/d;
.super Lorg/a/a/a/c/b;


# direct methods
.method public constructor <init>(Lorg/a/a/a/c/a;)V
    .registers 4

    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lorg/a/a/a/a/d;-><init>(Lorg/a/a/a/c/a;II)V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/c/a;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/a/c/b;-><init>(Lorg/a/a/a/c/a;II)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Lorg/a/a/a/a/b;
    .registers 3

    instance-of v0, p1, Lorg/a/a/a/a/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    check-cast p1, Lorg/a/a/a/a/b;

    goto :goto_0
.end method

.method protected final a(I)[[Lorg/a/a/a/a/b;
    .registers 3

    new-array v0, p1, [[Lorg/a/a/a/a/b;

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/a/a/a/a/d;->a(Ljava/lang/Object;)Lorg/a/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected final b(I)[Lorg/a/a/a/a/b;
    .registers 3

    new-array v0, p1, [Lorg/a/a/a/a/b;

    return-object v0
.end method

.method protected synthetic c(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/a/a/a/a/d;->b(I)[Lorg/a/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(I)[[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/a/a/a/a/d;->a(I)[[Lorg/a/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

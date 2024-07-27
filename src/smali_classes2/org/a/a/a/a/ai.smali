.class public final Lorg/a/a/a/a/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/a/a/ad;


# instance fields
.field private final a:I

.field private final b:Lorg/a/a/a/a/ad;


# direct methods
.method public constructor <init>(ILorg/a/a/a/a/ad;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/a/a/a/a/ai;->a:I

    iput-object p2, p0, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/p;)V
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    invoke-interface {v0, p1}, Lorg/a/a/a/a/ad;->a(Lorg/a/a/a/p;)V

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/a/ai;->a:I

    return v0
.end method

.method public c()Lorg/a/a/a/a/ad;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v2, p1, Lorg/a/a/a/a/ai;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/a/a/a/a/ai;

    iget v2, p0, Lorg/a/a/a/a/ai;->a:I

    iget v3, p1, Lorg/a/a/a/a/ai;->a:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    iget-object v3, p1, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    invoke-static {}, Lorg/a/a/a/c/k;->a()I

    move-result v0

    iget v1, p0, Lorg/a/a/a/a/ai;->a:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0
.end method

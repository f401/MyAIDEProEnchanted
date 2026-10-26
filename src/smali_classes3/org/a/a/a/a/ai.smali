.class public final Lorg/a/a/a/a/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/a/a/ad;


# instance fields
.field private final a:I

.field private final b:Lorg/a/a/a/a/ad;


# direct methods
.method public constructor <init>(ILorg/a/a/a/a/ad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/a/a/a/a/ai;->a:I

    iput-object p2, p0, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/p;)V
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    invoke-interface {v0, p1}, Lorg/a/a/a/a/ad;->a(Lorg/a/a/a/p;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/a/a/a/a/ai;->a:I

    return v0
.end method

.method public c()Lorg/a/a/a/a/ad;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v1, p1, Lorg/a/a/a/a/ai;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/a/a/a/a/ai;

    iget v1, p0, Lorg/a/a/a/a/ai;->a:I

    iget v2, p1, Lorg/a/a/a/a/ai;->a:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    iget-object v2, p1, Lorg/a/a/a/a/ai;->b:Lorg/a/a/a/a/ad;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

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

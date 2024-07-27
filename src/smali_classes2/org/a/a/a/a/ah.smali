.class public final Lorg/a/a/a/a/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/a/a/ad;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/a/a/a/a/ah;->a:I

    iput p2, p0, Lorg/a/a/a/a/ah;->b:I

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/p;)V
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/a/a/a/a/ah;->a:I

    iget v2, p0, Lorg/a/a/a/a/ah;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/a/a/a/p;->b(Lorg/a/a/a/w;II)V

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lorg/a/a/a/a/af;
    .registers 2

    sget-object v0, Lorg/a/a/a/a/af;->b:Lorg/a/a/a/a/af;

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
    instance-of v2, p1, Lorg/a/a/a/a/ah;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/a/a/a/a/ah;

    iget v2, p0, Lorg/a/a/a/a/ah;->a:I

    iget v3, p1, Lorg/a/a/a/a/ah;->a:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/a/a/a/a/ah;->b:I

    iget v3, p1, Lorg/a/a/a/a/ah;->b:I

    if-eq v2, v3, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    invoke-static {}, Lorg/a/a/a/c/k;->a()I

    move-result v0

    invoke-virtual {p0}, Lorg/a/a/a/a/ah;->b()Lorg/a/a/a/a/af;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    iget v1, p0, Lorg/a/a/a/a/ah;->a:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    iget v1, p0, Lorg/a/a/a/a/ah;->b:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0
.end method

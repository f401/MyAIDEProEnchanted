.class public Lorg/c/a/a/c/a/a/c/ap;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method public constructor <init>(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/a/a/c/ap;->a:I

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/a/a/c/ap;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lorg/c/a/a/c/a/a/c/ap;

    iget v0, p0, Lorg/c/a/a/c/a/a/c/ap;->a:I

    iget v1, p1, Lorg/c/a/a/c/a/a/c/ap;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/c/a/a/c/a/a/c/ap;->b:I

    iget v1, p1, Lorg/c/a/a/c/a/a/c/ap;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/a/a/c/ap;->a:I

    iget v1, p0, Lorg/c/a/a/c/a/a/c/ap;->b:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

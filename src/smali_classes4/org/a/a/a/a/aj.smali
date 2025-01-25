.class public final Lorg/a/a/a/a/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/a/a/ad;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/a/a/a/a/aj;->a:I

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/p;)V
    .registers 3

    iget v0, p0, Lorg/a/a/a/a/aj;->a:I

    invoke-virtual {p1, v0}, Lorg/a/a/a/p;->a(I)V

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lorg/a/a/a/a/af;
    .registers 2

    sget-object v0, Lorg/a/a/a/a/af;->c:Lorg/a/a/a/a/af;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_6

    :cond_4
    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lorg/a/a/a/a/aj;

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/a/a/a/a/aj;->a:I

    check-cast p1, Lorg/a/a/a/a/aj;

    iget v3, p1, Lorg/a/a/a/a/aj;->a:I

    if-eq v2, v3, :cond_4

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    invoke-static {}, Lorg/a/a/a/c/k;->a()I

    move-result v0

    invoke-virtual {p0}, Lorg/a/a/a/a/aj;->b()Lorg/a/a/a/a/af;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    iget v1, p0, Lorg/a/a/a/a/aj;->a:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "mode(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/a/a/a/a/aj;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

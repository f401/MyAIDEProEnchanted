.class final Lorg/b/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:C

.field public final b:B


# direct methods
.method constructor <init>(BC)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/b/a/b/d;->b:B

    iput-char p2, p0, Lorg/b/a/b/d;->a:C

    return-void
.end method


# virtual methods
.method public a(Lorg/b/a/b/d;)I
    .registers 4

    iget-char v0, p0, Lorg/b/a/b/d;->a:C

    iget-char v1, p1, Lorg/b/a/b/d;->a:C

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lorg/b/a/b/d;

    invoke-virtual {p0, p1}, Lorg/b/a/b/d;->a(Lorg/b/a/b/d;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/b/a/b/d;

    if-eqz v1, :cond_14

    check-cast p1, Lorg/b/a/b/d;

    iget-char v1, p0, Lorg/b/a/b/d;->a:C

    iget-char v2, p1, Lorg/b/a/b/d;->a:C

    if-ne v1, v2, :cond_14

    iget-byte v1, p0, Lorg/b/a/b/d;->b:B

    iget-byte v2, p1, Lorg/b/a/b/d;->b:B

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-char v0, p0, Lorg/b/a/b/d;->a:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0xffff

    iget-char v2, p0, Lorg/b/a/b/d;->a:C

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/b/a/b/d;->b:B

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

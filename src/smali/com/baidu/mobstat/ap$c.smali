.class Lcom/baidu/mobstat/ap$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ap;

.field private b:I

.field private c:[Lcom/baidu/mobstat/ap$a;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ap;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/ap$c;->a:Lcom/baidu/mobstat/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x21

    iput p1, p0, Lcom/baidu/mobstat/ap$c;->b:I

    new-array p1, p1, [Lcom/baidu/mobstat/ap$a;

    iput-object p1, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/ap;[B)V
    .registers 7

    iput-object p1, p0, Lcom/baidu/mobstat/ap$c;->a:Lcom/baidu/mobstat/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x21

    iput p1, p0, Lcom/baidu/mobstat/ap$c;->b:I

    new-array p1, p1, [Lcom/baidu/mobstat/ap$a;

    iput-object p1, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    if-eqz p2, :cond_2d

    array-length p1, p2

    if-lez p1, :cond_2d

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_14
    array-length v1, p2

    if-ge v0, v1, :cond_2d

    aget-byte v1, p2, v0

    invoke-static {v1, p1}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v1

    aget-byte v2, p2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2d
    return-void
.end method

.method private b(I)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    array-length v1, v0

    sub-int v1, p1, v1

    if-lez v1, :cond_19

    array-length v1, v0

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v2

    sub-int v2, v1, p1

    if-gez v2, :cond_10

    goto :goto_11

    :cond_10
    move p1, v1

    :goto_11
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/baidu/mobstat/ap$a;

    iput-object p1, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    :cond_19
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/baidu/mobstat/ap$c;->d:I

    return v0
.end method

.method public a(I)Lcom/baidu/mobstat/ap$a;
    .registers 4

    iget v0, p0, Lcom/baidu/mobstat/ap$c;->d:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    aget-object p1, v0, p1

    return-object p1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idx "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/baidu/mobstat/ap$c;->d:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/baidu/mobstat/ap$a;)V
    .registers 5

    iget v0, p0, Lcom/baidu/mobstat/ap$c;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ap$c;->b(I)V

    iget-object v0, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    iget v1, p0, Lcom/baidu/mobstat/ap$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/mobstat/ap$c;->d:I

    aput-object p1, v0, v1

    return-void
.end method

.method public b()[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget v2, p0, Lcom/baidu/mobstat/ap$c;->d:I

    div-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_2e

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/ap$a;->b()B

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/ap$a;->b()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2e
    rem-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_42

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/ap$a;->b()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

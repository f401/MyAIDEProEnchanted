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
    .registers 3

    iput-object p1, p0, Lcom/baidu/mobstat/ap$c;->a:Lcom/baidu/mobstat/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    iput v0, p0, Lcom/baidu/mobstat/ap$c;->b:I

    iget v0, p0, Lcom/baidu/mobstat/ap$c;->b:I

    new-array v0, v0, [Lcom/baidu/mobstat/ap$a;

    iput-object v0, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/ap;[B)V
    .registers 8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/mobstat/ap$c;->a:Lcom/baidu/mobstat/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    iput v0, p0, Lcom/baidu/mobstat/ap$c;->b:I

    iget v0, p0, Lcom/baidu/mobstat/ap$c;->b:I

    new-array v0, v0, [Lcom/baidu/mobstat/ap$a;

    iput-object v0, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-byte v2, p2, v0

    invoke-static {v2, v1}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    aget-byte v3, p2, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/baidu/mobstat/ap$a;->a(BZ)Lcom/baidu/mobstat/ap$a;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    invoke-virtual {p0, v3}, Lcom/baidu/mobstat/ap$c;->a(Lcom/baidu/mobstat/ap$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(I)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    array-length v0, v0

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    sub-int v1, v0, p1

    if-gez v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/ap$a;

    iput-object v0, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    :cond_0
    return-void

    :cond_1
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/baidu/mobstat/ap$c;->d:I

    return v0
.end method

.method public a(I)Lcom/baidu/mobstat/ap$a;
    .registers 5

    iget v0, p0, Lcom/baidu/mobstat/ap$c;->d:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mobstat/ap$c;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ap$c;->c:[Lcom/baidu/mobstat/ap$a;

    aget-object v0, v0, p1

    return-object v0
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

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/baidu/mobstat/ap$c;->d:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/ap$a;->b()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/ap$a;->b()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/ap$c;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/mobstat/ap$c;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ap$c;->a(I)Lcom/baidu/mobstat/ap$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ap$a;->b()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

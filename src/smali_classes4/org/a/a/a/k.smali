.class final Lorg/a/a/a/k;
.super Lorg/a/a/a/h;


# static fields
.field static final e:Z


# instance fields
.field private final f:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/a/a/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/a/a/a/k;->e:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(IILjava/lang/String;[BI)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/a/a/a/h;-><init>(IILjava/lang/String;Lorg/a/a/a/h;)V

    sget-boolean v0, Lorg/a/a/a/k;->e:Z

    if-nez v0, :cond_10

    if-eqz p5, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iput-object p4, p0, Lorg/a/a/a/k;->f:[B

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;[BILorg/a/a/a/k;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/a/a/a/k;-><init>(IILjava/lang/String;[BI)V

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/c/h;)Ljava/lang/String;
    .registers 7

    iget v0, p1, Lorg/a/a/a/c/h;->d:I

    iget v1, p0, Lorg/a/a/a/k;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Lorg/a/a/a/c/h;->e:I

    iget v2, p1, Lorg/a/a/a/c/h;->d:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/a/a/a/k;->a:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/a/a/a/k;->f:[B

    sget-object v4, Lorg/a/a/a/d;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public c(I)I
    .registers 5

    const/4 v0, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    packed-switch v1, :pswitch_data_30

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10  #0xffffffff
    iget v1, p0, Lorg/a/a/a/k;->c:I

    add-int/2addr v1, p1

    if-gez v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lorg/a/a/a/k;->f:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_15

    :pswitch_1d  #0x0
    const/4 v0, 0x0

    goto :goto_15

    :pswitch_1f  #0x1
    iget v1, p0, Lorg/a/a/a/k;->c:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/a/a/a/k;->a:I

    if-ge v1, v2, :cond_15

    iget-object v0, p0, Lorg/a/a/a/k;->f:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_15

    nop

    :pswitch_data_30
    .packed-switch -0x1
        :pswitch_10  #ffffffff
        :pswitch_1d  #00000000
        :pswitch_1f  #00000001
    .end packed-switch
.end method

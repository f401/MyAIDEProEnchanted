.class final Lorg/a/a/a/i;
.super Lorg/a/a/a/h;


# static fields
.field static final e:Z


# instance fields
.field private final f:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/a/a/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/a/a/a/i;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;[CI)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/a/a/a/h;-><init>(IILjava/lang/String;Lorg/a/a/a/h;)V

    iput-object p4, p0, Lorg/a/a/a/i;->f:[C

    sget-boolean v0, Lorg/a/a/a/i;->e:Z

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;[CILorg/a/a/a/i;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/a/a/a/i;-><init>(IILjava/lang/String;[CI)V

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/c/h;)Ljava/lang/String;
    .registers 6

    iget v0, p1, Lorg/a/a/a/c/h;->d:I

    iget v1, p0, Lorg/a/a/a/i;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Lorg/a/a/a/c/h;->e:I

    iget v2, p1, Lorg/a/a/a/c/h;->d:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/a/a/a/i;->a:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/a/a/a/i;->f:[C

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public c(I)I
    .registers 6

    const v3, 0xffff

    const/4 v0, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v1, p0, Lorg/a/a/a/i;->c:I

    add-int/2addr v1, p1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/a/a/a/i;->f:[C

    aget-char v0, v0, v1

    and-int/2addr v0, v3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lorg/a/a/a/i;->c:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/a/a/a/i;->a:I

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/a/a/a/i;->f:[C

    aget-char v0, v0, v1

    and-int/2addr v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

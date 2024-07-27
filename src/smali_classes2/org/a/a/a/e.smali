.class public Lorg/a/a/a/e;
.super Ljava/lang/Object;


# static fields
.field static final a:Z

.field private static f:[I


# instance fields
.field private final b:Lorg/a/a/a/g;

.field private final c:Ljava/nio/ByteBuffer;

.field private final d:Ljava/nio/CharBuffer;

.field private final e:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/a/a/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/a/a/a/e;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/a/a/a/g;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/a/e;->b:Lorg/a/a/a/g;

    iput-object p2, p0, Lorg/a/a/a/e;->c:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lorg/a/a/a/e;->d:Ljava/nio/CharBuffer;

    iput-object p4, p0, Lorg/a/a/a/e;->e:Ljava/nio/IntBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/a/a/a/g;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;Lorg/a/a/a/e;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/a/a/a/e;-><init>(Lorg/a/a/a/g;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public static a(I)Lorg/a/a/a/f;
    .registers 3

    new-instance v0, Lorg/a/a/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/a/a/a/f;-><init>(ILorg/a/a/a/f;)V

    return-object v0
.end method

.method static synthetic h()[I
    .registers 3

    sget-object v0, Lorg/a/a/a/e;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/a/a/a/g;->a()[Lorg/a/a/a/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/a/a/a/g;->a:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    sget-object v1, Lorg/a/a/a/g;->b:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/a/a/a/g;->c:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    sput-object v0, Lorg/a/a/a/e;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .registers 3

    invoke-static {}, Lorg/a/a/a/e;->h()[I

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/e;->b:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/a/a/a/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lorg/a/a/a/e;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/a/a/a/e;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()I
    .registers 3

    invoke-static {}, Lorg/a/a/a/e;->h()[I

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/e;->b:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/a/a/a/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lorg/a/a/a/e;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/a/a/a/e;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method c()Lorg/a/a/a/g;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/e;->b:Lorg/a/a/a/g;

    return-object v0
.end method

.method d()I
    .registers 3

    invoke-static {}, Lorg/a/a/a/e;->h()[I

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/e;->b:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/a/a/a/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lorg/a/a/a/e;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/a/a/a/e;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method e()[B
    .registers 3

    sget-boolean v0, Lorg/a/a/a/e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/a/a/a/e;->b:Lorg/a/a/a/g;

    sget-object v1, Lorg/a/a/a/g;->a:Lorg/a/a/a/g;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method f()[C
    .registers 3

    sget-boolean v0, Lorg/a/a/a/e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/a/a/a/e;->b:Lorg/a/a/a/g;

    sget-object v1, Lorg/a/a/a/g;->b:Lorg/a/a/a/g;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/e;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    return-object v0
.end method

.method g()[I
    .registers 3

    sget-boolean v0, Lorg/a/a/a/e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/a/a/a/e;->b:Lorg/a/a/a/g;

    sget-object v1, Lorg/a/a/a/g;->c:Lorg/a/a/a/g;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/e;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    return-object v0
.end method

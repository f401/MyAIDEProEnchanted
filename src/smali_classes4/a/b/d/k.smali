.class public La/b/d/k;
.super La/b/d/c;


# instance fields
.field public a:Z

.field public b:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/d/c;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 4

    invoke-static {p1}, La/b/d/k;->a(B)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, La/b/d/k;-><init>(BII)V

    return-void
.end method

.method public constructor <init>(BI)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, La/b/d/k;-><init>(BII)V

    return-void
.end method

.method public constructor <init>(BII)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0}, La/b/d/c;-><init>()V

    iput-byte p1, p0, La/b/d/k;->c:B

    iput p2, p0, La/b/d/k;->b:I

    iput p3, p0, La/b/d/k;->d:I

    invoke-direct {p0}, La/b/d/k;->i()I

    move-result v1

    if-gt v1, v0, :cond_16

    invoke-direct {p0}, La/b/d/k;->k()I

    move-result v1

    if-le v1, v0, :cond_19

    :cond_16
    :goto_16
    iput-boolean v0, p0, La/b/d/k;->a:Z

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, La/b/d/c;-><init>()V

    iput-boolean p1, p0, La/b/d/k;->a:Z

    return-void
.end method

.method private static a(B)I
    .registers 2

    packed-switch p0, :pswitch_data_c

    :pswitch_3  #0x1e, 0x22, 0x26, 0x2a, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3f, 0x43, 0x47, 0x4b
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5  #0x1b, 0x1f, 0x23, 0x27, 0x2b, 0x3c, 0x40, 0x44, 0x48, 0x4c
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_7  #0x1c, 0x20, 0x24, 0x28, 0x2c, 0x3d, 0x41, 0x45, 0x49, 0x4d
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_9  #0x1d, 0x21, 0x25, 0x29, 0x2d, 0x3e, 0x42, 0x46, 0x4a, 0x4e
    const/4 v0, 0x3

    goto :goto_4

    nop

    :pswitch_data_c
    .packed-switch 0x1b
        :pswitch_5  #0000001b
        :pswitch_7  #0000001c
        :pswitch_9  #0000001d
        :pswitch_3  #0000001e
        :pswitch_5  #0000001f
        :pswitch_7  #00000020
        :pswitch_9  #00000021
        :pswitch_3  #00000022
        :pswitch_5  #00000023
        :pswitch_7  #00000024
        :pswitch_9  #00000025
        :pswitch_3  #00000026
        :pswitch_5  #00000027
        :pswitch_7  #00000028
        :pswitch_9  #00000029
        :pswitch_3  #0000002a
        :pswitch_5  #0000002b
        :pswitch_7  #0000002c
        :pswitch_9  #0000002d
        :pswitch_3  #0000002e
        :pswitch_3  #0000002f
        :pswitch_3  #00000030
        :pswitch_3  #00000031
        :pswitch_3  #00000032
        :pswitch_3  #00000033
        :pswitch_3  #00000034
        :pswitch_3  #00000035
        :pswitch_3  #00000036
        :pswitch_3  #00000037
        :pswitch_3  #00000038
        :pswitch_3  #00000039
        :pswitch_3  #0000003a
        :pswitch_3  #0000003b
        :pswitch_5  #0000003c
        :pswitch_7  #0000003d
        :pswitch_9  #0000003e
        :pswitch_3  #0000003f
        :pswitch_5  #00000040
        :pswitch_7  #00000041
        :pswitch_9  #00000042
        :pswitch_3  #00000043
        :pswitch_5  #00000044
        :pswitch_7  #00000045
        :pswitch_9  #00000046
        :pswitch_3  #00000047
        :pswitch_5  #00000048
        :pswitch_7  #00000049
        :pswitch_9  #0000004a
        :pswitch_3  #0000004b
        :pswitch_5  #0000004c
        :pswitch_7  #0000004d
        :pswitch_9  #0000004e
    .end packed-switch
.end method

.method private h()I
    .registers 3

    iget-byte v0, p0, La/b/d/k;->c:B

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    iget-byte v0, p0, La/b/d/k;->c:B

    const/16 v1, 0x2d

    if-le v0, v1, :cond_18

    :cond_c
    iget-byte v0, p0, La/b/d/k;->c:B

    const/16 v1, 0x3b

    if-lt v0, v1, :cond_1a

    iget-byte v0, p0, La/b/d/k;->c:B

    const/16 v1, 0x4e

    if-gt v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    iget-boolean v0, p0, La/b/d/k;->a:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    goto :goto_19

    :cond_20
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private i()I
    .registers 3

    iget v0, p0, La/b/d/k;->b:I

    and-int/lit8 v0, v0, 0x3

    iget v1, p0, La/b/d/k;->b:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, La/b/d/k;->b:I

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, La/b/d/k;->b:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    iget v0, p0, La/b/d/k;->b:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget v1, p0, La/b/d/k;->b:I

    if-ne v0, v1, :cond_20

    const/4 v0, 0x2

    goto :goto_9

    :cond_20
    const/4 v0, 0x4

    goto :goto_9
.end method

.method private j()I
    .registers 3

    iget-byte v0, p0, La/b/d/k;->c:B

    const/16 v1, -0x7c

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-boolean v0, p0, La/b/d/k;->a:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_7

    :cond_e
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private k()I
    .registers 3

    iget-byte v0, p0, La/b/d/k;->c:B

    const/16 v1, -0x7c

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, p0, La/b/d/k;->d:I

    int-to-byte v0, v0

    iget v1, p0, La/b/d/k;->d:I

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_7

    :cond_11
    iget v0, p0, La/b/d/k;->d:I

    int-to-short v0, v0

    iget v1, p0, La/b/d/k;->d:I

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x2

    goto :goto_7

    :cond_1a
    const/4 v0, 0x4

    goto :goto_7
.end method


# virtual methods
.method public a(I)I
    .registers 4

    iget-boolean v0, p0, La/b/d/k;->a:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    :goto_5
    invoke-direct {p0}, La/b/d/k;->h()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, La/b/d/k;->j()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public a()La/b/d/c;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, La/b/d/k;->b()B

    move-result v1

    iput-byte v1, p0, La/b/d/k;->c:B

    iget v1, p0, La/b/d/k;->b:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_11

    iget-byte v1, p0, La/b/d/k;->c:B

    sparse-switch v1, :sswitch_data_72

    :cond_11
    :goto_11
    invoke-direct {p0}, La/b/d/k;->i()I

    move-result v1

    if-gt v1, v0, :cond_1d

    invoke-direct {p0}, La/b/d/k;->k()I

    move-result v1

    if-le v1, v0, :cond_70

    :cond_1d
    :goto_1d
    iput-boolean v0, p0, La/b/d/k;->a:Z

    return-object p0

    :sswitch_20
    iget v1, p0, La/b/d/k;->b:I

    add-int/lit8 v1, v1, 0x1a

    int-to-byte v1, v1

    iput-byte v1, p0, La/b/d/k;->c:B

    goto :goto_11

    :sswitch_28
    iget v1, p0, La/b/d/k;->b:I

    add-int/lit8 v1, v1, 0x1e

    int-to-byte v1, v1

    iput-byte v1, p0, La/b/d/k;->c:B

    goto :goto_11

    :sswitch_30
    iget v1, p0, La/b/d/k;->b:I

    add-int/lit8 v1, v1, 0x22

    int-to-byte v1, v1

    iput-byte v1, p0, La/b/d/k;->c:B

    goto :goto_11

    :sswitch_38
    iget v1, p0, La/b/d/k;->b:I

    add-int/lit8 v1, v1, 0x26

    int-to-byte v1, v1

    iput-byte v1, p0, La/b/d/k;->c:B

    goto :goto_11

    :sswitch_40
    iget v1, p0, La/b/d/k;->b:I

    add-int/lit8 v1, v1, 0x2a

    int-to-byte v1, v1

    iput-byte v1, p0, La/b/d/k;->c:B

    goto :goto_11

    :sswitch_48
    iget v1, p0, La/b/d/k;->b:I

    add-int/lit8 v1, v1, 0x3b

    int-to-byte v1, v1

    iput-byte v1, p0, La/b/d/k;->c:B

    goto :goto_11

    :sswitch_50
    iget v1, p0, La/b/d/k;->b:I

    add-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    iput-byte v1, p0, La/b/d/k;->c:B

    goto :goto_11

    :sswitch_58
    iget v1, p0, La/b/d/k;->b:I

    add-int/lit8 v1, v1, 0x43

    int-to-byte v1, v1

    iput-byte v1, p0, La/b/d/k;->c:B

    goto :goto_11

    :sswitch_60
    iget v1, p0, La/b/d/k;->b:I

    add-int/lit8 v1, v1, 0x47

    int-to-byte v1, v1

    iput-byte v1, p0, La/b/d/k;->c:B

    goto :goto_11

    :sswitch_68
    iget v1, p0, La/b/d/k;->b:I

    add-int/lit8 v1, v1, 0x4b

    int-to-byte v1, v1

    iput-byte v1, p0, La/b/d/k;->c:B

    goto :goto_11

    :cond_70
    const/4 v0, 0x0

    goto :goto_1d

    :sswitch_data_72
    .sparse-switch
        0x15 -> :sswitch_20
        0x16 -> :sswitch_28
        0x17 -> :sswitch_30
        0x18 -> :sswitch_38
        0x19 -> :sswitch_40
        0x36 -> :sswitch_48
        0x37 -> :sswitch_50
        0x38 -> :sswitch_58
        0x39 -> :sswitch_60
        0x3a -> :sswitch_68
    .end sparse-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V
    .registers 12

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, La/b/d/a/d;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V

    return-void
.end method

.method public b()B
    .registers 2

    iget-byte v0, p0, La/b/d/k;->c:B

    packed-switch v0, :pswitch_data_26

    :pswitch_5  #0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a
    iget-byte v0, p0, La/b/d/k;->c:B

    :goto_7
    return v0

    :pswitch_8  #0x1a, 0x1b, 0x1c, 0x1d
    const/16 v0, 0x15

    goto :goto_7

    :pswitch_b  #0x1e, 0x1f, 0x20, 0x21
    const/16 v0, 0x16

    goto :goto_7

    :pswitch_e  #0x22, 0x23, 0x24, 0x25
    const/16 v0, 0x17

    goto :goto_7

    :pswitch_11  #0x26, 0x27, 0x28, 0x29
    const/16 v0, 0x18

    goto :goto_7

    :pswitch_14  #0x2a, 0x2b, 0x2c, 0x2d
    const/16 v0, 0x19

    goto :goto_7

    :pswitch_17  #0x3b, 0x3c, 0x3d, 0x3e
    const/16 v0, 0x36

    goto :goto_7

    :pswitch_1a  #0x3f, 0x40, 0x41, 0x42
    const/16 v0, 0x37

    goto :goto_7

    :pswitch_1d  #0x43, 0x44, 0x45, 0x46
    const/16 v0, 0x38

    goto :goto_7

    :pswitch_20  #0x47, 0x48, 0x49, 0x4a
    const/16 v0, 0x39

    goto :goto_7

    :pswitch_23  #0x4b, 0x4c, 0x4d, 0x4e
    const/16 v0, 0x3a

    goto :goto_7

    :pswitch_data_26
    .packed-switch 0x1a
        :pswitch_8  #0000001a
        :pswitch_8  #0000001b
        :pswitch_8  #0000001c
        :pswitch_8  #0000001d
        :pswitch_b  #0000001e
        :pswitch_b  #0000001f
        :pswitch_b  #00000020
        :pswitch_b  #00000021
        :pswitch_e  #00000022
        :pswitch_e  #00000023
        :pswitch_e  #00000024
        :pswitch_e  #00000025
        :pswitch_11  #00000026
        :pswitch_11  #00000027
        :pswitch_11  #00000028
        :pswitch_11  #00000029
        :pswitch_14  #0000002a
        :pswitch_14  #0000002b
        :pswitch_14  #0000002c
        :pswitch_14  #0000002d
        :pswitch_5  #0000002e
        :pswitch_5  #0000002f
        :pswitch_5  #00000030
        :pswitch_5  #00000031
        :pswitch_5  #00000032
        :pswitch_5  #00000033
        :pswitch_5  #00000034
        :pswitch_5  #00000035
        :pswitch_5  #00000036
        :pswitch_5  #00000037
        :pswitch_5  #00000038
        :pswitch_5  #00000039
        :pswitch_5  #0000003a
        :pswitch_17  #0000003b
        :pswitch_17  #0000003c
        :pswitch_17  #0000003d
        :pswitch_17  #0000003e
        :pswitch_1a  #0000003f
        :pswitch_1a  #00000040
        :pswitch_1a  #00000041
        :pswitch_1a  #00000042
        :pswitch_1d  #00000043
        :pswitch_1d  #00000044
        :pswitch_1d  #00000045
        :pswitch_1d  #00000046
        :pswitch_20  #00000047
        :pswitch_20  #00000048
        :pswitch_20  #00000049
        :pswitch_20  #0000004a
        :pswitch_23  #0000004b
        :pswitch_23  #0000004c
        :pswitch_23  #0000004d
        :pswitch_23  #0000004e
    .end packed-switch
.end method

.method protected b([BI)V
    .registers 6

    invoke-direct {p0}, La/b/d/k;->h()I

    move-result v0

    invoke-direct {p0}, La/b/d/k;->j()I

    move-result v1

    if-nez v0, :cond_26

    iget-byte v0, p0, La/b/d/k;->c:B

    const/16 v2, 0x3b

    if-ge v0, v2, :cond_1f

    iget-byte v0, p0, La/b/d/k;->c:B

    add-int/lit8 v0, v0, -0x1a

    and-int/lit8 v0, v0, 0x3

    :goto_16
    iput v0, p0, La/b/d/k;->b:I

    :goto_18
    invoke-static {p1, p2, v1}, La/b/d/k;->b([BII)I

    move-result v0

    iput v0, p0, La/b/d/k;->d:I

    return-void

    :cond_1f
    iget-byte v0, p0, La/b/d/k;->c:B

    add-int/lit8 v0, v0, -0x3b

    and-int/lit8 v0, v0, 0x3

    goto :goto_16

    :cond_26
    invoke-static {p1, p2, v0}, La/b/d/k;->a([BII)I

    move-result v2

    iput v2, p0, La/b/d/k;->b:I

    add-int/2addr p2, v0

    goto :goto_18
.end method

.method protected c([BI)V
    .registers 6

    invoke-direct {p0}, La/b/d/k;->h()I

    move-result v0

    invoke-direct {p0}, La/b/d/k;->j()I

    move-result v1

    invoke-direct {p0}, La/b/d/k;->i()I

    move-result v2

    if-le v2, v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instruction has invalid variable index size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, La/b/d/k;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    invoke-direct {p0}, La/b/d/k;->k()I

    move-result v2

    if-le v2, v1, :cond_5a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instruction has invalid constant size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, La/b/d/k;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    iget v2, p0, La/b/d/k;->b:I

    invoke-static {p1, p2, v2, v0}, La/b/d/k;->a([BIII)V

    add-int/2addr v0, p2

    iget v2, p0, La/b/d/k;->d:I

    invoke-static {p1, v0, v2, v1}, La/b/d/k;->b([BIII)V

    return-void
.end method

.method protected c()Z
    .registers 2

    iget-boolean v0, p0, La/b/d/k;->a:Z

    return v0
.end method

.method public g()Z
    .registers 3

    iget-byte v0, p0, La/b/d/k;->c:B

    const/16 v1, 0x36

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La/b/d/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, La/b/d/k;->a:Z

    if-eqz v0, :cond_47

    const-string v0, "_w"

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/d/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, La/b/d/k;->j()I

    move-result v0

    if-lez v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, La/b/d/k;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_47
    const-string v0, ""

    goto :goto_13

    :cond_4a
    const-string v0, ""

    goto :goto_3e
.end method

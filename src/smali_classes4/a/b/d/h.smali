.class public La/b/d/h;
.super La/b/d/c;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/d/c;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 3

    invoke-static {p1}, La/b/d/h;->a(B)I

    move-result v0

    invoke-direct {p0, p1, v0}, La/b/d/h;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(BI)V
    .registers 3

    invoke-direct {p0}, La/b/d/c;-><init>()V

    iput-byte p1, p0, La/b/d/h;->c:B

    iput p2, p0, La/b/d/h;->a:I

    return-void
.end method

.method private static a(B)I
    .registers 2

    packed-switch p0, :pswitch_data_12

    :pswitch_3  #0x3, 0x9, 0xb, 0xe
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5  #0x2
    const/4 v0, -0x1

    goto :goto_4

    :pswitch_7  #0x4, 0xa, 0xc, 0xf
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_9  #0x5, 0xd
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_b  #0x6
    const/4 v0, 0x3

    goto :goto_4

    :pswitch_d  #0x7
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_f  #0x8
    const/4 v0, 0x5

    goto :goto_4

    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_5  #00000002
        :pswitch_3  #00000003
        :pswitch_7  #00000004
        :pswitch_9  #00000005
        :pswitch_b  #00000006
        :pswitch_d  #00000007
        :pswitch_f  #00000008
        :pswitch_3  #00000009
        :pswitch_7  #0000000a
        :pswitch_3  #0000000b
        :pswitch_7  #0000000c
        :pswitch_9  #0000000d
        :pswitch_3  #0000000e
        :pswitch_7  #0000000f
    .end packed-switch
.end method

.method private g()I
    .registers 3

    iget-byte v0, p0, La/b/d/h;->c:B

    const/16 v1, 0x10

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, La/b/d/h;->c:B

    const/16 v1, -0x44

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    iget-byte v0, p0, La/b/d/h;->c:B

    const/16 v1, 0x11

    if-ne v0, v1, :cond_16

    const/4 v0, 0x2

    goto :goto_d

    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private h()I
    .registers 3

    iget v0, p0, La/b/d/h;->a:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_c

    iget v0, p0, La/b/d/h;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget v0, p0, La/b/d/h;->a:I

    int-to-byte v0, v0

    iget v1, p0, La/b/d/h;->a:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_b

    :cond_15
    iget v0, p0, La/b/d/h;->a:I

    int-to-short v0, v0

    iget v1, p0, La/b/d/h;->a:I

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x2

    goto :goto_b

    :cond_1e
    const/4 v0, 0x4

    goto :goto_b
.end method


# virtual methods
.method public a(I)I
    .registers 3

    invoke-direct {p0}, La/b/d/h;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a()La/b/d/c;
    .registers 2

    iget-byte v0, p0, La/b/d/h;->c:B

    packed-switch v0, :pswitch_data_38

    :goto_5
    return-object p0

    :pswitch_6  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x10, 0x11
    invoke-direct {p0}, La/b/d/h;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    goto :goto_5

    :pswitch_e  #0x0
    iget v0, p0, La/b/d/h;->a:I

    add-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, La/b/d/h;->c:B

    goto :goto_5

    :pswitch_16  #0x1
    const/16 v0, 0x10

    iput-byte v0, p0, La/b/d/h;->c:B

    goto :goto_5

    :pswitch_1b  #0x2
    const/16 v0, 0x11

    iput-byte v0, p0, La/b/d/h;->c:B

    goto :goto_5

    :pswitch_20  #0x9, 0xa
    iget v0, p0, La/b/d/h;->a:I

    add-int/lit8 v0, v0, 0x9

    int-to-byte v0, v0

    iput-byte v0, p0, La/b/d/h;->c:B

    goto :goto_5

    :pswitch_28  #0xb, 0xc, 0xd
    iget v0, p0, La/b/d/h;->a:I

    add-int/lit8 v0, v0, 0xb

    int-to-byte v0, v0

    iput-byte v0, p0, La/b/d/h;->c:B

    goto :goto_5

    :pswitch_30  #0xe, 0xf
    iget v0, p0, La/b/d/h;->a:I

    add-int/lit8 v0, v0, 0xe

    int-to-byte v0, v0

    iput-byte v0, p0, La/b/d/h;->c:B

    goto :goto_5

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_6  #00000002
        :pswitch_6  #00000003
        :pswitch_6  #00000004
        :pswitch_6  #00000005
        :pswitch_6  #00000006
        :pswitch_6  #00000007
        :pswitch_6  #00000008
        :pswitch_20  #00000009
        :pswitch_20  #0000000a
        :pswitch_28  #0000000b
        :pswitch_28  #0000000c
        :pswitch_28  #0000000d
        :pswitch_30  #0000000e
        :pswitch_30  #0000000f
        :pswitch_6  #00000010
        :pswitch_6  #00000011
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_16  #00000001
        :pswitch_1b  #00000002
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V
    .registers 12

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, La/b/d/a/d;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V

    return-void
.end method

.method public b()B
    .registers 2

    iget-byte v0, p0, La/b/d/h;->c:B

    packed-switch v0, :pswitch_data_14

    iget-byte v0, p0, La/b/d/h;->c:B

    :goto_7
    return v0

    :pswitch_8  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x10, 0x11
    const/4 v0, 0x3

    goto :goto_7

    :pswitch_a  #0x9, 0xa
    const/16 v0, 0x9

    goto :goto_7

    :pswitch_d  #0xb, 0xc, 0xd
    const/16 v0, 0xb

    goto :goto_7

    :pswitch_10  #0xe, 0xf
    const/16 v0, 0xe

    goto :goto_7

    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_8  #00000002
        :pswitch_8  #00000003
        :pswitch_8  #00000004
        :pswitch_8  #00000005
        :pswitch_8  #00000006
        :pswitch_8  #00000007
        :pswitch_8  #00000008
        :pswitch_a  #00000009
        :pswitch_a  #0000000a
        :pswitch_d  #0000000b
        :pswitch_d  #0000000c
        :pswitch_d  #0000000d
        :pswitch_10  #0000000e
        :pswitch_10  #0000000f
        :pswitch_8  #00000010
        :pswitch_8  #00000011
    .end packed-switch
.end method

.method protected b([BI)V
    .registers 4

    invoke-direct {p0}, La/b/d/h;->g()I

    move-result v0

    if-nez v0, :cond_f

    iget-byte v0, p0, La/b/d/h;->c:B

    invoke-static {v0}, La/b/d/h;->a(B)I

    move-result v0

    :goto_c
    iput v0, p0, La/b/d/h;->a:I

    return-void

    :cond_f
    invoke-static {p1, p2, v0}, La/b/d/h;->b([BII)I

    move-result v0

    goto :goto_c
.end method

.method protected c([BI)V
    .registers 6

    invoke-direct {p0}, La/b/d/h;->g()I

    move-result v0

    invoke-direct {p0}, La/b/d/h;->h()I

    move-result v1

    if-le v1, v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instruction has invalid constant size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, La/b/d/h;->b(I)Ljava/lang/String;

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

    :cond_2d
    iget v1, p0, La/b/d/h;->a:I

    invoke-static {p1, p2, v1, v0}, La/b/d/h;->b([BIII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La/b/d/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, La/b/d/h;->g()I

    move-result v0

    if-lez v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, La/b/d/h;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    const-string v0, ""

    goto :goto_28
.end method

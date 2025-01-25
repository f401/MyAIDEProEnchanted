.class public La/b/d/a;
.super La/b/d/c;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/d/c;-><init>()V

    return-void
.end method

.method public constructor <init>(BI)V
    .registers 3

    invoke-direct {p0}, La/b/d/c;-><init>()V

    iput-byte p1, p0, La/b/d/a;->c:B

    iput p2, p0, La/b/d/a;->a:I

    return-void
.end method

.method private g()I
    .registers 3

    iget-byte v0, p0, La/b/d/a;->c:B

    const/16 v1, -0x38

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, La/b/d/a;->c:B

    const/16 v1, -0x37

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x4

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x2

    goto :goto_d
.end method

.method private h()I
    .registers 3

    iget v0, p0, La/b/d/a;->a:I

    int-to-short v0, v0

    iget v1, p0, La/b/d/a;->a:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x2

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x4

    goto :goto_8
.end method


# virtual methods
.method public a(I)I
    .registers 3

    invoke-direct {p0}, La/b/d/a;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a()La/b/d/c;
    .registers 7

    const/16 v5, -0x37

    const/16 v4, -0x58

    const/16 v3, -0x59

    const/16 v2, -0x38

    invoke-direct {p0}, La/b/d/a;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-byte v0, p0, La/b/d/a;->c:B

    if-ne v0, v2, :cond_16

    iput-byte v3, p0, La/b/d/a;->c:B

    :cond_15
    :goto_15
    return-object p0

    :cond_16
    iget-byte v0, p0, La/b/d/a;->c:B

    if-ne v0, v5, :cond_15

    iput-byte v4, p0, La/b/d/a;->c:B

    goto :goto_15

    :cond_1d
    iget-byte v0, p0, La/b/d/a;->c:B

    if-eq v0, v3, :cond_25

    iget-byte v0, p0, La/b/d/a;->c:B

    if-ne v0, v2, :cond_28

    :cond_25
    iput-byte v2, p0, La/b/d/a;->c:B

    goto :goto_15

    :cond_28
    iget-byte v0, p0, La/b/d/a;->c:B

    if-ne v0, v4, :cond_2f

    iput-byte v5, p0, La/b/d/a;->c:B

    goto :goto_15

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Branch instruction can\'t be widened ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, La/b/d/a;->toString()Ljava/lang/String;

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
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V
    .registers 12

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, La/b/d/a/d;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V

    return-void
.end method

.method public b()B
    .registers 2

    iget-byte v0, p0, La/b/d/a;->c:B

    packed-switch v0, :pswitch_data_e

    iget-byte v0, p0, La/b/d/a;->c:B

    :goto_7
    return v0

    :pswitch_8  #0xffffffc8
    const/16 v0, -0x59

    goto :goto_7

    :pswitch_b  #0xffffffc9
    const/16 v0, -0x58

    goto :goto_7

    :pswitch_data_e
    .packed-switch -0x38
        :pswitch_8  #ffffffc8
        :pswitch_b  #ffffffc9
    .end packed-switch
.end method

.method public b(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/b/d/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/d/a;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b([BI)V
    .registers 4

    invoke-direct {p0}, La/b/d/a;->g()I

    move-result v0

    invoke-static {p1, p2, v0}, La/b/d/a;->b([BII)I

    move-result v0

    iput v0, p0, La/b/d/a;->a:I

    return-void
.end method

.method protected c([BI)V
    .registers 6

    invoke-direct {p0}, La/b/d/a;->h()I

    move-result v0

    invoke-direct {p0}, La/b/d/a;->g()I

    move-result v1

    if-le v0, v1, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instruction has invalid branch offset size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, La/b/d/a;->b(I)Ljava/lang/String;

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
    iget v0, p0, La/b/d/a;->a:I

    invoke-direct {p0}, La/b/d/a;->g()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, La/b/d/a;->b([BIII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La/b/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, La/b/d/a;->a:I

    if-ltz v0, :cond_28

    const-string v0, "+"

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/d/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    const-string v0, ""

    goto :goto_19
.end method

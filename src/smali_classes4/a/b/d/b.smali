.class public La/b/d/b;
.super La/b/d/c;

# interfaces
.implements La/b/b/a/f;


# instance fields
.field public a:I

.field public b:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/d/c;-><init>()V

    return-void
.end method

.method public constructor <init>(BI)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, La/b/d/b;-><init>(BII)V

    return-void
.end method

.method public constructor <init>(BII)V
    .registers 4

    invoke-direct {p0}, La/b/d/c;-><init>()V

    iput-byte p1, p0, La/b/d/b;->c:B

    iput p2, p0, La/b/d/b;->a:I

    iput p3, p0, La/b/d/b;->b:I

    return-void
.end method

.method private g()I
    .registers 3

    iget-byte v0, p0, La/b/d/b;->c:B

    const/16 v1, 0x12

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x2

    goto :goto_7
.end method

.method private h()I
    .registers 3

    iget-byte v0, p0, La/b/d/b;->c:B

    const/16 v1, -0x3b

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-byte v0, p0, La/b/d/b;->c:B

    const/16 v1, -0x46

    if-eq v0, v1, :cond_14

    iget-byte v0, p0, La/b/d/b;->c:B

    const/16 v1, -0x47

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x2

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private i()I
    .registers 3

    iget v0, p0, La/b/d/b;->a:I

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, La/b/d/b;->a:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget v0, p0, La/b/d/b;->a:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget v1, p0, La/b/d/b;->a:I

    if-ne v0, v1, :cond_16

    const/4 v0, 0x2

    goto :goto_9

    :cond_16
    const/4 v0, 0x4

    goto :goto_9
.end method


# virtual methods
.method public a(I)I
    .registers 4

    invoke-direct {p0}, La/b/d/b;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, La/b/d/b;->h()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(La/b/c;)I
    .registers 4

    invoke-super {p0, p1}, La/b/d/c;->a(La/b/c;)I

    move-result v0

    iget-byte v1, p0, La/b/d/b;->c:B

    packed-switch v1, :pswitch_data_20

    :goto_9
    :pswitch_9  #0xffffffb4, 0xffffffbb, 0xffffffbc, 0xffffffbd, 0xffffffbe, 0xffffffbf, 0xffffffc0, 0xffffffc1, 0xffffffc2, 0xffffffc3, 0xffffffc4
    return v0

    :pswitch_a  #0xffffffc5
    iget v1, p0, La/b/d/b;->b:I

    add-int/2addr v0, v1

    goto :goto_9

    :pswitch_e  #0xffffffb3, 0xffffffb5
    iget v1, p0, La/b/d/b;->a:I

    invoke-interface {p1, v1, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget v1, p0, La/b/d/b;->e:I

    add-int/2addr v0, v1

    goto :goto_9

    :pswitch_17  #0xffffffb6, 0xffffffb7, 0xffffffb8, 0xffffffb9, 0xffffffba
    iget v1, p0, La/b/d/b;->a:I

    invoke-interface {p1, v1, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget v1, p0, La/b/d/b;->d:I

    add-int/2addr v0, v1

    goto :goto_9

    :pswitch_data_20
    .packed-switch -0x4d
        :pswitch_e  #ffffffb3
        :pswitch_9  #ffffffb4
        :pswitch_e  #ffffffb5
        :pswitch_17  #ffffffb6
        :pswitch_17  #ffffffb7
        :pswitch_17  #ffffffb8
        :pswitch_17  #ffffffb9
        :pswitch_17  #ffffffba
        :pswitch_9  #ffffffbb
        :pswitch_9  #ffffffbc
        :pswitch_9  #ffffffbd
        :pswitch_9  #ffffffbe
        :pswitch_9  #ffffffbf
        :pswitch_9  #ffffffc0
        :pswitch_9  #ffffffc1
        :pswitch_9  #ffffffc2
        :pswitch_9  #ffffffc3
        :pswitch_9  #ffffffc4
        :pswitch_a  #ffffffc5
    .end packed-switch
.end method

.method public a()La/b/d/c;
    .registers 5

    const/16 v3, 0x13

    const/16 v2, 0x12

    invoke-direct {p0}, La/b/d/b;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-byte v0, p0, La/b/d/b;->c:B

    if-ne v0, v3, :cond_11

    iput-byte v2, p0, La/b/d/b;->c:B

    :cond_11
    :goto_11
    return-object p0

    :cond_12
    iget-byte v0, p0, La/b/d/b;->c:B

    if-ne v0, v2, :cond_11

    iput-byte v3, p0, La/b/d/b;->c:B

    goto :goto_11
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/c;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/d;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/b/d;->c(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->v(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/b/d/b;->e:I

    return-void
.end method

.method public a(La/b/c;La/b/b/e;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/f;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/g;)V
    .registers 4

    iget v0, p2, La/b/b/g;->b:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 4

    iget v0, p2, La/b/b/h;->b:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/i;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/j;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/k;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/l;)V
    .registers 4

    iget v0, p2, La/b/b/l;->b:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/m;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/n;)V
    .registers 5

    invoke-virtual {p2, p1}, La/b/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->u(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, La/b/d/b;->d:I

    invoke-static {v0}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->v(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/b/d/b;->e:I

    return-void
.end method

.method public a(La/b/c;La/b/b/o;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/p;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/s;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V
    .registers 12

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, La/b/d/a/d;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V

    return-void
.end method

.method public b()B
    .registers 3

    iget-byte v0, p0, La/b/d/b;->c:B

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    const/16 v0, 0x12

    :goto_8
    return v0

    :cond_9
    iget-byte v0, p0, La/b/d/b;->c:B

    goto :goto_8
.end method

.method public b(La/b/c;)I
    .registers 4

    invoke-super {p0, p1}, La/b/d/c;->b(La/b/c;)I

    move-result v0

    iget-byte v1, p0, La/b/d/b;->c:B

    packed-switch v1, :pswitch_data_14

    :goto_9
    :pswitch_9  #0xffffffb3, 0xffffffb5
    return v0

    :pswitch_a  #0xffffffb2, 0xffffffb4, 0xffffffb6, 0xffffffb7, 0xffffffb8, 0xffffffb9, 0xffffffba
    iget v1, p0, La/b/d/b;->a:I

    invoke-interface {p1, v1, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget v1, p0, La/b/d/b;->e:I

    add-int/2addr v0, v1

    goto :goto_9

    nop

    :pswitch_data_14
    .packed-switch -0x4e
        :pswitch_a  #ffffffb2
        :pswitch_9  #ffffffb3
        :pswitch_a  #ffffffb4
        :pswitch_9  #ffffffb5
        :pswitch_a  #ffffffb6
        :pswitch_a  #ffffffb7
        :pswitch_a  #ffffffb8
        :pswitch_a  #ffffffb9
        :pswitch_a  #ffffffba
    .end packed-switch
.end method

.method protected b([BI)V
    .registers 6

    invoke-direct {p0}, La/b/d/b;->g()I

    move-result v0

    invoke-direct {p0}, La/b/d/b;->h()I

    move-result v1

    invoke-static {p1, p2, v0}, La/b/d/b;->a([BII)I

    move-result v2

    iput v2, p0, La/b/d/b;->a:I

    add-int/2addr v0, p2

    invoke-static {p1, v0, v1}, La/b/d/b;->a([BII)I

    move-result v0

    iput v0, p0, La/b/d/b;->b:I

    return-void
.end method

.method protected c([BI)V
    .registers 6

    invoke-direct {p0}, La/b/d/b;->g()I

    move-result v0

    invoke-direct {p0}, La/b/d/b;->h()I

    move-result v1

    invoke-direct {p0}, La/b/d/b;->i()I

    move-result v2

    if-le v2, v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instruction has invalid constant index size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, La/b/d/b;->b(I)Ljava/lang/String;

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
    iget v2, p0, La/b/d/b;->a:I

    invoke-static {p1, p2, v2, v0}, La/b/d/b;->a([BIII)V

    add-int/2addr v0, p2

    iget v2, p0, La/b/d/b;->b:I

    invoke-static {p1, v0, v2, v1}, La/b/d/b;->a([BIII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La/b/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/d/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, La/b/d/b;->h()I

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, ""

    :goto_21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, La/b/d/b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

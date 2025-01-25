.class public La/b/f/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/f/q;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_20

    iput v0, p0, La/b/f/q;->b:I

    :cond_11
    iget v1, p0, La/b/f/q;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/b/f/q;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_52

    :goto_1e
    :pswitch_1e  #0x3d
    if-gtz v0, :cond_11

    :cond_20
    const/16 v0, 0x28

    iget v1, p0, La/b/f/q;->b:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iput v0, p0, La/b/f/q;->c:I

    iget v0, p0, La/b/f/q;->c:I

    if-ltz v0, :cond_49

    const/16 v0, 0x29

    iget v1, p0, La/b/f/q;->c:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :goto_36
    iput v0, p0, La/b/f/q;->d:I

    iget v0, p0, La/b/f/q;->c:I

    if-ltz v0, :cond_4e

    iget v0, p0, La/b/f/q;->c:I

    add-int/lit8 v0, v0, 0x1

    :goto_40
    iput v0, p0, La/b/f/q;->e:I

    return-void

    :pswitch_43  #0x3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :pswitch_46  #0x3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_36

    :cond_4e
    iget v0, p0, La/b/f/q;->b:I

    goto :goto_40

    nop

    :pswitch_data_52
    .packed-switch 0x3c
        :pswitch_43  #0000003c
        :pswitch_1e  #0000003d
        :pswitch_46  #0000003e
    .end packed-switch
.end method

.method private g()V
    .registers 3

    :goto_0
    iget-object v0, p0, La/b/f/q;->a:Ljava/lang/String;

    iget v1, p0, La/b/f/q;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_13

    iget v0, p0, La/b/f/q;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/b/f/q;->e:I

    goto :goto_0

    :cond_13
    return-void
.end method

.method private h()V
    .registers 4

    :goto_0
    iget-object v0, p0, La/b/f/q;->a:Ljava/lang/String;

    iget v1, p0, La/b/f/q;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/b/f/q;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_16

    goto :goto_0

    :pswitch_10  #0x3b
    return-void

    :pswitch_11  #0x3c
    invoke-direct {p0}, La/b/f/q;->i()V

    goto :goto_0

    nop

    :pswitch_data_16
    .packed-switch 0x3b
        :pswitch_10  #0000003b
        :pswitch_11  #0000003c
    .end packed-switch
.end method

.method private i()V
    .registers 5

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, La/b/f/q;->a:Ljava/lang/String;

    iget v2, p0, La/b/f/q;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, La/b/f/q;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_1a

    :goto_10
    :pswitch_10  #0x3d
    if-gtz v0, :cond_1

    return-void

    :pswitch_13  #0x3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :pswitch_16  #0x3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    nop

    :pswitch_data_1a
    .packed-switch 0x3c
        :pswitch_13  #0000003c
        :pswitch_10  #0000003d
        :pswitch_16  #0000003e
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget v0, p0, La/b/f/q;->b:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, La/b/f/q;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, La/b/f/q;->b:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget v0, p0, La/b/f/q;->c:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()Z
    .registers 3

    iget v0, p0, La/b/f/q;->e:I

    iget v1, p0, La/b/f/q;->d:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public e()Ljava/lang/String;
    .registers 5

    iget v0, p0, La/b/f/q;->e:I

    invoke-direct {p0}, La/b/f/q;->g()V

    iget-object v1, p0, La/b/f/q;->a:Ljava/lang/String;

    iget v2, p0, La/b/f/q;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, La/b/f/q;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_26

    :goto_14
    iget-object v1, p0, La/b/f/q;->a:Ljava/lang/String;

    iget v2, p0, La/b/f/q;->e:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1d
    invoke-direct {p0}, La/b/f/q;->h()V

    goto :goto_14

    :sswitch_21
    invoke-direct {p0}, La/b/f/q;->i()V

    goto :goto_14

    nop

    :sswitch_data_26
    .sparse-switch
        0x3c -> :sswitch_21
        0x4c -> :sswitch_1d
        0x54 -> :sswitch_1d
    .end sparse-switch
.end method

.method public f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, La/b/f/q;->a:Ljava/lang/String;

    iget v1, p0, La/b/f/q;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

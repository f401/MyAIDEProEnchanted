.class public La/b/c/at;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/d/a/d;


# instance fields
.field private a:I

.field private b:La/b/c/v;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, La/b/c/at;->b:La/b/c/v;

    if-nez v0, :cond_12

    new-instance v0, La/b/c/v;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, La/b/c/v;-><init>(ZZ)V

    iput-object v0, p0, La/b/c/at;->b:La/b/c/v;

    iget v1, p0, La/b/c/at;->a:I

    invoke-virtual {v0, v1}, La/b/c/v;->a(I)V

    :cond_12
    return-void
.end method

.method private a(ILa/b/d/c;)V
    .registers 4

    invoke-direct {p0}, La/b/c/at;->a()V

    iget-object v0, p0, La/b/c/at;->b:La/b/c/v;

    invoke-virtual {v0, p1, p2}, La/b/c/v;->a(ILa/b/d/c;)V

    return-void
.end method

.method private b(ILa/b/d/c;)V
    .registers 4

    invoke-direct {p0}, La/b/c/at;->a()V

    iget-object v0, p0, La/b/c/at;->b:La/b/c/v;

    invoke-virtual {v0, p1, p2}, La/b/c/v;->b(ILa/b/d/c;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iput p1, p0, La/b/c/at;->a:I

    iget-object v0, p0, La/b/c/at;->b:La/b/c/v;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, La/b/c/v;->a(I)V

    :cond_9
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 5

    iget-object v0, p0, La/b/c/at;->b:La/b/c/v;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, La/b/c/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    const/4 p1, 0x0

    iput-object p1, p0, La/b/c/at;->b:La/b/c/v;

    :cond_a
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 8

    :try_start_0
    invoke-virtual {p5, p3, p4}, La/b/d/a;->a(La/b/a/d;I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_44

    :catch_4
    move-exception p1

    new-instance p1, La/b/d/a;

    const/16 p2, -0x38

    iget v0, p5, La/b/d/a;->a:I

    invoke-direct {p1, p2, v0}, La/b/d/a;-><init>(BI)V

    iget-byte p2, p5, La/b/d/a;->c:B

    const/16 v0, 0x8

    sparse-switch p2, :sswitch_data_46

    new-instance p1, La/b/d/a;

    iget-byte p2, p5, La/b/d/a;->c:B

    iget v0, p5, La/b/d/a;->a:I

    invoke-direct {p1, p2, v0}, La/b/d/a;-><init>(BI)V

    goto :goto_3b

    :sswitch_1f
    new-instance p2, La/b/d/a;

    iget-byte v1, p5, La/b/d/a;->c:B

    xor-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-direct {p2, v1, v0}, La/b/d/a;-><init>(BI)V

    goto :goto_38

    :sswitch_2a
    new-instance p2, La/b/d/a;

    iget-byte v1, p5, La/b/d/a;->c:B

    add-int/lit8 v1, v1, 0x1

    xor-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    invoke-direct {p2, v1, v0}, La/b/d/a;-><init>(BI)V

    :goto_38
    invoke-direct {p0, p4, p2}, La/b/c/at;->a(ILa/b/d/c;)V

    :goto_3b
    invoke-direct {p0, p4, p1}, La/b/c/at;->b(ILa/b/d/c;)V

    const/4 p1, 0x0

    iput p1, p5, La/b/d/a;->a:I

    invoke-virtual {p5, p3, p4}, La/b/d/a;->a(La/b/a/d;I)V

    :goto_44
    return-void

    nop

    :sswitch_data_46
    .sparse-switch
        -0x67 -> :sswitch_2a
        -0x66 -> :sswitch_2a
        -0x65 -> :sswitch_2a
        -0x64 -> :sswitch_2a
        -0x63 -> :sswitch_2a
        -0x62 -> :sswitch_2a
        -0x61 -> :sswitch_2a
        -0x60 -> :sswitch_2a
        -0x5f -> :sswitch_2a
        -0x5e -> :sswitch_2a
        -0x5d -> :sswitch_2a
        -0x5c -> :sswitch_2a
        -0x5b -> :sswitch_2a
        -0x5a -> :sswitch_2a
        -0x3a -> :sswitch_1f
        -0x39 -> :sswitch_1f
    .end sparse-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 8

    :try_start_0
    invoke-virtual {p5, p3, p4}, La/b/d/b;->a(La/b/a/d;I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1b

    :catch_4
    move-exception p1

    new-instance p1, La/b/d/b;

    iget-byte p2, p5, La/b/d/b;->c:B

    iget v0, p5, La/b/d/b;->a:I

    iget v1, p5, La/b/d/b;->b:I

    invoke-direct {p1, p2, v0, v1}, La/b/d/b;-><init>(BII)V

    invoke-direct {p0, p4, p1}, La/b/c/at;->b(ILa/b/d/c;)V

    const/4 p1, 0x0

    iput p1, p5, La/b/d/b;->a:I

    iput p1, p5, La/b/d/b;->b:I

    invoke-virtual {p5, p3, p4}, La/b/d/b;->a(La/b/a/d;I)V

    :goto_1b
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 6

    invoke-virtual {p5, p3, p4}, La/b/d/h;->a(La/b/a/d;I)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/i;)V
    .registers 6

    invoke-virtual {p5, p3, p4}, La/b/d/i;->a(La/b/a/d;I)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 8

    :try_start_0
    invoke-virtual {p5, p3, p4}, La/b/d/k;->a(La/b/a/d;I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1b

    :catch_4
    move-exception p1

    new-instance p1, La/b/d/k;

    iget-byte p2, p5, La/b/d/k;->c:B

    iget v0, p5, La/b/d/k;->b:I

    iget v1, p5, La/b/d/k;->d:I

    invoke-direct {p1, p2, v0, v1}, La/b/d/k;-><init>(BII)V

    invoke-direct {p0, p4, p1}, La/b/c/at;->b(ILa/b/d/c;)V

    const/4 p1, 0x0

    iput p1, p5, La/b/d/k;->b:I

    iput p1, p5, La/b/d/k;->d:I

    invoke-virtual {p5, p3, p4}, La/b/d/k;->a(La/b/a/d;I)V

    :goto_1b
    return-void
.end method

.method public b(I)V
    .registers 3

    iput p1, p0, La/b/c/at;->a:I

    iget-object v0, p0, La/b/c/at;->b:La/b/c/v;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, La/b/c/v;->b(I)V

    :cond_9
    return-void
.end method

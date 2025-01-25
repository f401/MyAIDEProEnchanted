.class public La/g/b/ap;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/aq;


# static fields
.field public static final a:Z


# instance fields
.field private final b:Z

.field private final c:Z

.field private d:Z

.field private e:La/b/c;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "optimize.conservatively"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, La/g/b/ap;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-boolean p1, p0, La/g/b/ap;->b:Z

    iput-boolean p2, p0, La/g/b/ap;->c:Z

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/d;)V
    .registers 4

    iput-object p1, p0, La/g/b/ap;->e:La/b/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    invoke-virtual {p2, p0}, La/b/b/d;->a(La/b/g/aq;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    return-void
.end method

.method public a(La/b/c;La/b/b/q;)V
    .registers 4

    iput-object p1, p0, La/g/b/ap;->e:La/b/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    invoke-virtual {p2, p0}, La/b/b/q;->a(La/b/g/aq;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 7

    iget-byte v0, p5, La/b/d/a;->c:B

    sparse-switch v0, :sswitch_data_c

    :goto_5
    return-void

    :sswitch_6
    iget-boolean v0, p0, La/g/b/ap;->b:Z

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    goto :goto_5

    nop

    :sswitch_data_c
    .sparse-switch
        -0x58 -> :sswitch_6
        -0x37 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-byte v0, p5, La/b/d/b;->c:B

    packed-switch v0, :pswitch_data_4e

    :goto_7
    :pswitch_7  #0xffffffbb, 0xffffffbc, 0xffffffbe, 0xffffffbf, 0xffffffc1, 0xffffffc2, 0xffffffc3, 0xffffffc4
    return-void

    :pswitch_8  #0xffffffb2
    iput-boolean v2, p0, La/g/b/ap;->d:Z

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_7

    :pswitch_10  #0xffffffb3
    iput-boolean v1, p0, La/g/b/ap;->d:Z

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_7

    :pswitch_18  #0xffffffb4
    sget-boolean v0, La/g/b/ap;->a:Z

    if-eqz v0, :cond_1f

    iput-boolean v1, p0, La/g/b/ap;->f:Z

    goto :goto_7

    :cond_1f
    iput-boolean v2, p0, La/g/b/ap;->d:Z

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_7

    :pswitch_27  #0xffffffb5
    sget-boolean v0, La/g/b/ap;->a:Z

    if-eqz v0, :cond_2e

    iput-boolean v1, p0, La/g/b/ap;->f:Z

    goto :goto_7

    :cond_2e
    iput-boolean v1, p0, La/g/b/ap;->d:Z

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_7

    :pswitch_36  #0xffffffb7, 0xffffffb8
    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_7

    :pswitch_3c  #0xffffffb6, 0xffffffb9, 0xffffffba
    sget-boolean v0, La/g/b/ap;->a:Z

    if-eqz v0, :cond_43

    iput-boolean v1, p0, La/g/b/ap;->f:Z

    goto :goto_7

    :cond_43
    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_7

    :pswitch_49  #0xffffffbd, 0xffffffc0, 0xffffffc5
    sget-boolean v0, La/g/b/ap;->a:Z

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    goto :goto_7

    :pswitch_data_4e
    .packed-switch -0x4e
        :pswitch_8  #ffffffb2
        :pswitch_10  #ffffffb3
        :pswitch_18  #ffffffb4
        :pswitch_27  #ffffffb5
        :pswitch_3c  #ffffffb6
        :pswitch_36  #ffffffb7
        :pswitch_36  #ffffffb8
        :pswitch_3c  #ffffffb9
        :pswitch_3c  #ffffffba
        :pswitch_7  #ffffffbb
        :pswitch_7  #ffffffbc
        :pswitch_49  #ffffffbd
        :pswitch_7  #ffffffbe
        :pswitch_7  #ffffffbf
        :pswitch_49  #ffffffc0
        :pswitch_7  #ffffffc1
        :pswitch_7  #ffffffc2
        :pswitch_7  #ffffffc3
        :pswitch_7  #ffffffc4
        :pswitch_49  #ffffffc5
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 7

    iget-byte v0, p5, La/b/d/h;->c:B

    sparse-switch v0, :sswitch_data_1a

    :goto_5
    return-void

    :sswitch_6
    sget-boolean v0, La/g/b/ap;->a:Z

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    goto :goto_5

    :sswitch_b
    iget-boolean v0, p0, La/g/b/ap;->c:Z

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    goto :goto_5

    :sswitch_10
    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    goto :goto_5

    :sswitch_14
    iget-boolean v0, p0, La/g/b/ap;->b:Z

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    goto :goto_5

    nop

    :sswitch_data_1a
    .sparse-switch
        -0x54 -> :sswitch_14
        -0x53 -> :sswitch_14
        -0x52 -> :sswitch_14
        -0x51 -> :sswitch_14
        -0x50 -> :sswitch_14
        -0x4f -> :sswitch_14
        -0x44 -> :sswitch_6
        -0x42 -> :sswitch_6
        -0x41 -> :sswitch_10
        -0x3e -> :sswitch_10
        -0x3d -> :sswitch_10
        0x2e -> :sswitch_6
        0x2f -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x4f -> :sswitch_b
        0x50 -> :sswitch_b
        0x51 -> :sswitch_b
        0x52 -> :sswitch_b
        0x53 -> :sswitch_b
        0x54 -> :sswitch_b
        0x55 -> :sswitch_b
        0x56 -> :sswitch_b
        0x6c -> :sswitch_6
        0x6d -> :sswitch_6
        0x6e -> :sswitch_6
        0x6f -> :sswitch_6
        0x70 -> :sswitch_6
        0x71 -> :sswitch_6
        0x72 -> :sswitch_6
        0x73 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 7

    iget-byte v0, p5, La/b/d/k;->c:B

    packed-switch v0, :pswitch_data_c

    :goto_5
    return-void

    :pswitch_6  #0xffffffa9
    iget-boolean v0, p0, La/g/b/ap;->b:Z

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    goto :goto_5

    nop

    :pswitch_data_c
    .packed-switch -0x57
        :pswitch_6  #ffffffa9
    .end packed-switch
.end method

.method public a(La/b/e;La/b/f;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 4

    invoke-static {p2}, La/g/b/w;->a(La/b/j;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, La/g/b/ap;->f:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(La/b/k;La/b/l;)V
    .registers 4

    iget-boolean v0, p0, La/g/b/ap;->d:Z

    if-eqz v0, :cond_a

    invoke-static {p2}, La/g/b/aj;->a(La/b/d;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_a
    invoke-virtual {p2}, La/b/l;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1a

    iget-object v0, p0, La/g/b/ap;->e:La/b/c;

    invoke-static {v0, p1, p2}, La/g/b/am;->a(La/b/c;La/b/c;La/b/i;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, La/g/b/ap;->f:Z

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 4

    invoke-static {p2}, La/g/b/aq;->a(La/b/j;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, La/g/b/ap;->e:La/b/c;

    invoke-static {v0, p1, p2}, La/g/b/am;->a(La/b/c;La/b/c;La/b/i;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_e
    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, La/g/b/ap;->f:Z

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z
    .registers 12

    const/4 v0, 0x0

    iput-boolean v0, p0, La/g/b/ap;->f:Z

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    iget-boolean v0, p0, La/g/b/ap;->f:Z

    return v0
.end method

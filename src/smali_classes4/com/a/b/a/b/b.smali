.class public final Lcom/a/b/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/a/b/n;


# instance fields
.field private final a:Lcom/a/b/a/b/o;

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:[Lcom/a/b/g/n;

.field private final f:[Lcom/a/b/a/b/h;

.field private g:I


# direct methods
.method private constructor <init>(Lcom/a/b/a/b/o;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/a/b/a/b/b;->a:Lcom/a/b/a/b/o;

    invoke-virtual {p1}, Lcom/a/b/a/b/o;->m()Lcom/a/b/a/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/a/b/k;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/a/b/g/d;->a(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/a/b/a/b/b;->b:[I

    invoke-static {v0}, Lcom/a/b/g/d;->a(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/a/b/a/b/b;->c:[I

    invoke-static {v0}, Lcom/a/b/g/d;->a(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/a/b/a/b/b;->d:[I

    new-array v1, v0, [Lcom/a/b/g/n;

    iput-object v1, p0, Lcom/a/b/a/b/b;->e:[Lcom/a/b/g/n;

    new-array v0, v0, [Lcom/a/b/a/b/h;

    iput-object v0, p0, Lcom/a/b/a/b/b;->f:[Lcom/a/b/a/b/h;

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/a/b/b;->g:I

    return-void
.end method

.method public static a(Lcom/a/b/a/b/o;)Lcom/a/b/a/b/g;
    .registers 2

    new-instance v0, Lcom/a/b/a/b/b;

    invoke-direct {v0, p0}, Lcom/a/b/a/b/b;-><init>(Lcom/a/b/a/b/o;)V

    invoke-direct {v0}, Lcom/a/b/a/b/b;->c()V

    invoke-direct {v0}, Lcom/a/b/a/b/b;->b()Lcom/a/b/a/b/g;

    move-result-object v0

    return-object v0
.end method

.method private a(IIZ)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/a/b/b;->c:[I

    invoke-static {v0, p1}, Lcom/a/b/g/d;->b([II)V

    if-eqz p3, :cond_e

    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/b/a/b/b;->a(IZ)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/a/b/a/b/b;->d:[I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Lcom/a/b/g/d;->b([II)V

    goto :goto_d
.end method

.method private a(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/a/b/b;->c:[I

    invoke-static {v0, p1}, Lcom/a/b/g/d;->a([II)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/a/b/a/b/b;->b:[I

    invoke-static {v0, p1}, Lcom/a/b/g/d;->b([II)V

    :cond_d
    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/a/b/a/b/b;->d:[I

    invoke-static {v0, p1}, Lcom/a/b/g/d;->b([II)V

    :cond_14
    return-void
.end method

.method private b()Lcom/a/b/a/b/g;
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/a/b/a/b/b;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v0}, Lcom/a/b/a/b/o;->m()Lcom/a/b/a/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/a/b/k;->b()I

    move-result v0

    new-array v8, v0, [Lcom/a/b/a/b/f;

    move v1, v6

    move v7, v6

    :goto_f
    iget-object v0, p0, Lcom/a/b/a/b/b;->d:[I

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/a/b/g/d;->d([II)I

    move-result v3

    if-gez v3, :cond_21

    new-instance v0, Lcom/a/b/a/b/g;

    invoke-direct {v0, v7}, Lcom/a/b/a/b/g;-><init>(I)V

    :goto_1e
    if-lt v6, v7, :cond_57

    return-object v0

    :cond_21
    iget-object v0, p0, Lcom/a/b/a/b/b;->c:[I

    invoke-static {v0, v1}, Lcom/a/b/g/d;->a([II)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x0

    add-int/lit8 v2, v3, -0x1

    :goto_2c
    if-ge v2, v1, :cond_45

    const/4 v2, -0x1

    move-object v4, v0

    :goto_30
    if-nez v4, :cond_4e

    invoke-static {v3}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v4

    sget-object v5, Lcom/a/b/a/b/h;->a:Lcom/a/b/a/b/h;

    :cond_38
    :goto_38
    new-instance v0, Lcom/a/b/a/b/f;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/a/b/a/b/f;-><init>(IIILcom/a/b/g/n;Lcom/a/b/a/b/h;)V

    aput-object v0, v8, v7

    add-int/lit8 v0, v7, 0x1

    :goto_42
    move v1, v3

    move v7, v0

    goto :goto_f

    :cond_45
    iget-object v0, p0, Lcom/a/b/a/b/b;->e:[Lcom/a/b/g/n;

    aget-object v0, v0, v2

    if-nez v0, :cond_61

    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    :cond_4e
    iget-object v0, p0, Lcom/a/b/a/b/b;->f:[Lcom/a/b/a/b/h;

    aget-object v5, v0, v2

    if-nez v5, :cond_38

    sget-object v5, Lcom/a/b/a/b/h;->a:Lcom/a/b/a/b/h;

    goto :goto_38

    :cond_57
    aget-object v1, v8, v6

    invoke-virtual {v0, v6, v1}, Lcom/a/b/a/b/g;->a(ILcom/a/b/a/b/f;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_5f
    move v0, v7

    goto :goto_42

    :cond_61
    move-object v4, v0

    goto :goto_30
.end method

.method private b(IIZ)V
    .registers 7

    add-int v0, p1, p2

    if-eqz p3, :cond_8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/a/b/a/b/b;->a(IZ)V

    :cond_8
    iget-object v1, p0, Lcom/a/b/a/b/b;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v1}, Lcom/a/b/a/b/o;->n()Lcom/a/b/a/b/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/a/b/a/b/h;->b(I)Lcom/a/b/a/b/h;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/b;->f:[Lcom/a/b/a/b/h;

    aput-object v1, v2, p1

    iget-object v2, p0, Lcom/a/b/a/b/b;->e:[Lcom/a/b/g/n;

    if-eqz p3, :cond_21

    :goto_1a
    invoke-virtual {v1, v0}, Lcom/a/b/a/b/h;->c(I)Lcom/a/b/g/n;

    move-result-object v0

    aput-object v0, v2, p1

    return-void

    :cond_21
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method private c()V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/a/b/b;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v0}, Lcom/a/b/a/b/o;->m()Lcom/a/b/a/b/k;

    move-result-object v2

    iget-object v0, p0, Lcom/a/b/a/b/b;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v0}, Lcom/a/b/a/b/o;->n()Lcom/a/b/a/b/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/a/b/h;->d_()I

    move-result v4

    iget-object v0, p0, Lcom/a/b/a/b/b;->b:[I

    invoke-static {v0, v1}, Lcom/a/b/g/d;->b([II)V

    iget-object v0, p0, Lcom/a/b/a/b/b;->d:[I

    invoke-static {v0, v1}, Lcom/a/b/g/d;->b([II)V

    :cond_1b
    iget-object v0, p0, Lcom/a/b/a/b/b;->b:[I

    invoke-static {v0}, Lcom/a/b/g/d;->b([I)Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/a/b/a/b/b;->b:[I

    invoke-virtual {v2, v0, p0}, Lcom/a/b/a/b/k;->a([ILcom/a/b/a/b/n;)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_29} :catch_55

    move v0, v1

    :goto_2a
    if-ge v0, v4, :cond_1b

    invoke-virtual {v3, v0}, Lcom/a/b/a/b/h;->a(I)Lcom/a/b/a/b/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/a/b/i;->a()I

    move-result v6

    invoke-virtual {v5}, Lcom/a/b/a/b/i;->b()I

    move-result v7

    iget-object v8, p0, Lcom/a/b/a/b/b;->c:[I

    invoke-static {v8, v6, v7}, Lcom/a/b/g/d;->a([III)Z

    move-result v8

    if-eqz v8, :cond_52

    iget-object v8, p0, Lcom/a/b/a/b/b;->d:[I

    invoke-static {v8, v6}, Lcom/a/b/g/d;->b([II)V

    iget-object v6, p0, Lcom/a/b/a/b/b;->d:[I

    invoke-static {v6, v7}, Lcom/a/b/g/d;->b([II)V

    invoke-virtual {v5}, Lcom/a/b/a/b/i;->c()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/a/b/a/b/b;->a(IZ)V

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :catch_55
    move-exception v0

    new-instance v1, Lcom/a/b/a/b/al;

    const-string v2, "flow of control falls off end of method"

    invoke-direct {v1, v2, v0}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/b;->g:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/a/b/a/b/b;->g:I

    return-void
.end method

.method public a(III)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/a/b/a/b/b;->a(IIZ)V

    return-void
.end method

.method public a(IIII)V
    .registers 8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_2a

    :goto_4
    add-int v0, p2, p3

    invoke-direct {p0, p2, p3, v2}, Lcom/a/b/a/b/b;->a(IIZ)V

    invoke-direct {p0, v0, v2}, Lcom/a/b/a/b/b;->a(IZ)V

    iget-object v1, p0, Lcom/a/b/a/b/b;->e:[Lcom/a/b/g/n;

    invoke-static {v0, p4}, Lcom/a/b/g/n;->a(II)Lcom/a/b/g/n;

    move-result-object v0

    aput-object v0, v1, p2

    :goto_14
    invoke-direct {p0, p4, v2}, Lcom/a/b/a/b/b;->a(IZ)V

    return-void

    :pswitch_18  #0xa7
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/a/b/a/b/b;->a(IIZ)V

    iget-object v0, p0, Lcom/a/b/a/b/b;->e:[Lcom/a/b/g/n;

    invoke-static {p4}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v1

    aput-object v1, v0, p2

    goto :goto_14

    :pswitch_25  #0xa8
    invoke-direct {p0, p2, v2}, Lcom/a/b/a/b/b;->a(IZ)V

    goto :goto_4

    nop

    :pswitch_data_2a
    .packed-switch 0xa7
        :pswitch_18  #000000a7
        :pswitch_25  #000000a8
    .end packed-switch
.end method

.method public a(IIIILcom/a/b/e/d/c;I)V
    .registers 9

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_f

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/a/b/a/b/b;->a(IIZ)V

    iget-object v0, p0, Lcom/a/b/a/b/b;->e:[Lcom/a/b/g/n;

    sget-object v1, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    aput-object v1, v0, p2

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/a/b/a/b/b;->a(IIZ)V

    goto :goto_e
.end method

.method public a(IIILcom/a/b/a/b/ao;I)V
    .registers 10

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/a/b/a/b/b;->a(IIZ)V

    invoke-virtual {p4}, Lcom/a/b/a/b/ao;->b()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/a/b/a/b/b;->a(IZ)V

    invoke-virtual {p4}, Lcom/a/b/a/b/ao;->a()I

    move-result v1

    :goto_10
    if-lt v0, v1, :cond_1b

    iget-object v0, p0, Lcom/a/b/a/b/b;->e:[Lcom/a/b/g/n;

    invoke-virtual {p4}, Lcom/a/b/a/b/ao;->d()Lcom/a/b/g/n;

    move-result-object v1

    aput-object v1, v0, p2

    return-void

    :cond_1b
    invoke-virtual {p4, v0}, Lcom/a/b/a/b/ao;->b(I)I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/a/b/a/b/b;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public a(IIILcom/a/b/e/c/a;I)V
    .registers 8

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v1}, Lcom/a/b/a/b/b;->a(IIZ)V

    instance-of v0, p4, Lcom/a/b/e/c/x;

    if-nez v0, :cond_1c

    instance-of v0, p4, Lcom/a/b/e/c/ae;

    if-nez v0, :cond_1c

    instance-of v0, p4, Lcom/a/b/e/c/ad;

    if-nez v0, :cond_1c

    instance-of v0, p4, Lcom/a/b/e/c/r;

    if-nez v0, :cond_1c

    instance-of v0, p4, Lcom/a/b/e/c/y;

    if-nez v0, :cond_1c

    instance-of v0, p4, Lcom/a/b/e/c/ab;

    if-eqz v0, :cond_1f

    :cond_1c
    invoke-direct {p0, p2, p3, v1}, Lcom/a/b/a/b/b;->b(IIZ)V

    :cond_1f
    return-void
.end method

.method public a(IIILcom/a/b/e/d/c;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_30

    invoke-direct {p0, p2, p3, v1}, Lcom/a/b/a/b/b;->a(IIZ)V

    :cond_8
    :goto_8
    return-void

    :sswitch_9
    invoke-direct {p0, p2, p3, v0}, Lcom/a/b/a/b/b;->a(IIZ)V

    iget-object v0, p0, Lcom/a/b/a/b/b;->e:[Lcom/a/b/g/n;

    sget-object v1, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    aput-object v1, v0, p2

    goto :goto_8

    :sswitch_13
    invoke-direct {p0, p2, p3, v0}, Lcom/a/b/a/b/b;->a(IIZ)V

    invoke-direct {p0, p2, p3, v0}, Lcom/a/b/a/b/b;->b(IIZ)V

    goto :goto_8

    :sswitch_1a
    invoke-direct {p0, p2, p3, v1}, Lcom/a/b/a/b/b;->a(IIZ)V

    invoke-direct {p0, p2, p3, v1}, Lcom/a/b/a/b/b;->b(IIZ)V

    goto :goto_8

    :sswitch_21
    invoke-direct {p0, p2, p3, v1}, Lcom/a/b/a/b/b;->a(IIZ)V

    sget-object v0, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    if-eq p4, v0, :cond_2c

    sget-object v0, Lcom/a/b/e/d/c;->g:Lcom/a/b/e/d/c;

    if-ne p4, v0, :cond_8

    :cond_2c
    invoke-direct {p0, p2, p3, v1}, Lcom/a/b/a/b/b;->b(IIZ)V

    goto :goto_8

    :sswitch_data_30
    .sparse-switch
        0x2e -> :sswitch_1a
        0x2f -> :sswitch_1a
        0x30 -> :sswitch_1a
        0x31 -> :sswitch_1a
        0x32 -> :sswitch_1a
        0x33 -> :sswitch_1a
        0x34 -> :sswitch_1a
        0x35 -> :sswitch_1a
        0x4f -> :sswitch_1a
        0x50 -> :sswitch_1a
        0x51 -> :sswitch_1a
        0x52 -> :sswitch_1a
        0x53 -> :sswitch_1a
        0x54 -> :sswitch_1a
        0x55 -> :sswitch_1a
        0x56 -> :sswitch_1a
        0x6c -> :sswitch_21
        0x70 -> :sswitch_21
        0xac -> :sswitch_9
        0xb1 -> :sswitch_9
        0xbe -> :sswitch_1a
        0xbf -> :sswitch_13
        0xc2 -> :sswitch_1a
        0xc3 -> :sswitch_1a
    .end sparse-switch
.end method

.method public a(IILcom/a/b/e/c/ae;Ljava/util/ArrayList;)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/a/b/a/b/b;->a(IIZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/a/b/a/b/b;->b(IIZ)V

    return-void
.end method

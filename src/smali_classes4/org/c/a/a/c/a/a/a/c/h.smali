.class public Lorg/c/a/a/c/a/a/a/c/h;
.super Ljava/lang/Object;


# static fields
.field static final c:Z


# instance fields
.field protected a:[Lorg/c/a/a/c/a/a/a/c/a;

.field protected b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/a/a/a/c/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/c/a/a/c/a/a/a/c/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Lorg/c/a/a/c/a/a/a/c/a;
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    if-ge p1, v0, :cond_27

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, p1

    if-eqz v0, :cond_27

    :goto_b
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    if-nez v1, :cond_12

    :goto_11
    return-object v0

    :cond_12
    sget-boolean v1, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    if-ne v0, v1, :cond_22

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_22
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    goto :goto_b

    :cond_27
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(II)Lorg/c/a/a/c/a/a/a/c/a;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, p1

    move-object v2, v1

    :goto_b
    if-nez v0, :cond_f

    :cond_d
    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    iget v3, v0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    if-gt v3, p2, :cond_2f

    if-nez v2, :cond_27

    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v3

    aput-object v3, v2, p1

    :goto_1d
    iget v2, p0, Lorg/c/a/a/c/a/a/a/c/h;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/c/a/a/c/a/a/a/c/h;->b:I

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    goto :goto_e

    :cond_27
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    goto :goto_1d

    :cond_2f
    sget-boolean v2, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    if-nez v2, :cond_3f

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    if-ne v0, v2, :cond_3f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3f
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v3

    move-object v2, v0

    move-object v0, v3

    goto :goto_b
.end method

.method public a(IILorg/c/a/a/b/d/e/g;)V
    .registers 9

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v1, v1, p1

    :goto_a
    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget v2, v1, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    if-ne v2, p2, :cond_38

    new-instance v2, Lorg/c/a/a/c/a/a/a/c/e;

    iget v3, v1, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    iget-object v4, v1, Lorg/c/a/a/c/a/a/a/c/a;->g:Ljava/lang/String;

    invoke-direct {v2, p1, v3, p3, v4}, Lorg/c/a/a/c/a/a/a/c/e;-><init>(IILorg/c/a/a/b/d/e/g;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/c/a/a/c/a/a/a/c/e;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    if-nez v0, :cond_28

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aput-object v2, v0, p1

    goto :goto_c

    :cond_28
    sget-boolean v1, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    if-nez v1, :cond_34

    if-ne v0, v2, :cond_34

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_34
    invoke-virtual {v0, v2}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    goto :goto_c

    :cond_38
    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    if-nez v0, :cond_48

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    if-ne v1, v0, :cond_48

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_48
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    goto :goto_a
.end method

.method public a(IILorg/c/a/a/b/d/e/i;)V
    .registers 6

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, p1

    :goto_9
    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v1, v0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    if-ne v1, p2, :cond_17

    check-cast v0, Lorg/c/a/a/c/a/a/a/c/j;

    iput-object p3, v0, Lorg/c/a/a/c/a/a/a/c/j;->m:Lorg/c/a/a/b/d/e/i;

    iput-object p3, v0, Lorg/c/a/a/c/a/a/a/c/j;->l:Lorg/c/a/a/b/d/e/i;

    goto :goto_b

    :cond_17
    sget-boolean v1, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    if-ne v0, v1, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_27
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    goto :goto_9
.end method

.method public a(ILorg/c/a/a/c/a/a/a/c/a;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    if-lt p1, v0, :cond_1f

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [Lorg/c/a/a/c/a/a/a/c/a;

    iput-object v1, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aput-object p2, v0, p1

    :goto_18
    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->b:I

    return-void

    :cond_1f
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, p1

    if-nez v0, :cond_2a

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aput-object p2, v0, p1

    goto :goto_18

    :cond_2a
    iget v1, v0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    iget v2, p2, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    if-ge v1, v2, :cond_44

    sget-boolean v1, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    if-nez v1, :cond_3c

    if-ne p2, v0, :cond_3c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3c
    invoke-virtual {p2, v0}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aput-object p2, v0, p1

    goto :goto_18

    :cond_44
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    :goto_48
    if-eqz v1, :cond_50

    iget v2, v1, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    iget v3, p2, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    if-gt v2, v3, :cond_5c

    :cond_50
    sget-boolean v2, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    if-nez v2, :cond_63

    if-ne v0, p2, :cond_63

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5c
    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    goto :goto_48

    :cond_63
    invoke-virtual {v0, p2}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    if-nez v0, :cond_72

    if-ne p2, v1, :cond_72

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_72
    invoke-virtual {p2, v1}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    goto :goto_18
.end method

.method public a(Lorg/c/a/a/c/a/a/a/c/b;)[Lorg/c/a/a/c/a/a/a/c/a;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    new-array v5, v0, [Lorg/c/a/a/c/a/a/a/c/a;

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_c
    if-gez v4, :cond_f

    return-object v5

    :cond_f
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v2, v0, v4

    if-eqz v2, :cond_38

    move-object v0, v1

    :goto_16
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v3

    if-nez v3, :cond_3c

    iget v3, v2, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    if-nez v3, :cond_38

    if-nez v0, :cond_53

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v3

    aput-object v3, v0, v4

    :goto_2a
    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->b:I

    invoke-virtual {v2, v1}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    invoke-virtual {p1, v2}, Lorg/c/a/a/c/a/a/a/c/b;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    aput-object v2, v5, v4

    :cond_38
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_c

    :cond_3c
    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    if-nez v0, :cond_4c

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    if-ne v2, v0, :cond_4c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4c
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v3

    move-object v0, v2

    move-object v2, v3

    goto :goto_16

    :cond_53
    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/c/a/a/c/a/a/a/c/a;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    goto :goto_2a
.end method

.method public b(II)Lorg/c/a/a/c/a/a/a/c/a;
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/h;->a:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, p1

    :goto_9
    if-nez v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :cond_c
    return-object v0

    :cond_d
    iget v1, v0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    if-le v1, p2, :cond_c

    sget-boolean v1, Lorg/c/a/a/c/a/a/a/c/h;->c:Z

    if-nez v1, :cond_21

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    if-ne v0, v1, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_21
    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/a;->b()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    goto :goto_9
.end method

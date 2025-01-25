.class public La/b/c/ah;
.super La/b/f/w;

# interfaces
.implements La/b/g/s;


# instance fields
.field private a:[I

.field private b:[La/b/c/ac;

.field private c:[La/b/b/b;

.field private final d:La/b/c/af;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, La/b/c/ah;->a:[I

    new-array v1, v0, [La/b/c/ac;

    iput-object v1, p0, La/b/c/ah;->b:[La/b/c/ac;

    new-array v0, v0, [La/b/b/b;

    iput-object v0, p0, La/b/c/ah;->c:[La/b/b/b;

    new-instance v0, La/b/c/af;

    invoke-direct {v0}, La/b/c/af;-><init>()V

    iput-object v0, p0, La/b/c/ah;->d:La/b/c/af;

    return-void
.end method


# virtual methods
.method public a(La/b/k;)V
    .registers 12

    iget v0, p1, La/b/k;->b:I

    iget-object v1, p0, La/b/c/ah;->a:[I

    array-length v1, v1

    if-ge v1, v0, :cond_13

    new-array v1, v0, [I

    iput-object v1, p0, La/b/c/ah;->a:[I

    new-array v1, v0, [La/b/c/ac;

    iput-object v1, p0, La/b/c/ah;->b:[La/b/c/ac;

    new-array v1, v0, [La/b/b/b;

    iput-object v1, p0, La/b/c/ah;->c:[La/b/b/b;

    :cond_13
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_17
    if-ge v3, v0, :cond_2e

    iget-object v5, p1, La/b/k;->c:[La/b/b/b;

    aget-object v5, v5, v3

    if-eqz v5, :cond_2b

    iget-object v6, p0, La/b/c/ah;->b:[La/b/c/ac;

    add-int/lit8 v7, v4, 0x1

    new-instance v8, La/b/c/ac;

    invoke-direct {v8, p1, v3, v5}, La/b/c/ac;-><init>(La/b/c;ILa/b/b/b;)V

    aput-object v8, v6, v4

    move v4, v7

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2e
    iget-object v3, p0, La/b/c/ah;->b:[La/b/c/ac;

    invoke-static {v3, v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    const/4 v3, 0x0

    move-object v7, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_37
    if-ge v6, v4, :cond_6b

    iget-object v8, p0, La/b/c/ah;->b:[La/b/c/ac;

    aget-object v8, v8, v6

    invoke-virtual {v8, v7}, La/b/c/ac;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    invoke-virtual {v8}, La/b/c/ac;->b()La/b/b/b;

    move-result-object v5

    iget-object v7, p0, La/b/c/ah;->c:[La/b/b/b;

    add-int/lit8 v9, v2, 0x1

    aput-object v5, v7, v2

    invoke-virtual {v5}, La/b/b/b;->a()I

    move-result v5

    const/4 v7, 0x5

    if-eq v5, v7, :cond_57

    const/4 v7, 0x6

    if-ne v5, v7, :cond_5d

    :cond_57
    iget-object v5, p0, La/b/c/ah;->c:[La/b/b/b;

    aput-object v3, v5, v9

    add-int/lit8 v9, v9, 0x1

    :cond_5d
    move v5, v2

    move-object v7, v8

    move v2, v9

    :cond_60
    iget-object v9, p0, La/b/c/ah;->a:[I

    invoke-virtual {v8}, La/b/c/ac;->a()I

    move-result v8

    aput v5, v9, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_6b
    iget-object v4, p0, La/b/c/ah;->c:[La/b/b/b;

    iget-object v5, p1, La/b/k;->c:[La/b/b/b;

    invoke-static {v4, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, La/b/k;->c:[La/b/b/b;

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v2, p1, La/b/k;->b:I

    iget-object v0, p0, La/b/c/ah;->d:La/b/c/af;

    iget-object v1, p0, La/b/c/ah;->a:[I

    invoke-virtual {v0, v1}, La/b/c/af;->a([I)V

    iget-object v0, p0, La/b/c/ah;->d:La/b/c/af;

    invoke-virtual {v0, p1}, La/b/c/af;->a(La/b/k;)V

    return-void
.end method

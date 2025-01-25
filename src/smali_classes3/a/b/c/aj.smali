.class public La/b/c/aj;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/k;

.field private final b:La/b/a/a/a;

.field private final c:La/b/a/a/e;

.field private final d:Z


# direct methods
.method public constructor <init>(La/b/k;La/b/a/a/a;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/aj;->a:La/b/k;

    iput-object p2, p0, La/b/c/aj;->b:La/b/a/a/a;

    const/4 p1, 0x0

    iput-object p1, p0, La/b/c/aj;->c:La/b/a/a/e;

    iput-boolean p3, p0, La/b/c/aj;->d:Z

    return-void
.end method

.method public constructor <init>(La/b/k;La/b/a/a/e;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/aj;->a:La/b/k;

    const/4 p1, 0x0

    iput-object p1, p0, La/b/c/aj;->b:La/b/a/a/a;

    iput-object p2, p0, La/b/c/aj;->c:La/b/a/a/e;

    iput-boolean p3, p0, La/b/c/aj;->d:Z

    return-void
.end method

.method private a(I[La/b/a/a/h;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_15

    aget-object v1, p2, v0

    iget-object v2, p0, La/b/c/aj;->a:La/b/k;

    invoke-virtual {v1, v2}, La/b/a/a/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_16

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 v0, -0x1

    :goto_16
    return v0
.end method

.method private a(I[La/b/a/a/h;La/b/a/a/h;)Z
    .registers 5

    iget-object v0, p0, La/b/c/aj;->a:La/b/k;

    invoke-virtual {p3, v0}, La/b/a/a/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, La/b/c/aj;->a(I[La/b/a/a/h;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_11

    :cond_e
    aput-object p3, p2, p1

    const/4 p1, 0x1

    :goto_11
    return p1
.end method

.method private b(I[La/b/a/a/h;La/b/a/a/h;)[La/b/a/a/h;
    .registers 6

    array-length v0, p2

    if-gt v0, p1, :cond_c

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [La/b/a/a/h;

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    :cond_c
    aput-object p3, p2, p1

    return-object p2
.end method


# virtual methods
.method public a(La/b/a/a/h;)V
    .registers 5

    iget-object v0, p0, La/b/c/aj;->b:La/b/a/a/a;

    if-eqz v0, :cond_2b

    iget-boolean v1, p0, La/b/c/aj;->d:Z

    if-eqz v1, :cond_14

    iget v0, v0, La/b/a/a/a;->b:I

    iget-object v1, p0, La/b/c/aj;->b:La/b/a/a/a;

    iget-object v1, v1, La/b/a/a/a;->c:[La/b/a/a/h;

    invoke-direct {p0, v0, v1, p1}, La/b/c/aj;->a(I[La/b/a/a/h;La/b/a/a/h;)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_14
    iget-object v0, p0, La/b/c/aj;->b:La/b/a/a/a;

    iget v1, v0, La/b/a/a/a;->b:I

    iget-object v2, p0, La/b/c/aj;->b:La/b/a/a/a;

    iget-object v2, v2, La/b/a/a/a;->c:[La/b/a/a/h;

    invoke-direct {p0, v1, v2, p1}, La/b/c/aj;->b(I[La/b/a/a/h;La/b/a/a/h;)[La/b/a/a/h;

    move-result-object p1

    iput-object p1, v0, La/b/a/a/a;->c:[La/b/a/a/h;

    iget-object p1, p0, La/b/c/aj;->b:La/b/a/a/a;

    iget v0, p1, La/b/a/a/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, La/b/a/a/a;->b:I

    goto :goto_53

    :cond_2b
    iget-boolean v0, p0, La/b/c/aj;->d:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, La/b/c/aj;->c:La/b/a/a/e;

    iget v0, v0, La/b/a/a/e;->a:I

    iget-object v1, p0, La/b/c/aj;->c:La/b/a/a/e;

    iget-object v1, v1, La/b/a/a/e;->b:[La/b/a/a/h;

    invoke-direct {p0, v0, v1, p1}, La/b/c/aj;->a(I[La/b/a/a/h;La/b/a/a/h;)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_3d
    iget-object v0, p0, La/b/c/aj;->c:La/b/a/a/e;

    iget v1, v0, La/b/a/a/e;->a:I

    iget-object v2, p0, La/b/c/aj;->c:La/b/a/a/e;

    iget-object v2, v2, La/b/a/a/e;->b:[La/b/a/a/h;

    invoke-direct {p0, v1, v2, p1}, La/b/c/aj;->b(I[La/b/a/a/h;La/b/a/a/h;)[La/b/a/a/h;

    move-result-object p1

    iput-object p1, v0, La/b/a/a/e;->b:[La/b/a/a/h;

    iget-object p1, p0, La/b/c/aj;->c:La/b/a/a/e;

    iget v0, p1, La/b/a/a/e;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, La/b/a/a/e;->a:I

    :cond_53
    :goto_53
    return-void
.end method

.class public La/b/g/as;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/n;


# instance fields
.field private a:[La/b/g/n;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([La/b/g/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g/as;->a:[La/b/g/n;

    array-length v0, p1

    iput v0, p0, La/b/g/as;->b:I

    return-void
.end method

.method private a()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, La/b/g/as;->a:[La/b/g/n;

    if-nez v0, :cond_b

    const/4 v0, 0x5

    new-array v0, v0, [La/b/g/n;

    iput-object v0, p0, La/b/g/as;->a:[La/b/g/n;

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, La/b/g/as;->a:[La/b/g/n;

    array-length v0, v0

    iget v1, p0, La/b/g/as;->b:I

    if-ne v0, v1, :cond_a

    iget v0, p0, La/b/g/as;->b:I

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [La/b/g/n;

    iget-object v1, p0, La/b/g/as;->a:[La/b/g/n;

    iget v2, p0, La/b/g/as;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, La/b/g/as;->a:[La/b/g/n;

    goto :goto_a
.end method


# virtual methods
.method public a(La/b/b;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La/b/g/as;->b:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, La/b/g/as;->a:[La/b/g/n;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, La/b/g/n;->a(La/b/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public a(La/b/g/n;)V
    .registers 5

    invoke-direct {p0}, La/b/g/as;->a()V

    iget-object v0, p0, La/b/g/as;->a:[La/b/g/n;

    iget v1, p0, La/b/g/as;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/b/g/as;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.class public La/b/c/g;
.super Ljava/lang/Object;


# instance fields
.field private a:La/b/a/a/d;


# direct methods
.method public constructor <init>(La/b/a/a/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/g;->a:La/b/a/a/d;

    return-void
.end method


# virtual methods
.method public a(La/b/a/a/a;)V
    .registers 6

    iget-object v0, p0, La/b/c/g;->a:La/b/a/a/d;

    iget v0, v0, La/b/a/a/d;->c:I

    iget-object v1, p0, La/b/c/g;->a:La/b/a/a/d;

    iget-object v1, v1, La/b/a/a/d;->d:[La/b/a/a/a;

    array-length v2, v1

    if-gt v2, v0, :cond_1f

    iget-object v2, p0, La/b/c/g;->a:La/b/a/a/d;

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [La/b/a/a/a;

    iput-object v3, v2, La/b/a/a/d;->d:[La/b/a/a/a;

    iget-object v2, p0, La/b/c/g;->a:La/b/a/a/d;

    iget-object v2, v2, La/b/a/a/d;->d:[La/b/a/a/a;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/b/c/g;->a:La/b/a/a/d;

    iget-object v1, v0, La/b/a/a/d;->d:[La/b/a/a/a;

    :cond_1f
    iget-object v0, p0, La/b/c/g;->a:La/b/a/a/d;

    iget v2, v0, La/b/a/a/d;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, La/b/a/a/d;->c:I

    aput-object p1, v1, v2

    return-void
.end method

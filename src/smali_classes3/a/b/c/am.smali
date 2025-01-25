.class public La/b/c/am;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/a/d;


# direct methods
.method public constructor <init>(La/b/a/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/am;->a:La/b/a/d;

    return-void
.end method


# virtual methods
.method a(La/b/a/h;)V
    .registers 8

    iget-object v0, p0, La/b/c/am;->a:La/b/a/d;

    iget-object v0, v0, La/b/a/d;->h:[La/b/a/h;

    iget-object v1, p0, La/b/c/am;->a:La/b/a/d;

    iget v1, v1, La/b/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v2, :cond_1b

    new-array v3, v2, [La/b/a/h;

    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v4

    iget-object p1, p0, La/b/c/am;->a:La/b/a/d;

    iput-object v3, p1, La/b/a/d;->h:[La/b/a/h;

    goto :goto_20

    :cond_1b
    invoke-static {v0, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v0, v4

    :goto_20
    iget-object p1, p0, La/b/c/am;->a:La/b/a/d;

    iput v2, p1, La/b/a/d;->g:I

    return-void
.end method

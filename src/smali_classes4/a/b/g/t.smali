.class public La/b/g/t;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:La/b/g/s;


# direct methods
.method public constructor <init>(La/b/g/s;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g/t;->a:La/b/g/s;

    return-void
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 5

    invoke-virtual {p1}, La/b/e;->a()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-eqz v0, :cond_18

    iget-object v1, p1, La/b/e;->i:[La/b/c;

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    :goto_d
    array-length v2, v1

    if-ge v0, v2, :cond_1d

    aget-object v2, v1, v0

    invoke-interface {v2, p0}, La/b/c;->a(La/b/g/s;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    iget-object v0, p0, La/b/g/t;->a:La/b/g/s;

    invoke-virtual {p1, v0}, La/b/e;->a(La/b/g/s;)V

    :cond_1d
    return-void
.end method

.method public a(La/b/k;)V
    .registers 5

    invoke-virtual {p1}, La/b/k;->a()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-eqz v0, :cond_18

    iget-object v1, p1, La/b/k;->o:[La/b/c;

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    :goto_d
    array-length v2, v1

    if-ge v0, v2, :cond_1d

    aget-object v2, v1, v0

    invoke-interface {v2, p0}, La/b/c;->a(La/b/g/s;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    iget-object v0, p0, La/b/g/t;->a:La/b/g/s;

    invoke-virtual {p1, v0}, La/b/k;->a(La/b/g/s;)V

    :cond_1d
    return-void
.end method

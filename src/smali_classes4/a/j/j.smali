.class public La/j/j;
.super Ljava/lang/Object;

# interfaces
.implements La/j/u;


# instance fields
.field private final a:La/j/u;


# direct methods
.method public constructor <init>(La/j/u;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/j/j;->a:La/j/u;

    return-void
.end method

.method private b(Ljava/lang/String;)La/j/t;
    .registers 5

    invoke-direct {p0, p1}, La/j/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, La/j/p;

    iget-object v1, p0, La/j/j;->a:La/j/u;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, La/j/u;->a(Ljava/lang/String;)La/j/t;

    move-result-object v1

    invoke-direct {v0, v1}, La/j/p;-><init>(La/j/t;)V

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, La/j/j;->a:La/j/u;

    invoke-interface {v0, p1}, La/j/u;->a(Ljava/lang/String;)La/j/t;

    move-result-object v0

    goto :goto_16
.end method

.method private c(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)La/j/t;
    .registers 3

    invoke-static {p1}, La/j/k;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, La/j/j;->a(Ljava/util/List;)La/j/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)La/j/t;
    .registers 6

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_8
    if-ltz v3, :cond_2e

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, La/j/j;->b(Ljava/lang/String;)La/j/t;

    move-result-object v1

    if-nez v2, :cond_1c

    move-object v0, v1

    :goto_17
    add-int/lit8 v1, v3, -0x1

    move-object v2, v0

    move v3, v1

    goto :goto_8

    :cond_1c
    invoke-direct {p0, v0}, La/j/j;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, La/j/a;

    invoke-direct {v0, v1, v2}, La/j/a;-><init>(La/j/t;La/j/t;)V

    goto :goto_17

    :cond_28
    new-instance v0, La/j/q;

    invoke-direct {v0, v1, v2}, La/j/q;-><init>(La/j/t;La/j/t;)V

    goto :goto_17

    :cond_2e
    if-eqz v2, :cond_32

    move-object v0, v2

    :goto_31
    return-object v0

    :cond_32
    new-instance v0, La/j/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La/j/e;-><init>(Z)V

    goto :goto_31
.end method

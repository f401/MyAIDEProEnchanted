.class public La/b/g/ag;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/aq;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:La/b/g/aq;


# direct methods
.method public constructor <init>(IILa/b/g/aq;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, -0x8

    iput v0, p0, La/b/g/ag;->a:I

    iput p2, p0, La/b/g/ag;->b:I

    and-int/lit8 v0, p1, 0x7

    iput v0, p0, La/b/g/ag;->c:I

    iput-object p3, p0, La/b/g/ag;->d:La/b/g/aq;

    return-void
.end method

.method private a(I)Z
    .registers 4

    iget v0, p0, La/b/g/ag;->a:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_17

    iget v0, p0, La/b/g/ag;->b:I

    and-int/2addr v0, p1

    if-nez v0, :cond_17

    iget v0, p0, La/b/g/ag;->c:I

    if-eqz v0, :cond_15

    iget v0, p0, La/b/g/ag;->c:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public a(La/b/e;La/b/f;)V
    .registers 4

    invoke-virtual {p2}, La/b/f;->a()I

    move-result v0

    invoke-direct {p0, v0}, La/b/g/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, La/b/g/ag;->d:La/b/g/aq;

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/e;La/b/f;)V

    :cond_f
    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 4

    invoke-virtual {p2}, La/b/h;->a()I

    move-result v0

    invoke-direct {p0, v0}, La/b/g/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, La/b/g/ag;->d:La/b/g/aq;

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/e;La/b/h;)V

    :cond_f
    return-void
.end method

.method public a(La/b/k;La/b/l;)V
    .registers 4

    invoke-virtual {p2}, La/b/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, La/b/g/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, La/b/g/ag;->d:La/b/g/aq;

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/k;La/b/l;)V

    :cond_f
    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 4

    invoke-virtual {p2}, La/b/n;->a()I

    move-result v0

    invoke-direct {p0, v0}, La/b/g/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, La/b/g/ag;->d:La/b/g/aq;

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/k;La/b/n;)V

    :cond_f
    return-void
.end method

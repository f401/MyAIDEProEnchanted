.class La/g/c/ag;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;


# instance fields
.field public a:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/g/c/af;)V
    .registers 2

    invoke-direct {p0}, La/g/c/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/a;)V
    .registers 5

    iget v0, p2, La/b/b/a;->a:I

    const/high16 v1, 0x40000000  # 2.0f

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/ag;->a:Z

    :cond_9
    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 5

    iget v0, p2, La/b/b/h;->b:I

    const/high16 v1, 0x40000000  # 2.0f

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/ag;->a:Z

    :goto_9
    return-void

    :cond_a
    iget v0, p2, La/b/b/h;->b:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_9
.end method

.method public a(La/b/c;La/b/b/k;)V
    .registers 5

    iget v0, p2, La/b/b/k;->a:I

    const/high16 v1, 0x40000000  # 2.0f

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/ag;->a:Z

    :cond_9
    return-void
.end method

.method public a(La/b/c;La/b/b/m;)V
    .registers 5

    iget v0, p2, La/b/b/m;->a:I

    const/high16 v1, 0x40000000  # 2.0f

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/ag;->a:Z

    :cond_9
    return-void
.end method

.method public a(La/b/c;La/b/b/n;)V
    .registers 5

    const/high16 v1, 0x40000000  # 2.0f

    iget v0, p2, La/b/b/n;->a:I

    if-ge v0, v1, :cond_a

    iget v0, p2, La/b/b/n;->b:I

    if-lt v0, v1, :cond_d

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/ag;->a:Z

    :cond_d
    return-void
.end method

.method public a(La/b/c;La/b/b/o;)V
    .registers 5

    iget v0, p2, La/b/b/o;->a:I

    const/high16 v1, 0x40000000  # 2.0f

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/ag;->a:Z

    :cond_9
    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 5

    iget v0, p2, La/b/b/r;->a:I

    const/high16 v1, 0x40000000  # 2.0f

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/ag;->a:Z

    :cond_9
    return-void
.end method

.method public b(La/b/c;La/b/b/q;)V
    .registers 5

    const/high16 v1, 0x40000000  # 2.0f

    iget v0, p2, La/b/b/q;->a:I

    if-ge v0, v1, :cond_a

    iget v0, p2, La/b/b/q;->b:I

    if-lt v0, v1, :cond_e

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/ag;->a:Z

    :goto_d
    return-void

    :cond_e
    iget v0, p2, La/b/b/q;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget v0, p2, La/b/b/q;->b:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_d
.end method

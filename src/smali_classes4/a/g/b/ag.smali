.class public La/g/b/ag;
.super La/g/b/l;

# interfaces
.implements La/b/a/d/i;


# static fields
.field private static final a:La/d/a/be;

.field private static final b:La/d/e;

.field private static final c:La/d/a/ac;


# instance fields
.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:La/d/a/ap;

.field private volatile h:La/d/a/bd;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, La/d/a/ao;

    invoke-direct {v0}, La/d/a/ao;-><init>()V

    sput-object v0, La/g/b/ag;->a:La/d/a/be;

    new-instance v0, La/d/e;

    sget-object v1, La/g/b/ag;->a:La/d/a/be;

    invoke-direct {v0, v1}, La/d/e;-><init>(La/d/a/be;)V

    sput-object v0, La/g/b/ag;->b:La/d/e;

    new-instance v0, La/d/a/ac;

    sget-object v1, La/g/b/ag;->a:La/d/a/be;

    invoke-direct {v0, v1}, La/d/a/ac;-><init>(La/d/a/be;)V

    sput-object v0, La/g/b/ag;->c:La/d/a/ac;

    return-void
.end method

.method public constructor <init>(La/b/c;La/b/d;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, La/g/b/l;-><init>()V

    iput-boolean v0, p0, La/g/b/ag;->f:Z

    invoke-interface {p2}, La/b/d;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_16

    :goto_e
    iput-boolean v0, p0, La/g/b/ag;->e:Z

    iput-boolean v0, p0, La/g/b/ag;->d:Z

    invoke-virtual {p0, p1, p2}, La/g/b/ag;->b(La/b/c;La/b/d;)V

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public constructor <init>(La/g/b/ag;)V
    .registers 3

    invoke-direct {p0}, La/g/b/l;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ag;->f:Z

    iget-boolean v0, p1, La/g/b/ag;->d:Z

    iput-boolean v0, p0, La/g/b/ag;->d:Z

    iget-boolean v0, p1, La/g/b/ag;->e:Z

    iput-boolean v0, p0, La/g/b/ag;->e:Z

    iget-boolean v0, p1, La/g/b/ag;->f:Z

    iput-boolean v0, p0, La/g/b/ag;->f:Z

    iget-object v0, p1, La/g/b/ag;->g:La/d/a/ap;

    iput-object v0, p0, La/g/b/ag;->g:La/d/a/ap;

    iget-object v0, p1, La/g/b/ag;->h:La/d/a/bd;

    iput-object v0, p0, La/g/b/ag;->h:La/d/a/bd;

    return-void
.end method

.method public static b(La/b/d;)La/g/b/ag;
    .registers 2

    invoke-interface {p0}, La/b/d;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/b/ag;

    return-object v0
.end method

.method public static c(La/b/c;La/b/d;)V
    .registers 3

    new-instance v0, La/g/b/ag;

    invoke-direct {v0, p0, p1}, La/g/b/ag;-><init>(La/b/c;La/b/d;)V

    invoke-interface {p1, v0}, La/b/d;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/d;La/b/a/e;)V
    .registers 6

    sget-object v0, La/g/b/ag;->b:La/d/e;

    iget v1, p3, La/b/a/e;->c:I

    invoke-virtual {v0, p1, v1}, La/d/e;->a(La/b/c;I)La/d/a/bd;

    move-result-object v0

    iput-object v0, p0, La/g/b/ag;->h:La/d/a/bd;

    return-void
.end method

.method public a(La/d/a/ap;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, La/g/b/ag;->g:La/d/a/ap;

    if-eqz v0, :cond_b

    iget-object v0, p0, La/g/b/ag;->g:La/d/a/ap;

    invoke-virtual {v0, p1}, La/d/a/ap;->a(La/d/a/ap;)La/d/a/ap;

    move-result-object p1

    :cond_b
    iput-object p1, p0, La/g/b/ag;->g:La/d/a/ap;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(La/d/a/bd;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, La/g/b/ag;->h:La/d/a/bd;

    if-eqz v0, :cond_b

    iget-object v0, p0, La/g/b/ag;->h:La/d/a/bd;

    invoke-virtual {v0, p1}, La/d/a/bd;->a(La/d/a/bd;)La/d/a/bd;

    move-result-object p1

    :cond_b
    iput-object p1, p0, La/g/b/ag;->h:La/d/a/bd;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b(La/b/c;La/b/d;)V
    .registers 5

    invoke-interface {p2}, La/b/d;->a()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, La/g/b/ag;->h:La/d/a/bd;

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_13

    new-instance v1, La/b/a/d/a;

    invoke-direct {v1, p0}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-interface {p2, p1, v1}, La/b/d;->a(La/b/c;La/b/g/aq;)V

    :cond_13
    iget-object v1, p0, La/g/b/ag;->h:La/d/a/bd;

    if-nez v1, :cond_2b

    sget-boolean v1, La/g/b/ap;->a:Z

    if-nez v1, :cond_1f

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2b

    :cond_1f
    sget-object v0, La/g/b/ag;->c:La/d/a/ac;

    invoke-interface {p2, p1}, La/b/d;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/d/a/ac;->a(Ljava/lang/String;)La/d/a/bd;

    move-result-object v0

    iput-object v0, p0, La/g/b/ag;->h:La/d/a/bd;

    :cond_2b
    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ag;->d:Z

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ag;->e:Z

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, La/g/b/ag;->f:Z

    return v0
.end method

.method public e()La/d/a/bd;
    .registers 2

    iget-object v0, p0, La/g/b/ag;->h:La/d/a/bd;

    return-object v0
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ag;->d:Z

    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/b/ag;->e:Z

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, La/g/b/ag;->f:Z

    return-void
.end method

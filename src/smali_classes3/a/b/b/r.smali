.class public La/b/b/r;
.super La/b/b/b;


# instance fields
.field public a:I

.field public b:La/b/c;

.field public c:La/b/i;

.field public e:La/b/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(ILa/b/c;La/b/i;)V
    .registers 4

    invoke-direct {p0}, La/b/b/b;-><init>()V

    iput p1, p0, La/b/b/r;->a:I

    iput-object p2, p0, La/b/b/r;->b:La/b/c;

    iput-object p3, p0, La/b/b/r;->c:La/b/i;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public a(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/b/r;->a:I

    invoke-interface {p1, v0}, La/b/c;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(La/b/c;La/b/b/a/f;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/b/a/f;->a(La/b/c;La/b/b/r;)V

    return-void
.end method

.method public a(La/b/g/aq;)V
    .registers 4

    iget-object v0, p0, La/b/b/r;->c:La/b/i;

    if-eqz v0, :cond_9

    iget-object v1, p0, La/b/b/r;->b:La/b/c;

    invoke-interface {v0, v1, p1}, La/b/i;->a(La/b/c;La/b/g/aq;)V

    :cond_9
    return-void
.end method

.method public a(La/b/g/s;)V
    .registers 4

    iget-object v0, p0, La/b/b/r;->b:La/b/c;

    if-eqz v0, :cond_b

    iget-object v1, p0, La/b/b/r;->c:La/b/i;

    if-nez v1, :cond_b

    invoke-interface {v0, p1}, La/b/c;->a(La/b/g/s;)V

    :cond_b
    return-void
.end method

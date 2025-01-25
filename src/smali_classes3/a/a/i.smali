.class La/a/i;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/g/s;


# instance fields
.field private final a:La/b/c;

.field private final b:La/b/g/s;

.field private c:Z


# direct methods
.method public constructor <init>(La/b/c;La/b/g/s;)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/a/i;->a:La/b/c;

    iput-object p2, p0, La/a/i;->b:La/b/g/s;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/k;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/i;->c:Z

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/b/a/f;)V

    iget-boolean v0, p0, La/a/i;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, La/a/i;->b:La/b/g/s;

    invoke-virtual {p1, v0}, La/b/k;->a(La/b/g/s;)V

    :cond_f
    return-void
.end method

.method public b(La/b/c;La/b/b/q;)V
    .registers 3

    iget-object p1, p2, La/b/b/q;->c:La/b/c;

    iget-object p2, p0, La/a/i;->a:La/b/c;

    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    iput-boolean p1, p0, La/a/i;->c:Z

    :cond_9
    return-void
.end method

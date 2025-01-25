.class La/i/s;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# instance fields
.field final a:La/i/n;


# direct methods
.method private constructor <init>(La/i/n;)V
    .registers 2

    iput-object p1, p0, La/i/s;->a:La/i/n;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/i/n;La/i/o;)V
    .registers 3

    invoke-direct {p0, p1}, La/i/s;-><init>(La/i/n;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 6

    iget v0, p3, La/b/a/d;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    iget-object v0, p0, La/i/s;->a:La/i/n;

    invoke-interface {p2, p1, v0}, La/b/j;->a(La/b/c;La/b/g/aq;)V

    :cond_a
    return-void
.end method

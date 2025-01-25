.class public La/b/g/v;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;


# instance fields
.field protected final a:La/b/g/s;


# direct methods
.method public constructor <init>(La/b/g/s;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/g/v;->a:La/b/g/s;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 5

    iget-object v0, p2, La/b/b/h;->c:[La/b/c;

    if-eqz v0, :cond_21

    array-length v1, v0

    if-lez v1, :cond_21

    invoke-virtual {p2, p1}, La/b/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_21

    iget-object v1, p0, La/b/g/v;->a:La/b/g/s;

    invoke-interface {v0, v1}, La/b/c;->a(La/b/g/s;)V

    :cond_21
    return-void
.end method

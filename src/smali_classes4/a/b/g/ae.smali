.class public La/b/g/ae;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/aq;


# instance fields
.field private final a:La/b/g/aq;

.field private final b:La/b/g/aq;


# direct methods
.method public constructor <init>(La/b/g/aq;La/b/g/aq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g/ae;->a:La/b/g/aq;

    iput-object p2, p0, La/b/g/ae;->b:La/b/g/aq;

    return-void
.end method

.method private a(La/b/c;La/b/i;)La/b/g/aq;
    .registers 4

    invoke-interface {p2, p1}, La/b/i;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, La/b/g/ae;->a:La/b/g/aq;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, La/b/g/ae;->b:La/b/g/aq;

    goto :goto_c
.end method


# virtual methods
.method public a(La/b/e;La/b/f;)V
    .registers 3

    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 4

    invoke-direct {p0, p1, p2}, La/b/g/ae;->a(La/b/c;La/b/i;)La/b/g/aq;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/e;La/b/h;)V

    :cond_9
    return-void
.end method

.method public a(La/b/k;La/b/l;)V
    .registers 3

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 4

    invoke-direct {p0, p1, p2}, La/b/g/ae;->a(La/b/c;La/b/i;)La/b/g/aq;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/k;La/b/n;)V

    :cond_9
    return-void
.end method

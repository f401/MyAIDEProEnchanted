.class public La/g/g;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:La/b/g/s;

.field private final b:La/b/g/s;


# direct methods
.method public constructor <init>(La/b/g/s;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/g/g;-><init>(La/b/g/s;La/b/g/s;)V

    return-void
.end method

.method public constructor <init>(La/b/g/s;La/b/g/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/g/g;->a:La/b/g/s;

    iput-object p2, p0, La/g/g;->b:La/b/g/s;

    return-void
.end method

.method private a(La/b/c;)La/b/g/s;
    .registers 3

    invoke-static {p1}, La/g/f;->b(La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, La/g/g;->a:La/b/g/s;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, La/g/g;->b:La/b/g/s;

    goto :goto_8
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/g;->a(La/b/c;)La/b/g/s;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/e;)V

    :cond_9
    return-void
.end method

.method public a(La/b/k;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/g;->a(La/b/c;)La/b/g/s;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/k;)V

    :cond_9
    return-void
.end method

.class public La/g/c/i;
.super La/b/f/w;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:La/b/g/s;


# direct methods
.method public constructor <init>(ZZLa/b/g/s;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-boolean p1, p0, La/g/c/i;->a:Z

    iput-boolean p2, p0, La/g/c/i;->b:Z

    iput-object p3, p0, La/g/c/i;->c:La/b/g/s;

    return-void
.end method


# virtual methods
.method public a(La/b/k;)V
    .registers 10

    new-instance v6, La/b/g/bi;

    new-instance v7, La/b/g/bn;

    new-instance v0, La/g/c/c;

    iget-boolean v2, p0, La/g/c/i;->a:Z

    iget-boolean v3, p0, La/g/c/i;->b:Z

    const/4 v4, 0x0

    iget-object v5, p0, La/g/c/i;->c:La/b/g/s;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, La/g/c/c;-><init>(La/b/k;ZZZLa/b/g/s;)V

    invoke-direct {v7, v0}, La/b/g/bn;-><init>(La/b/g/s;)V

    invoke-direct {v6, v7}, La/b/g/bi;-><init>(La/b/g/s;)V

    invoke-virtual {p1, v6}, La/b/k;->b(La/b/b/a/f;)V

    return-void
.end method

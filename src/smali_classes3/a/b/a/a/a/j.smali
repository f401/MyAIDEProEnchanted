.class public La/b/a/a/a/j;
.super La/b/a/a/a/h;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a/a/h;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0, p1}, La/b/a/a/a/h;-><init>(B)V

    return-void
.end method

.method public constructor <init>(BII)V
    .registers 4

    invoke-direct {p0, p1}, La/b/a/a/a/h;-><init>(B)V

    iput p2, p0, La/b/a/a/a/j;->a:I

    iput p3, p0, La/b/a/a/a/j;->b:I

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/q;La/b/a/a/a/a/b;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, La/b/a/a/a/a/b;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/a/q;La/b/a/a/a/j;)V

    return-void
.end method

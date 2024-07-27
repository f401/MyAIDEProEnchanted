.class public La/b/a/a/a/c;
.super La/b/a/a/a/h;


# instance fields
.field public a:I


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

.method public constructor <init>(BI)V
    .registers 3

    invoke-direct {p0, p1}, La/b/a/a/a/h;-><init>(B)V

    iput p2, p0, La/b/a/a/a/c;->a:I

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/q;La/b/a/a/a/a/b;)V
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p3, p1, v0, p2, p0}, La/b/a/a/a/a/b;->a(La/b/c;La/b/j;La/b/a/a/q;La/b/a/a/a/c;)V

    return-void
.end method

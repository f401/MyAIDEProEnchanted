.class public La/b/a/a/a/l;
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

    iput p2, p0, La/b/a/a/a/l;->a:I

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/q;La/b/a/a/a/a/b;)V
    .registers 4

    invoke-interface {p3, p1, p2, p0}, La/b/a/a/a/a/b;->a(La/b/c;La/b/a/a/q;La/b/a/a/a/l;)V

    return-void
.end method

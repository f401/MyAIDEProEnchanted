.class public La/b/d/a/b;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field private final a:La/b/b/a/f;


# direct methods
.method public constructor <init>(La/b/b/a/f;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/d/a/b;->a:La/b/b/a/f;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 8

    iget v0, p5, La/b/d/b;->a:I

    iget-object v1, p0, La/b/d/a/b;->a:La/b/b/a/f;

    invoke-interface {p1, v0, v1}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

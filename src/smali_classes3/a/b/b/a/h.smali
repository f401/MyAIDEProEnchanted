.class public La/b/b/a/h;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;


# instance fields
.field private a:La/b/b/a/f;


# direct methods
.method public constructor <init>(La/b/b/a/f;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/b/a/h;->a:La/b/b/a/f;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/j;)V
    .registers 4

    iget p2, p2, La/b/b/j;->b:I

    iget-object v0, p0, La/b/b/a/h;->a:La/b/b/a/f;

    invoke-interface {p1, p2, v0}, La/b/c;->a(ILa/b/b/a/f;)V

    return-void
.end method

.class public La/b/d/a/a;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# instance fields
.field private final a:La/b/d/a/d;


# direct methods
.method public constructor <init>(La/b/d/a/d;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/d/a/a;->a:La/b/d/a/d;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 5

    iget-object v0, p0, La/b/d/a/a;->a:La/b/d/a/d;

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    return-void
.end method

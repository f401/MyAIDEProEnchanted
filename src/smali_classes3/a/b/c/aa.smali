.class public La/b/c/aa;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# instance fields
.field private final a:La/b/c/v;


# direct methods
.method public constructor <init>(La/b/c/v;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/c/aa;->a:La/b/c/v;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 4

    iget-object p1, p0, La/b/c/aa;->a:La/b/c/v;

    iget p2, p3, La/b/a/d;->e:I

    invoke-virtual {p1, p2}, La/b/c/v;->a(I)V

    return-void
.end method

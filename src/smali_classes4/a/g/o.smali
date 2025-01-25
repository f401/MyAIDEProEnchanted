.class La/g/o;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/bb;


# instance fields
.field final a:La/g/m;


# direct methods
.method constructor <init>(La/g/m;)V
    .registers 2

    iput-object p1, p0, La/g/o;->a:La/g/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La/b/g/s;
    .registers 4

    new-instance v0, La/b/g/d;

    new-instance v1, La/b/a/d/a;

    new-instance v2, La/g/b/k;

    invoke-direct {v2}, La/g/b/k;-><init>()V

    invoke-direct {v1, v2}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-direct {v0, v1}, La/b/g/d;-><init>(La/b/g/aq;)V

    return-object v0
.end method

.class public La/g/aa;
.super La/b/f/w;

# interfaces
.implements La/b/g/aq;


# instance fields
.field private final a:La/b/g/aq;


# direct methods
.method public constructor <init>(La/b/g/aq;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/g/aa;->a:La/b/g/aq;

    return-void
.end method


# virtual methods
.method public a(La/b/k;La/b/l;)V
    .registers 4

    invoke-static {p2}, La/g/b/aj;->b(La/b/d;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p2}, La/g/b/aj;->a(La/b/d;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, La/g/aa;->a:La/b/g/aq;

    invoke-interface {v0, p1, p2}, La/b/g/aq;->a(La/b/k;La/b/l;)V

    :cond_11
    return-void
.end method

.class public La/b/g/e;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:La/b/g/s;


# direct methods
.method public constructor <init>(La/b/g/s;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g/e;->a:La/b/g/s;

    return-void
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 3

    iget-object v0, p1, La/b/e;->i:[La/b/c;

    if-nez v0, :cond_9

    iget-object v0, p0, La/b/g/e;->a:La/b/g/s;

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/e;)V

    :cond_9
    return-void
.end method

.method public a(La/b/k;)V
    .registers 3

    iget-object v0, p1, La/b/k;->o:[La/b/c;

    if-nez v0, :cond_9

    iget-object v0, p0, La/b/g/e;->a:La/b/g/s;

    invoke-interface {v0, p1}, La/b/g/s;->a(La/b/k;)V

    :cond_9
    return-void
.end method

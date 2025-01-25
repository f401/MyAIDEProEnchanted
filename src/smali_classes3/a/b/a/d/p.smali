.class public La/b/a/d/p;
.super Ljava/lang/Object;

# interfaces
.implements La/b/a/d/o;


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, La/b/a/d/p;->a:I

    const/4 v0, 0x0

    iput v0, p0, La/b/a/d/p;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, La/b/a/d/p;->b:I

    return v0
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/m;)V
    .registers 5

    iget p1, p4, La/b/a/m;->c:I

    iget p2, p0, La/b/a/d/p;->a:I

    if-le p2, p1, :cond_8

    iput p1, p0, La/b/a/d/p;->a:I

    :cond_8
    iget p2, p0, La/b/a/d/p;->b:I

    if-ge p2, p1, :cond_e

    iput p1, p0, La/b/a/d/p;->b:I

    :cond_e
    invoke-virtual {p4}, La/b/a/m;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    iput-boolean p1, p0, La/b/a/d/p;->c:Z

    :cond_17
    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, La/b/a/d/p;->c:Z

    return v0
.end method

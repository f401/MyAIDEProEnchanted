.class public abstract La/b/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements La/b/o;


# instance fields
.field public c:I

.field public d:La/b/c;

.field public e:La/b/j;

.field public f:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/b/a/a/h;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()C
.end method

.method public abstract a(La/b/c;La/b/a/a/a;La/b/a/a/b/g;)V
.end method

.method public a(La/b/g/aq;)V
    .registers 4

    iget-object v0, p0, La/b/a/a/h;->e:La/b/j;

    if-eqz v0, :cond_9

    iget-object v1, p0, La/b/a/a/h;->d:La/b/c;

    invoke-interface {v0, v1, p1}, La/b/j;->a(La/b/c;La/b/g/aq;)V

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, La/b/a/a/h;->f:Ljava/lang/Object;

    return-void
.end method

.method public b(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/a/a/h;->c:I

    invoke-interface {p1, v0}, La/b/c;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La/b/a/a/h;->f:Ljava/lang/Object;

    return-object v0
.end method

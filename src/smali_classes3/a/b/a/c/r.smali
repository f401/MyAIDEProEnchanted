.class public abstract La/b/a/c/r;
.super Ljava/lang/Object;

# interfaces
.implements La/b/o;


# instance fields
.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(La/b/c;La/b/j;La/b/a/d;IILa/b/a/c/a/b;)V
.end method

.method public abstract a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/a/b;)V
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, La/b/a/c/r;->b:Ljava/lang/Object;

    return-void
.end method

.method public abstract b(La/b/c;La/b/j;La/b/a/d;IILa/b/a/c/a/b;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La/b/a/c/r;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

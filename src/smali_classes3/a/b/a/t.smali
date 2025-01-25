.class public La/b/a/t;
.super Ljava/lang/Object;

# interfaces
.implements La/b/o;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/b/a/t;->a:I

    iput p2, p0, La/b/a/t;->b:I

    return-void
.end method


# virtual methods
.method public a(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/a/t;->a:I

    invoke-interface {p1, v0}, La/b/c;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(La/b/c;La/b/b/a/f;)V
    .registers 4

    iget v0, p0, La/b/a/t;->a:I

    if-eqz v0, :cond_7

    invoke-interface {p1, v0, p2}, La/b/c;->a(ILa/b/b/a/f;)V

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, La/b/a/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La/b/a/t;->c:Ljava/lang/Object;

    return-object v0
.end method

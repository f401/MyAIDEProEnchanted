.class public La/b/a/b;
.super Ljava/lang/Object;

# interfaces
.implements La/b/o;


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II[I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/b/a/b;->a:I

    iput p2, p0, La/b/a/b;->b:I

    iput-object p3, p0, La/b/a/b;->c:[I

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/a/f;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La/b/a/b;->b:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, La/b/a/b;->c:[I

    aget v1, v1, v0

    invoke-interface {p1, v1, p2}, La/b/c;->a(ILa/b/b/a/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, La/b/a/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La/b/a/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.class Lorg/c/a/a/c/d/b/c;
.super Lorg/c/a/a/c/d/c/a;


# instance fields
.field final a:Lorg/c/a/a/c/d/b/a;


# direct methods
.method constructor <init>(Lorg/c/a/a/c/d/b/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/d/b/c;->a:Lorg/c/a/a/c/d/b/a;

    invoke-direct {p0}, Lorg/c/a/a/c/d/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/b/b;)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/d/b/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/c;->b:I

    iget v0, p0, Lorg/c/a/a/c/d/b/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/c;->c:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/i;)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/d/b/c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/c;->b:I

    iget v0, p0, Lorg/c/a/a/c/d/b/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/c/d/b/c;->c:I

    return-void
.end method

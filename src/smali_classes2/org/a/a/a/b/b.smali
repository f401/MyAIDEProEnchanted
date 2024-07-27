.class Lorg/a/a/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final a:Lorg/a/a/a/b/a;


# direct methods
.method constructor <init>(Lorg/a/a/a/b/a;)V
    .registers 2

    iput-object p1, p0, Lorg/a/a/a/b/b;->a:Lorg/a/a/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/b/d;Lorg/a/a/a/b/d;)I
    .registers 5

    iget v0, p1, Lorg/a/a/a/b/d;->a:I

    iget v1, p2, Lorg/a/a/a/b/d;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/a/a/a/b/d;

    check-cast p2, Lorg/a/a/a/b/d;

    invoke-virtual {p0, p1, p2}, Lorg/a/a/a/b/b;->a(Lorg/a/a/a/b/d;Lorg/a/a/a/b/d;)I

    move-result v0

    return v0
.end method

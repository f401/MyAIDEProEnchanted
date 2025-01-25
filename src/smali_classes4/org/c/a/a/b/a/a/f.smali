.class public Lorg/c/a/a/b/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/a/a/c;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:[B

.field protected d:[Lorg/c/a/a/b/a/a/w;

.field protected e:Ljava/util/Map;


# direct methods
.method public constructor <init>(II[B[Lorg/c/a/a/b/a/a/w;Ljava/util/Map;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/a/a/f;->a:I

    iput p2, p0, Lorg/c/a/a/b/a/a/f;->b:I

    iput-object p3, p0, Lorg/c/a/a/b/a/a/f;->c:[B

    iput-object p4, p0, Lorg/c/a/a/b/a/a/f;->d:[Lorg/c/a/a/b/a/a/w;

    iput-object p5, p0, Lorg/c/a/a/b/a/a/f;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/b/a/a/f;->e:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/c/a/a/b/a/a/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/a/c;

    goto :goto_5
.end method

.method public a()[B
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/f;->c:[B

    return-object v0
.end method

.method public b()[Lorg/c/a/a/b/a/a/w;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/f;->d:[Lorg/c/a/a/b/a/a/w;

    return-object v0
.end method

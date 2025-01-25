.class public Lorg/a/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public c:[Lorg/a/a/a/a/ba;

.field public d:[Lorg/a/a/a/a/bb;

.field public final e:Ljava/util/Map;

.field public final f:Lorg/a/a/a/a/o;

.field public final g:I

.field public h:[I

.field public i:[Lorg/a/a/a/a/ad;

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/o;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a/a;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a/a;->j:Ljava/util/List;

    iput-object p1, p0, Lorg/a/a/a/a/a;->f:Lorg/a/a/a/a/o;

    iput p2, p0, Lorg/a/a/a/a/a;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Lorg/a/a/a/a/x;)I
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/a/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/a/a/a/a/x;->h:I

    iget v0, p1, Lorg/a/a/a/a/x;->h:I

    return v0
.end method

.method public a(I)Lorg/a/a/a/a/x;
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/a/a/a/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/x;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public a(Lorg/a/a/a/a/n;)V
    .registers 3

    if-eqz p1, :cond_c

    iput-object p0, p1, Lorg/a/a/a/a/n;->b:Lorg/a/a/a/a/a;

    iget-object v0, p0, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lorg/a/a/a/a/n;->c:I

    :cond_c
    iget-object v0, p0, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

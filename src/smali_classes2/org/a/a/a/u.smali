.class public abstract Lorg/a/a/a/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;


# instance fields
.field private c:Ljava/util/List;

.field private d:I

.field protected v:Lorg/a/a/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/a/a/a/u;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/a/a/a/u;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/a/a/a/v;

    invoke-direct {v0, p0}, Lorg/a/a/a/v;-><init>(Lorg/a/a/a/u;)V

    iput-object v0, p0, Lorg/a/a/a/u;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/u;->d:I

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/w;II)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public abstract a()[Ljava/lang/String;
.end method

.method public b()Lorg/a/a/a/ad;
    .registers 2

    invoke-virtual {p0}, Lorg/a/a/a/u;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/a/ae;->a([Ljava/lang/String;)Lorg/a/a/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/a/a/a/w;II)V
    .registers 4

    return-void
.end method

.method public m()Lorg/a/a/a/a/m;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/u;->v:Lorg/a/a/a/a/m;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/u;->c:Ljava/util/List;

    return-object v0
.end method

.method public o()Lorg/a/a/a/a;
    .registers 3

    new-instance v0, Lorg/a/a/a/s;

    invoke-virtual {p0}, Lorg/a/a/a/u;->n()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/a/s;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final p()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/u;->d:I

    return v0
.end method

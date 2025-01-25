.class public Lorg/c/a/a/d/c;
.super Ljava/util/ArrayList;


# static fields
.field protected static d:Lorg/c/a/a/d/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/c/a/a/d/d;

    invoke-direct {v0}, Lorg/c/a/a/d/d;-><init>()V

    sput-object v0, Lorg/c/a/a/d/c;->d:Lorg/c/a/a/d/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_10

    array-length v0, p1

    if-lez v0, :cond_10

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/c/a/a/d/c;->ensureCapacity(I)V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_e
    if-lt v0, v1, :cond_11

    :cond_10
    return-void

    :cond_11
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public static final f()Lorg/c/a/a/d/c;
    .registers 1

    sget-object v0, Lorg/c/a/a/d/c;->d:Lorg/c/a/a/d/c;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/c/a/a/d/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/c/a/a/d/c;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/c/a/a/d/c;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/c/a/a/d/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

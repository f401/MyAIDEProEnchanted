.class public Lorg/c/a/a/b/c/z;
.super Lorg/c/a/a/b/b/d;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# static fields
.field public static final g:Lorg/c/a/a/b/c/z;

.field public static final h:Lorg/c/a/a/b/c/z;

.field public static final i:Lorg/c/a/a/b/c/z;

.field public static final j:Lorg/c/a/a/b/c/z;

.field public static final k:Lorg/c/a/a/b/c/z;

.field public static final l:Lorg/c/a/a/b/c/z;


# instance fields
.field protected m:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/c/a/a/b/c/z;

    new-array v1, v4, [Lorg/c/a/a/b/f/p;

    sget-object v2, Lorg/c/a/a/b/f/o;->b:Lorg/c/a/a/b/f/o;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/c/a/a/b/c/z;-><init>([Lorg/c/a/a/b/f/p;)V

    sput-object v0, Lorg/c/a/a/b/c/z;->g:Lorg/c/a/a/b/c/z;

    new-instance v0, Lorg/c/a/a/b/c/z;

    new-array v1, v4, [Lorg/c/a/a/b/f/p;

    sget-object v2, Lorg/c/a/a/b/f/o;->z:Lorg/c/a/a/b/f/o;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/c/a/a/b/c/z;-><init>([Lorg/c/a/a/b/f/p;)V

    sput-object v0, Lorg/c/a/a/b/c/z;->h:Lorg/c/a/a/b/c/z;

    new-instance v0, Lorg/c/a/a/b/c/z;

    new-array v1, v4, [Lorg/c/a/a/b/f/p;

    sget-object v2, Lorg/c/a/a/b/f/l;->f:Lorg/c/a/a/b/f/l;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/c/a/a/b/c/z;-><init>([Lorg/c/a/a/b/f/p;)V

    sput-object v0, Lorg/c/a/a/b/c/z;->i:Lorg/c/a/a/b/c/z;

    new-instance v0, Lorg/c/a/a/b/c/z;

    new-array v1, v4, [Lorg/c/a/a/b/f/p;

    sget-object v2, Lorg/c/a/a/b/f/e;->f:Lorg/c/a/a/b/f/e;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/c/a/a/b/c/z;-><init>([Lorg/c/a/a/b/f/p;)V

    sput-object v0, Lorg/c/a/a/b/c/z;->j:Lorg/c/a/a/b/c/z;

    new-instance v0, Lorg/c/a/a/b/c/z;

    new-array v1, v5, [Lorg/c/a/a/b/f/p;

    sget-object v2, Lorg/c/a/a/b/f/e;->f:Lorg/c/a/a/b/f/e;

    aput-object v2, v1, v3

    sget-object v2, Lorg/c/a/a/b/f/o;->z:Lorg/c/a/a/b/f/o;

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lorg/c/a/a/b/c/z;-><init>([Lorg/c/a/a/b/f/p;)V

    sput-object v0, Lorg/c/a/a/b/c/z;->k:Lorg/c/a/a/b/c/z;

    new-instance v0, Lorg/c/a/a/b/c/z;

    new-array v1, v5, [Lorg/c/a/a/b/f/p;

    sget-object v2, Lorg/c/a/a/c/c/a/b/i;->U:Lorg/c/a/a/b/f/g;

    aput-object v2, v1, v3

    sget-object v2, Lorg/c/a/a/b/f/o;->z:Lorg/c/a/a/b/f/o;

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lorg/c/a/a/b/c/z;-><init>([Lorg/c/a/a/b/f/p;)V

    sput-object v0, Lorg/c/a/a/b/c/z;->l:Lorg/c/a/a/b/c/z;

    return-void
.end method

.method protected constructor <init>(ILjava/util/List;)V
    .registers 9

    const/4 v4, 0x0

    const-string v5, "Tokens"

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/b/d;-><init>(IIIILjava/lang/String;)V

    iput-object p2, p0, Lorg/c/a/a/b/c/z;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    invoke-static {p1}, Lorg/c/a/a/b/c/z;->a(Ljava/util/List;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/c/a/a/b/c/z;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/c/a/a/b/f/p;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/c/a/a/b/c/z;-><init>(Ljava/util/List;)V

    return-void
.end method

.method protected static a(Ljava/util/List;)I
    .registers 4

    new-instance v1, Lorg/c/a/a/b/c/aa;

    invoke-direct {v1}, Lorg/c/a/a/b/c/aa;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, v1, Lorg/c/a/a/b/c/aa;->a:I

    return v0

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/f/p;

    invoke-interface {v0, v1}, Lorg/c/a/a/b/f/p;->a(Lorg/c/a/a/b/f/q;)V

    goto :goto_9
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/z;)V

    return-void
.end method

.method public h()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/z;->m:Ljava/util/List;

    return-object v0
.end method

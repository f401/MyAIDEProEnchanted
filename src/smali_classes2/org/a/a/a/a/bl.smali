.class public abstract Lorg/a/a/a/a/bl;
.super Ljava/lang/Object;


# static fields
.field public static final d:Ljava/util/List;

.field public static final e:Ljava/util/Map;


# instance fields
.field public f:Lorg/a/a/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EPSILON"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RULE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PREDICATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ATOM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SET"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NOT_SET"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WILDCARD"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PRECEDENCE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/a/bl;->d:Ljava/util/List;

    new-instance v0, Lorg/a/a/a/a/bm;

    invoke-direct {v0}, Lorg/a/a/a/a/bm;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/a/bl;->e:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lorg/a/a/a/a/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "target cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(III)Z
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lorg/a/a/a/c/j;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

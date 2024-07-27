.class abstract enum Lorg/apache/tools/ant/types/Quantifier$Predicate;
.super Ljava/lang/Enum;
.source "Quantifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Quantifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Predicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tools/ant/types/Quantifier$Predicate;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/tools/ant/types/Quantifier$Predicate;

.field public static final enum ALL:Lorg/apache/tools/ant/types/Quantifier$Predicate;

.field public static final enum ANY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

.field public static final enum MAJORITY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

.field public static final enum NONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

.field public static final enum ONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;


# instance fields
.field final names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 66
    new-instance v0, Lorg/apache/tools/ant/types/Quantifier$Predicate$1;

    const-string v1, "ALL"

    const-string v2, "all"

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "each"

    aput-object v4, v3, v8

    const-string v4, "every"

    aput-object v4, v3, v9

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/apache/tools/ant/types/Quantifier$Predicate$1;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ALL:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 73
    new-instance v1, Lorg/apache/tools/ant/types/Quantifier$Predicate$2;

    const-string v2, "ANY"

    const-string v3, "any"

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "some"

    aput-object v5, v4, v8

    invoke-direct {v1, v2, v9, v3, v4}, Lorg/apache/tools/ant/types/Quantifier$Predicate$2;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ANY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 80
    new-instance v2, Lorg/apache/tools/ant/types/Quantifier$Predicate$3;

    const-string v3, "ONE"

    const-string v4, "one"

    new-array v5, v8, [Ljava/lang/String;

    invoke-direct {v2, v3, v10, v4, v5}, Lorg/apache/tools/ant/types/Quantifier$Predicate$3;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/apache/tools/ant/types/Quantifier$Predicate;->ONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 87
    new-instance v3, Lorg/apache/tools/ant/types/Quantifier$Predicate$4;

    const-string v4, "MAJORITY"

    const-string v5, "majority"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "most"

    aput-object v7, v6, v8

    invoke-direct {v3, v4, v11, v5, v6}, Lorg/apache/tools/ant/types/Quantifier$Predicate$4;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v3, Lorg/apache/tools/ant/types/Quantifier$Predicate;->MAJORITY:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 94
    new-instance v4, Lorg/apache/tools/ant/types/Quantifier$Predicate$5;

    const-string v5, "NONE"

    const-string v6, "none"

    new-array v7, v8, [Ljava/lang/String;

    invoke-direct {v4, v5, v12, v6, v7}, Lorg/apache/tools/ant/types/Quantifier$Predicate$5;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lorg/apache/tools/ant/types/Quantifier$Predicate;->NONE:Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 65
    const/4 v5, 0x5

    new-array v5, v5, [Lorg/apache/tools/ant/types/Quantifier$Predicate;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    aput-object v2, v5, v10

    aput-object v3, v5, v11

    aput-object v4, v5, v12

    sput-object v5, Lorg/apache/tools/ant/types/Quantifier$Predicate;->$VALUES:[Lorg/apache/tools/ant/types/Quantifier$Predicate;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 111
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v0, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 113
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->names:Ljava/util/Set;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Lorg/apache/tools/ant/types/Quantifier$1;)V
    .registers 6

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/types/Quantifier$Predicate;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static get(Ljava/lang/String;)Lorg/apache/tools/ant/types/Quantifier$Predicate;
    .registers 3

    .line 102
    invoke-static {}, Lorg/apache/tools/ant/types/Quantifier$Predicate;->values()[Lorg/apache/tools/ant/types/Quantifier$Predicate;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/Quantifier$Predicate$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;

    .line 102
    return-object v0
.end method

.method static synthetic lambda$get$0(Ljava/lang/String;Lorg/apache/tools/ant/types/Quantifier$Predicate;)Z
    .registers 3

    .line 102
    iget-object v0, p1, Lorg/apache/tools/ant/types/Quantifier$Predicate;->names:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$get$1(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/types/Quantifier$Predicate;
    .registers 2

    .line 65
    const-class v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;

    return-object v0
.end method

.method public static values()[Lorg/apache/tools/ant/types/Quantifier$Predicate;
    .registers 1

    .line 65
    sget-object v0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->$VALUES:[Lorg/apache/tools/ant/types/Quantifier$Predicate;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/types/Quantifier$Predicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/types/Quantifier$Predicate;

    return-object v0
.end method


# virtual methods
.method abstract eval(II)Z
.end method

.method getNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/types/Quantifier$Predicate;->names:Ljava/util/Set;

    return-object v0
.end method

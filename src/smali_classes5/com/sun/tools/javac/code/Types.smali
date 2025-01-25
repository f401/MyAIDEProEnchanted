.class public Lcom/sun/tools/javac/code/Types;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/Types$AdaptFailure;,
        Lcom/sun/tools/javac/code/Types$Adapter;,
        Lcom/sun/tools/javac/code/Types$DefaultSymbolVisitor;,
        Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;,
        Lcom/sun/tools/javac/code/Types$HasSameArgs;,
        Lcom/sun/tools/javac/code/Types$ImplementationCache;,
        Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;,
        Lcom/sun/tools/javac/code/Types$MapVisitor;,
        Lcom/sun/tools/javac/code/Types$MembersClosureCache;,
        Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;,
        Lcom/sun/tools/javac/code/Types$Rewriter;,
        Lcom/sun/tools/javac/code/Types$SimpleVisitor;,
        Lcom/sun/tools/javac/code/Types$SingletonType;,
        Lcom/sun/tools/javac/code/Types$Subst;,
        Lcom/sun/tools/javac/code/Types$TypePair;,
        Lcom/sun/tools/javac/code/Types$TypeRelation;,
        Lcom/sun/tools/javac/code/Types$UnaryVisitor;
    }
.end annotation


# static fields
.field private static final hashCode:Lcom/sun/tools/javac/code/Types$UnaryVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static newInstanceFun:Lcom/sun/tools/javac/code/Type$Mapping;

.field protected static final typesKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/code/Types;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final allowBoxing:Z

.field final allowCovariantReturns:Z

.field final allowObjectToPrimitiveCast:Z

.field private arraySuperType:Lcom/sun/tools/javac/code/Type;

.field private final asSub:Lcom/sun/tools/javac/code/Types$SimpleVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$SimpleVisitor",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private asSuper:Lcom/sun/tools/javac/code/Types$SimpleVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$SimpleVisitor",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field final capturedName:Lcom/sun/tools/javac/util/Name;

.field final chk:Lcom/sun/tools/javac/comp/Check;

.field private classBound:Lcom/sun/tools/javac/code/Types$UnaryVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field private closureCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field private containsType:Lcom/sun/tools/javac/code/Types$TypeRelation;

.field private disjointType:Lcom/sun/tools/javac/code/Types$TypeRelation;

.field private elemTypeFun:Lcom/sun/tools/javac/code/Type$Mapping;

.field private erasure:Lcom/sun/tools/javac/code/Types$SimpleVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$SimpleVisitor",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private erasureFun:Lcom/sun/tools/javac/code/Type$Mapping;

.field private erasureRecFun:Lcom/sun/tools/javac/code/Type$Mapping;

.field public fromUnknownFun:Lcom/sun/tools/javac/code/Type$Mapping;

.field hasSameArgs_nonstrict:Lcom/sun/tools/javac/code/Types$TypeRelation;

.field hasSameArgs_strict:Lcom/sun/tools/javac/code/Types$TypeRelation;

.field private implCache:Lcom/sun/tools/javac/code/Types$ImplementationCache;

.field private interfaces:Lcom/sun/tools/javac/code/Types$UnaryVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
            "<",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field private isCastable:Lcom/sun/tools/javac/code/Types$TypeRelation;

.field isDerivedRawCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isReifiable:Lcom/sun/tools/javac/code/Types$UnaryVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isSameType:Lcom/sun/tools/javac/code/Types$TypeRelation;

.field private isSubtype:Lcom/sun/tools/javac/code/Types$TypeRelation;

.field private final isUnbounded:Lcom/sun/tools/javac/code/Types$UnaryVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final lowerBound:Lcom/sun/tools/javac/code/Types$MapVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$MapVisitor",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final lowerBoundMapping:Lcom/sun/tools/javac/code/Type$Mapping;

.field private memberType:Lcom/sun/tools/javac/code/Types$SimpleVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$SimpleVisitor",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private membersCache:Lcom/sun/tools/javac/code/Types$MembersClosureCache;

.field mergeCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/code/Types$TypePair;",
            ">;"
        }
    .end annotation
.end field

.field final messages:Lcom/sun/tools/javac/util/JavacMessages;

.field private final methodWithParameters:Lcom/sun/tools/javac/code/Types$MapVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$MapVisitor",
            "<",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field private final methodWithReturn:Lcom/sun/tools/javac/code/Types$MapVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$MapVisitor",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final methodWithThrown:Lcom/sun/tools/javac/code/Types$MapVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$MapVisitor",
            "<",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field final names:Lcom/sun/tools/javac/util/Names;

.field final reader:Lcom/sun/tools/javac/jvm/ClassReader;

.field private supertype:Lcom/sun/tools/javac/code/Types$UnaryVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final syms:Lcom/sun/tools/javac/code/Symtab;

.field private final upperBound:Lcom/sun/tools/javac/code/Types$MapVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/code/Types$MapVisitor",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field warnStack:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/Warner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 125
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/code/Types;->typesKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 2515
    new-instance v0, Lcom/sun/tools/javac/code/Types$22;

    const-string v1, "newInstanceFun"

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Types$22;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/tools/javac/code/Types;->newInstanceFun:Lcom/sun/tools/javac/code/Type$Mapping;

    .line 3071
    new-instance v0, Lcom/sun/tools/javac/code/Types$26;

    invoke-direct {v0}, Lcom/sun/tools/javac/code/Types$26;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/code/Types;->hashCode:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    .line 175
    new-instance v0, Lcom/sun/tools/javac/code/Types$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$1;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->upperBound:Lcom/sun/tools/javac/code/Types$MapVisitor;

    .line 205
    new-instance v0, Lcom/sun/tools/javac/code/Types$2;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$2;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->lowerBound:Lcom/sun/tools/javac/code/Types$MapVisitor;

    .line 232
    new-instance v0, Lcom/sun/tools/javac/code/Types$3;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$3;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->isUnbounded:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    .line 273
    new-instance v0, Lcom/sun/tools/javac/code/Types$4;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$4;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->asSub:Lcom/sun/tools/javac/code/Types$SimpleVisitor;

    .line 454
    new-instance v0, Lcom/sun/tools/javac/code/Types$5;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$5;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->isSubtype:Lcom/sun/tools/javac/code/Types$TypeRelation;

    .line 673
    new-instance v0, Lcom/sun/tools/javac/code/Types$6;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$6;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->isSameType:Lcom/sun/tools/javac/code/Types$TypeRelation;

    .line 813
    new-instance v0, Lcom/sun/tools/javac/code/Types$7;

    const-string v1, "fromUnknownFun"

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/code/Types$7;-><init>(Lcom/sun/tools/javac/code/Types;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->fromUnknownFun:Lcom/sun/tools/javac/code/Type$Mapping;

    .line 902
    new-instance v0, Lcom/sun/tools/javac/code/Types$8;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$8;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->containsType:Lcom/sun/tools/javac/code/Types$TypeRelation;

    .line 1030
    new-instance v0, Lcom/sun/tools/javac/code/Types$9;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$9;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->isCastable:Lcom/sun/tools/javac/code/Types$TypeRelation;

    .line 1241
    new-instance v0, Lcom/sun/tools/javac/code/Types$10;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$10;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->disjointType:Lcom/sun/tools/javac/code/Types$TypeRelation;

    .line 1314
    new-instance v0, Lcom/sun/tools/javac/code/Types$11;

    const-string v1, "lowerBound"

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/code/Types$11;-><init>(Lcom/sun/tools/javac/code/Types;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->lowerBoundMapping:Lcom/sun/tools/javac/code/Type$Mapping;

    .line 1359
    new-instance v0, Lcom/sun/tools/javac/code/Types$12;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$12;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->isReifiable:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    .line 1428
    new-instance v0, Lcom/sun/tools/javac/code/Types$13;

    const-string v1, "elemTypeFun"

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/code/Types$13;-><init>(Lcom/sun/tools/javac/code/Types;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->elemTypeFun:Lcom/sun/tools/javac/code/Type$Mapping;

    .line 1457
    new-instance v0, Lcom/sun/tools/javac/code/Types$14;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$14;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->asSuper:Lcom/sun/tools/javac/code/Types$SimpleVisitor;

    .line 1574
    new-instance v0, Lcom/sun/tools/javac/code/Types$15;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$15;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->memberType:Lcom/sun/tools/javac/code/Types$SimpleVisitor;

    .line 1684
    new-instance v0, Lcom/sun/tools/javac/code/Types$16;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$16;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->erasure:Lcom/sun/tools/javac/code/Types$SimpleVisitor;

    .line 1717
    new-instance v0, Lcom/sun/tools/javac/code/Types$17;

    const-string v1, "erasure"

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/code/Types$17;-><init>(Lcom/sun/tools/javac/code/Types;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->erasureFun:Lcom/sun/tools/javac/code/Type$Mapping;

    .line 1721
    new-instance v0, Lcom/sun/tools/javac/code/Types$18;

    const-string v1, "erasureRecursive"

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/code/Types$18;-><init>(Lcom/sun/tools/javac/code/Types;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->erasureRecFun:Lcom/sun/tools/javac/code/Type$Mapping;

    .line 1804
    new-instance v0, Lcom/sun/tools/javac/code/Types$19;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$19;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->supertype:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    .line 1874
    new-instance v0, Lcom/sun/tools/javac/code/Types$20;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$20;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->interfaces:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    .line 1931
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->isDerivedRawCache:Ljava/util/Map;

    .line 2018
    new-instance v0, Lcom/sun/tools/javac/code/Types$21;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$21;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->classBound:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    .line 2149
    new-instance v0, Lcom/sun/tools/javac/code/Types$ImplementationCache;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$ImplementationCache;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->implCache:Lcom/sun/tools/javac/code/Types$ImplementationCache;

    .line 2207
    new-instance v0, Lcom/sun/tools/javac/code/Types$MembersClosureCache;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$MembersClosureCache;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->membersCache:Lcom/sun/tools/javac/code/Types$MembersClosureCache;

    .line 2269
    new-instance v0, Lcom/sun/tools/javac/code/Types$HasSameArgs;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/code/Types$HasSameArgs;-><init>(Lcom/sun/tools/javac/code/Types;Z)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->hasSameArgs_strict:Lcom/sun/tools/javac/code/Types$TypeRelation;

    .line 2270
    new-instance v0, Lcom/sun/tools/javac/code/Types$HasSameArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/code/Types$HasSameArgs;-><init>(Lcom/sun/tools/javac/code/Types;Z)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->hasSameArgs_nonstrict:Lcom/sun/tools/javac/code/Types$TypeRelation;

    .line 2524
    new-instance v0, Lcom/sun/tools/javac/code/Types$23;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$23;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->methodWithParameters:Lcom/sun/tools/javac/code/Types$MapVisitor;

    .line 2540
    new-instance v0, Lcom/sun/tools/javac/code/Types$24;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$24;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->methodWithThrown:Lcom/sun/tools/javac/code/Types$MapVisitor;

    .line 2556
    new-instance v0, Lcom/sun/tools/javac/code/Types$25;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types$25;-><init>(Lcom/sun/tools/javac/code/Types;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->methodWithReturn:Lcom/sun/tools/javac/code/Types$MapVisitor;

    .line 2711
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->closureCache:Ljava/util/Map;

    .line 2814
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->mergeCache:Ljava/util/Set;

    .line 3006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->arraySuperType:Lcom/sun/tools/javac/code/Type;

    .line 148
    sget-object v0, Lcom/sun/tools/javac/code/Types;->typesKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 149
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 150
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    .line 151
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowBoxing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/tools/javac/code/Types;->allowBoxing:Z

    .line 153
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowCovariantReturns()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/tools/javac/code/Types;->allowCovariantReturns:Z

    .line 154
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowObjectToPrimitiveCast()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/code/Types;->allowObjectToPrimitiveCast:Z

    .line 155
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/ClassReader;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassReader;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    .line 156
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Check;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->chk:Lcom/sun/tools/javac/comp/Check;

    .line 157
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    const-string v1, "<captured wildcard>"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->capturedName:Lcom/sun/tools/javac/util/Name;

    .line 158
    invoke-static {p1}, Lcom/sun/tools/javac/util/JavacMessages;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JavacMessages;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 4

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->adaptSelf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/ListBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->containsTypeEquivalent(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3

    .line 124
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Types;->upperBounds(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type$WildcardType;
    .registers 4

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->makeExtendsWildcard(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type$WildcardType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type$WildcardType;
    .registers 4

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->makeSuperWildcard(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type$WildcardType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->rewriteQuantifiers(Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->giveWarning(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 5

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->sideCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 5

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->sideCastFinal(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type$Mapping;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->erasureRecFun:Lcom/sun/tools/javac/code/Type$Mapping;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type$Mapping;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->erasureFun:Lcom/sun/tools/javac/code/Type$Mapping;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 124
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types;->arraySuperType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method private adaptSelf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 3575
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->adapt(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/ListBuffer;)V
    :try_end_7
    .catch Lcom/sun/tools/javac/code/Types$AdaptFailure; {:try_start_0 .. :try_end_7} :catch_8

    .line 3580
    return-void

    .line 3576
    :catch_8
    move-exception v0

    .line 3579
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private appendTyparamString(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/StringBuilder;)V
    .registers 8

    const/16 v4, 0x26

    .line 2675
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2676
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 2677
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->java_lang_Object:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_18

    .line 2699
    :cond_17
    :goto_17
    return-void

    .line 2679
    :cond_18
    const-string v0, " extends "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2680
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 2681
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v1

    if-nez v1, :cond_29

    .line 2682
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 2683
    :cond_29
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5e

    .line 2684
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2685
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2686
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2687
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 2692
    :cond_5e
    const/4 v0, 0x1

    .line 2693
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2694
    if-nez v1, :cond_79

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2695
    :cond_79
    const/4 v1, 0x0

    .line 2696
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_68
.end method

.method private arraySuperType()Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 3009
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->arraySuperType:Lcom/sun/tools/javac/code/Type;

    if-nez v0, :cond_20

    .line 3010
    monitor-enter p0

    .line 3011
    :try_start_5
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->arraySuperType:Lcom/sun/tools/javac/code/Type;

    if-nez v0, :cond_1f

    .line 3013
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->serializableType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->cloneableType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->makeCompoundType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->arraySuperType:Lcom/sun/tools/javac/code/Type;

    .line 3017
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_23

    .line 3019
    :cond_20
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->arraySuperType:Lcom/sun/tools/javac/code/Type;

    return-object v0

    .line 3017
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private checkUnsafeVarargsConversion(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)V
    .registers 8

    const/16 v3, 0xb

    const/4 v0, 0x0

    .line 403
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v1, v3, :cond_d

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 420
    :cond_d
    :goto_d
    return-void

    .line 404
    :cond_e
    check-cast p1, Lcom/sun/tools/javac/code/Type$ArrayType;

    .line 406
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_36

    if-eq v1, v3, :cond_20

    .line 417
    :cond_18
    :goto_18
    if-eqz v0, :cond_d

    .line 418
    sget-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->VARARGS:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p3, v0}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    goto :goto_d

    .line 408
    :cond_20
    check-cast p2, Lcom/sun/tools/javac/code/Type$ArrayType;

    .line 409
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ArrayType;->isVarargs()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 410
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type$ArrayType;->isVarargs()Z

    move-result v1

    if-nez v1, :cond_18

    .line 411
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x1

    goto :goto_18

    .line 414
    :cond_36
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ArrayType;->isVarargs()Z

    move-result v0

    goto :goto_18
.end method

.method private closureMin(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2872
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v2

    .line 2873
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v3

    .line 2874
    :goto_8
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 2875
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2876
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2877
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2880
    :goto_1b
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v4

    .line 2881
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 2882
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 2883
    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_25

    .line 2879
    :cond_3b
    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_1b

    .line 2885
    :cond_3f
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto :goto_8

    .line 2887
    :cond_44
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ListBuffer;->appendList(Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method private compoundMin(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 2857
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 2864
    :goto_a
    return-object v0

    .line 2858
    :cond_b
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Types;->closureMin(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2859
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2860
    const/4 v0, 0x0

    goto :goto_a

    .line 2861
    :cond_17
    iget-object v1, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2862
    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    goto :goto_a

    .line 2864
    :cond_24
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->makeCompoundType(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_a
.end method

.method private containsTypeEquivalent(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 3442
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3444
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    .line 3442
    :goto_13
    return v0

    .line 3444
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private erasure(Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 1678
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_7

    .line 1681
    :goto_6
    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->erasure:Lcom/sun/tools/javac/code/Types$SimpleVisitor;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    move-object p1, v0

    goto :goto_6
.end method

.method private giveWarning(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 5

    .line 3422
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Types;->asSub(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3423
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3424
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->isUnbounded(Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3425
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_2a

    if-eqz v0, :cond_28

    .line 3426
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    .line 3423
    :goto_29
    return v0

    .line 3426
    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types$TypeRelation;)Z
    .registers 5

    .line 2232
    invoke-virtual {p3, p1, p2}, Lcom/sun/tools/javac/code/Types$TypeRelation;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static hashCode(Lcom/sun/tools/javac/code/Type;)I
    .registers 2

    .line 3068
    sget-object v0, Lcom/sun/tools/javac/code/Types;->hashCode:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;
    .registers 2

    .line 141
    sget-object v0, Lcom/sun/tools/javac/code/Types;->typesKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Types;

    .line 142
    if-nez v0, :cond_f

    .line 143
    new-instance v0, Lcom/sun/tools/javac/code/Types;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Types;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 144
    :cond_f
    return-object v0
.end method

.method private isSubtypeUncheckedInternal(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 7

    const/16 v2, 0xb

    const/4 v0, 0x1

    .line 372
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v1, v2, :cond_30

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v1, v2, :cond_30

    move-object v0, p1

    .line 373
    check-cast v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_23

    .line 374
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    .line 399
    :cond_22
    :goto_22
    return v0

    .line 376
    :cond_23
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_22

    .line 378
    :cond_30
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 381
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_45

    .line 382
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_22

    .line 384
    :cond_45
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_58

    .line 385
    check-cast p2, Lcom/sun/tools/javac/code/Type$UndetVar;

    .line 386
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_7e

    .line 387
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, p3}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_22

    .line 389
    :cond_58
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 390
    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v1}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 392
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 393
    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p3, v1}, Lcom/sun/tools/javac/util/Warner;->silentWarn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    goto :goto_22

    .line 395
    :cond_78
    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p3, v1}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    goto :goto_22

    .line 399
    :cond_7e
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private makeExtendsWildcard(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type$WildcardType;
    .registers 7

    .line 3698
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    if-ne p1, v0, :cond_16

    .line 3699
    new-instance v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type$TypeVar;)V

    .line 3704
    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type$TypeVar;)V

    goto :goto_15
.end method

.method private makeSuperWildcard(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/code/Type$WildcardType;
    .registers 7

    .line 3720
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_16

    .line 3721
    new-instance v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type$TypeVar;)V

    .line 3726
    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->SUPER:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type$TypeVar;)V

    goto :goto_15
.end method

.method private merge(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 13

    .line 2816
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 2817
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object v1, p2

    .line 2818
    check-cast v1, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 2819
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2820
    new-instance v6, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v6}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 2821
    iget-object v3, v0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    move-object v3, v2

    move-object v4, v1

    .line 2823
    :goto_1d
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 2824
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2825
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 2844
    :goto_42
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 2845
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 2846
    iget-object v5, v5, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v1

    move-object v4, v2

    goto :goto_1d

    .line 2826
    :cond_4b
    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    iget-object v2, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 2827
    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_42

    .line 2829
    :cond_5f
    new-instance v2, Lcom/sun/tools/javac/code/Types$TypePair;

    invoke-direct {v2, p0, p1, p2}, Lcom/sun/tools/javac/code/Types$TypePair;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    .line 2831
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->mergeCache:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 2832
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    iget-object v1, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 2833
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v8

    .line 2832
    new-instance v1, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {p0, v7, v8}, Lcom/sun/tools/javac/code/Types;->lub(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    sget-object v8, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v9, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v9, v9, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v7, v8, v9}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 2836
    iget-object v7, p0, Lcom/sun/tools/javac/code/Types;->mergeCache:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 2842
    :goto_91
    iget-object v1, v5, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Type;->withTypeVar(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_42

    .line 2838
    :cond_9d
    new-instance v1, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    sget-object v7, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v8, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v2, v7, v8}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v2, v1

    goto :goto_91

    .line 2848
    :cond_ae
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d4

    const/4 v1, 0x1

    :goto_c1
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 2849
    new-instance v1, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v1, v2, v3, v0}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v1

    .line 2848
    :cond_d4
    const/4 v1, 0x0

    goto :goto_c1
.end method

.method private relaxBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    const/16 v2, 0xe

    const/4 v1, 0x1

    .line 1345
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v2, :cond_14

    .line 1346
    :goto_7
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v2, :cond_10

    .line 1347
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_7

    .line 1348
    :cond_10
    invoke-direct {p0, p1, v1, v1}, Lcom/sun/tools/javac/code/Types;->rewriteQuantifiers(Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 1350
    :cond_14
    return-object p1
.end method

.method private rewriteQuantifiers(Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 3601
    new-instance v0, Lcom/sun/tools/javac/code/Types$Rewriter;

    invoke-direct {v0, p0, p2, p3}, Lcom/sun/tools/javac/code/Types$Rewriter;-><init>(Lcom/sun/tools/javac/code/Types;ZZ)V

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$Rewriter;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method private sideCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 15

    const-wide/16 v8, 0x200

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3362
    .line 3363
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v0, v4, v6

    if-nez v0, :cond_8d

    .line 3365
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v0, v4, v6

    if-eqz v0, :cond_53

    move v0, v1

    :goto_1d
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    move-object v3, p2

    move-object v4, p1

    move v5, v1

    .line 3370
    :goto_23
    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/sun/tools/javac/code/Types;->superClosure(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 3371
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    move v6, v0

    .line 3374
    :goto_30
    invoke-virtual {v7}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3375
    iget-object v0, v7, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v8

    .line 3376
    iget-object v0, v7, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 3377
    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sun/tools/javac/code/Types;->disjointTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 3388
    :goto_52
    return v2

    :cond_53
    move v0, v2

    .line 3365
    goto :goto_1d

    .line 3379
    :cond_55
    if-nez v6, :cond_5f

    if-eqz v5, :cond_64

    invoke-direct {p0, v0, v8}, Lcom/sun/tools/javac/code/Types;->giveWarning(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_6a

    :cond_5f
    move v0, v1

    .line 3380
    :goto_60
    iget-object v7, v7, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v6, v0

    .line 3381
    goto :goto_30

    .line 3379
    :cond_64
    invoke-direct {p0, v8, v0}, Lcom/sun/tools/javac/code/Types;->giveWarning(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_6a
    move v0, v2

    goto :goto_60

    .line 3382
    :cond_6c
    if-eqz v6, :cond_7c

    if-eqz v5, :cond_8b

    move-object v0, v3

    :goto_71
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 3383
    sget-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p3, v0}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    .line 3384
    :cond_7c
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types;->allowCovariantReturns:Z

    if-nez v0, :cond_89

    .line 3387
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p3}, Lcom/sun/tools/javac/util/Warner;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, Lcom/sun/tools/javac/comp/Check;->checkCompatibleAbstracts(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    :cond_89
    move v2, v1

    .line 3388
    goto :goto_52

    :cond_8b
    move-object v0, v4

    .line 3382
    goto :goto_71

    :cond_8d
    move-object v3, p1

    move-object v4, p2

    move v5, v2

    goto :goto_23
.end method

.method private sideCastFinal(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 16

    const-wide/16 v6, 0x200

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3397
    .line 3398
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v6

    cmp-long v0, v4, v10

    if-nez v0, :cond_78

    .line 3400
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v6

    cmp-long v0, v4, v10

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_1d
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    move-object v0, p2

    move-object v3, p1

    move v4, v1

    .line 3405
    :goto_23
    iget-object v5, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x10

    and-long/2addr v6, v8

    cmp-long v5, v6, v10

    if-eqz v5, :cond_3f

    move v5, v1

    :goto_31
    invoke-static {v5}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 3406
    iget-object v5, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0, v5}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 3407
    if-nez v5, :cond_41

    .line 3418
    :cond_3c
    :goto_3c
    return v2

    :cond_3d
    move v0, v2

    .line 3400
    goto :goto_1d

    :cond_3f
    move v5, v2

    .line 3405
    goto :goto_31

    .line 3408
    :cond_41
    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/sun/tools/javac/code/Types;->disjointTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 3411
    iget-boolean v2, p0, Lcom/sun/tools/javac/code/Types;->allowCovariantReturns:Z

    if-nez v2, :cond_5c

    .line 3414
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->chk:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {p3}, Lcom/sun/tools/javac/util/Warner;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-virtual {v2, v6, v0, v3}, Lcom/sun/tools/javac/comp/Check;->checkCompatibleAbstracts(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    .line 3415
    :cond_5c
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_6f

    if-eqz v4, :cond_71

    .line 3416
    invoke-direct {p0, v3, v5}, Lcom/sun/tools/javac/code/Types;->giveWarning(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3417
    :goto_6a
    sget-object v0, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p3, v0}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    :cond_6f
    move v2, v1

    .line 3418
    goto :goto_3c

    .line 3416
    :cond_71
    invoke-direct {p0, v5, v3}, Lcom/sun/tools/javac/code/Types;->giveWarning(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_6f

    goto :goto_6a

    :cond_78
    move-object v0, p1

    move-object v3, p2

    move v4, v2

    goto :goto_23
.end method

.method private superClosure(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 3430
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 3431
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_9
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3432
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3433
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/code/Types;->insert(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 3431
    :goto_25
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_9

    .line 3435
    :cond_29
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/code/Types;->superClosure(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/code/Types;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    goto :goto_25

    .line 3438
    :cond_36
    return-object v2
.end method

.method private typaramsString(Lcom/sun/tools/javac/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2664
    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2665
    const/4 v0, 0x1

    .line 2666
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2667
    if-nez v1, :cond_23

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2668
    :cond_23
    const/4 v1, 0x0

    .line 2669
    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-direct {p0, v0, v2}, Lcom/sun/tools/javac/code/Types;->appendTyparamString(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/StringBuilder;)V

    goto :goto_10

    .line 2671
    :cond_2a
    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2672
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private upperBounds(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 3348
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3354
    :cond_6
    :goto_6
    return-object p1

    .line 3349
    :cond_7
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3350
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/code/Types;->upperBounds(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 3351
    iget-object v2, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne v0, v2, :cond_1d

    iget-object v2, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eq v1, v2, :cond_6

    .line 3352
    :cond_1d
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto :goto_6
.end method


# virtual methods
.method public adapt(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Types$AdaptFailure;
        }
    .end annotation

    .line 3461
    new-instance v0, Lcom/sun/tools/javac/code/Types$Adapter;

    invoke-direct {v0, p0, p3, p4}, Lcom/sun/tools/javac/code/Types$Adapter;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/util/ListBuffer;Lcom/sun/tools/javac/util/ListBuffer;)V

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types$Adapter;->adapt(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    .line 3462
    return-void
.end method

.method public asEnclosingSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    const/16 v3, 0xa

    const/4 v0, 0x0

    .line 1538
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v1, v3, :cond_26

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xe

    if-eq v1, v2, :cond_16

    const/16 v2, 0x13

    if-eq v1, v2, :cond_14

    .line 1556
    :cond_13
    :goto_13
    return-object v0

    :cond_14
    move-object v0, p1

    .line 1554
    goto :goto_13

    .line 1552
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_13

    .line 1550
    :cond_1b
    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_13

    .line 1541
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1542
    if-eqz v1, :cond_2e

    move-object v0, v1

    goto :goto_13

    .line 1543
    :cond_2e
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1544
    iget v2, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_3c

    move-object p1, v1

    .line 1547
    :goto_37
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v1, v3, :cond_26

    goto :goto_13

    .line 1545
    :cond_3c
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    if-eqz v1, :cond_51

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object p1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_37

    .line 1546
    :cond_51
    sget-object p1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    goto :goto_37
.end method

.method public asOuterSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    const/16 v2, 0xa

    const/4 v0, 0x0

    .line 1511
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v1, v2, :cond_26

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xe

    if-eq v1, v2, :cond_16

    const/16 v2, 0x13

    if-eq v1, v2, :cond_14

    .line 1526
    :cond_13
    :goto_13
    return-object v0

    :cond_14
    move-object v0, p1

    .line 1524
    goto :goto_13

    .line 1522
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_13

    .line 1520
    :cond_1b
    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    goto :goto_13

    .line 1514
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1515
    if-eqz v1, :cond_2e

    move-object v0, v1

    goto :goto_13

    .line 1516
    :cond_2e
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 1517
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v1, v2, :cond_26

    goto :goto_13
.end method

.method public asSub(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->asSub:Lcom/sun/tools/javac/code/Types$SimpleVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 1454
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->asSuper:Lcom/sun/tools/javac/code/Types$SimpleVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 5

    .line 3190
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->boxedName:[Lcom/sun/tools/javac/util/Name;

    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    return-object v0
.end method

.method public boxedTypeOrType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 3197
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3198
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object p1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 3199
    :cond_c
    return-object p1
.end method

.method public capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 15

    const/4 v10, 0x1

    .line 3264
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    .line 3323
    :goto_7
    return-object p1

    .line 3266
    :cond_8
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_110

    .line 3267
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3268
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    if-eq v0, v1, :cond_110

    .line 3269
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3270
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    move-object v1, p1

    :goto_35
    move-object v0, v1

    .line 3273
    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 3274
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->isRaw()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->isParameterized()Z

    move-result v2

    if-nez v2, :cond_46

    :cond_44
    move-object p1, v0

    .line 3275
    goto :goto_7

    .line 3277
    :cond_46
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 3278
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 3279
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 3280
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/code/Types;->freshTypeVariables(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v9

    .line 3285
    const/4 v3, 0x0

    move-object v4, v5

    move-object v6, v2

    move v7, v3

    move-object v8, v9

    .line 3286
    :goto_61
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e4

    .line 3287
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e4

    .line 3288
    invoke-virtual {v8}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e4

    .line 3289
    iget-object v2, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    iget-object v3, v6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v2, v3, :cond_ac

    .line 3291
    iget-object v2, v6, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 3292
    iget-object v3, v4, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    .line 3293
    iget-object v3, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lcom/sun/tools/javac/code/Type$CapturedType;

    .line 3294
    if-nez v7, :cond_8f

    .line 3295
    iget-object v7, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v7, v7, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 3296
    :cond_8f
    sget-object v11, Lcom/sun/tools/javac/code/Types$27;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    iget-object v12, v2, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v12}, Lcom/sun/tools/javac/code/BoundKind;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v10, :cond_d7

    const/4 v12, 0x2

    if-eq v11, v12, :cond_c2

    const/4 v12, 0x3

    if-eq v11, v12, :cond_b5

    .line 3300
    :goto_a1
    iget-object v2, v3, Lcom/sun/tools/javac/code/Type$CapturedType;->bound:Lcom/sun/tools/javac/code/Type;

    iget-object v7, v3, Lcom/sun/tools/javac/code/Type$CapturedType;->lower:Lcom/sun/tools/javac/code/Type;

    if-ne v2, v7, :cond_10e

    .line 3311
    iget-object v2, v3, Lcom/sun/tools/javac/code/Type$CapturedType;->bound:Lcom/sun/tools/javac/code/Type;

    iput-object v2, v8, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    move v7, v10

    .line 3313
    :cond_ac
    :goto_ac
    iget-object v2, v4, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 3314
    iget-object v3, v6, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 3315
    iget-object v8, v8, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v4, v2

    move-object v6, v3

    goto :goto_61

    .line 3306
    :cond_b5
    invoke-virtual {p0, v7, v5, v9}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    iput-object v7, v3, Lcom/sun/tools/javac/code/Type$CapturedType;->bound:Lcom/sun/tools/javac/code/Type;

    .line 3307
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type$WildcardType;->getSuperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, v3, Lcom/sun/tools/javac/code/Type$CapturedType;->lower:Lcom/sun/tools/javac/code/Type;

    goto :goto_a1

    .line 3302
    :cond_c2
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type$WildcardType;->getExtendsBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v7, v5, v9}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lcom/sun/tools/javac/code/Types;->glb(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, v3, Lcom/sun/tools/javac/code/Type$CapturedType;->bound:Lcom/sun/tools/javac/code/Type;

    .line 3303
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    iput-object v2, v3, Lcom/sun/tools/javac/code/Type$CapturedType;->lower:Lcom/sun/tools/javac/code/Type;

    goto :goto_a1

    .line 3298
    :cond_d7
    invoke-virtual {p0, v7, v5, v9}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, v3, Lcom/sun/tools/javac/code/Type$CapturedType;->bound:Lcom/sun/tools/javac/code/Type;

    .line 3299
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    iput-object v2, v3, Lcom/sun/tools/javac/code/Type$CapturedType;->lower:Lcom/sun/tools/javac/code/Type;

    goto :goto_a1

    .line 3317
    :cond_e4
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f6

    invoke-virtual {v6}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f6

    invoke-virtual {v8}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_fc

    .line 3318
    :cond_f6
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto/16 :goto_7

    .line 3320
    :cond_fc
    if-eqz v7, :cond_10b

    .line 3321
    new-instance p1, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p1, v1, v9, v0}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto/16 :goto_7

    :cond_10b
    move-object p1, v1

    .line 3323
    goto/16 :goto_7

    :cond_10e
    move v7, v10

    goto :goto_ac

    :cond_110
    move-object v1, p1

    goto/16 :goto_35
.end method

.method public capture(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 3257
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 3258
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 3259
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 3260
    goto :goto_9

    .line 3261
    :cond_1f
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public classBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 2015
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->classBound:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2717
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->closureCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 2718
    if-nez v0, :cond_60

    .line 2719
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2720
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v1

    if-nez v1, :cond_51

    .line 2721
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3d

    .line 2722
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/tools/javac/code/Types;->insert(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2731
    :goto_22
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v2, v0

    :goto_27
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2732
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/code/Types;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 2731
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_27

    .line 2723
    :cond_3d
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_4c

    .line 2724
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_22

    .line 2726
    :cond_4c
    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_22

    .line 2729
    :cond_51
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_22

    .line 2733
    :cond_5a
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->closureCache:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2735
    :goto_5f
    return-object v2

    :cond_60
    move-object v2, v0

    goto :goto_5f
.end method

.method public containedBy(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 823
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_83

    const/16 v3, 0x15

    if-eq v0, v3, :cond_11

    .line 860
    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    :goto_10
    return v0

    .line 825
    :cond_11
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xf

    if-ne v0, v3, :cond_7e

    .line 826
    check-cast p1, Lcom/sun/tools/javac/code/Type$UndetVar;

    move-object v0, p2

    .line 827
    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 828
    sget-object v3, Lcom/sun/tools/javac/code/Types$27;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/BoundKind;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_57

    const/4 v3, 0x2

    if-eq v0, v3, :cond_57

    const/4 v3, 0x3

    if-eq v0, v3, :cond_30

    :goto_2e
    move v0, v2

    .line 839
    goto :goto_10

    .line 842
    :cond_30
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 845
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 846
    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_3a

    move v0, v1

    .line 847
    goto :goto_10

    .line 849
    :cond_4e
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->lobounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->lobounds:Lcom/sun/tools/javac/util/List;

    goto :goto_2e

    .line 831
    :cond_57
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 834
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->lobounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_61
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 835
    invoke-virtual {p0, v0, v3}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_61

    move v0, v1

    .line 836
    goto :goto_10

    .line 838
    :cond_75
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    goto :goto_2e

    .line 855
    :cond_7e
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    goto :goto_10

    :cond_83
    move v0, v2

    .line 858
    goto :goto_10
.end method

.method public containsType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 899
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->containsType:Lcom/sun/tools/javac/code/Types$TypeRelation;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types$TypeRelation;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method containsType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 865
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 866
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->containsType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 867
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 868
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 870
    :cond_1f
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public containsTypeEquivalent(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 988
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 989
    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->containsTypeEquivalent(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 990
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 991
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 993
    :cond_1f
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public covariantReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 5

    .line 3176
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types;->allowCovariantReturns:Z

    if-eqz v0, :cond_1e

    .line 3179
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3180
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3181
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    .line 3176
    :goto_1d
    return v0

    .line 3181
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public createErrorType(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 2574
    new-instance v0, Lcom/sun/tools/javac/code/Type$ErrorType;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/code/Type$ErrorType;-><init>(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)V

    return-object v0
.end method

.method public createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 2570
    new-instance v0, Lcom/sun/tools/javac/code/Type$ErrorType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p1, v1}, Lcom/sun/tools/javac/code/Type$ErrorType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v0
.end method

.method public createErrorType(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 2578
    new-instance v0, Lcom/sun/tools/javac/code/Type$ErrorType;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/tools/javac/code/Type$ErrorType;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;)V

    return-object v0
.end method

.method public createMethodTypeWithParameters(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 2521
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->methodWithParameters:Lcom/sun/tools/javac/code/Types$MapVisitor;

    invoke-virtual {p1, v0, p2}, Lcom/sun/tools/javac/code/Type;->accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public createMethodTypeWithReturn(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 2553
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->methodWithReturn:Lcom/sun/tools/javac/code/Types$MapVisitor;

    invoke-virtual {p1, v0, p2}, Lcom/sun/tools/javac/code/Type;->accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public createMethodTypeWithThrown(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 2537
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->methodWithThrown:Lcom/sun/tools/javac/code/Types$MapVisitor;

    invoke-virtual {p1, v0, p2}, Lcom/sun/tools/javac/code/Type;->accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public dimensions(Lcom/sun/tools/javac/code/Type;)I
    .registers 5

    .line 1436
    const/4 v0, 0x0

    .line 1437
    :goto_1
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_e

    .line 1438
    add-int/lit8 v0, v0, 0x1

    .line 1439
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_1

    .line 1441
    :cond_e
    return v0
.end method

.method public disjointType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 1238
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->disjointType:Lcom/sun/tools/javac/code/Types$TypeRelation;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types$TypeRelation;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public disjointTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 1220
    :goto_0
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_1d

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_1d

    .line 1221
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->disjointType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 1225
    :goto_17
    return v0

    .line 1222
    :cond_18
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 1223
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1225
    :cond_1d
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 1404
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_26

    const/16 v1, 0x13

    if-eq v0, v1, :cond_13

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x10

    if-eq v0, v1, :cond_14

    .line 1414
    const/4 p1, 0x0

    :cond_13
    :goto_13
    return-object p1

    .line 1410
    :cond_14
    check-cast p1, Lcom/sun/tools/javac/code/Type$ForAll;

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_13

    .line 1406
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_13

    .line 1408
    :cond_26
    check-cast p1, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object p1, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    goto :goto_13
.end method

.method public elemtypeOrType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1419
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1420
    if-eqz v0, :cond_7

    move-object p1, v0

    .line 1422
    :cond_7
    return-object p1
.end method

.method erasedSupertypes(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2995
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    .line 2996
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2997
    iget v3, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v4, 0xe

    if-ne v3, v4, :cond_22

    .line 2998
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_c

    .line 3000
    :cond_22
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_c

    .line 3003
    :cond_2a
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1674
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public erasure(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1726
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->erasureFun:Lcom/sun/tools/javac/code/Type$Mapping;

    invoke-static {p1, v0}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public erasureRecursive(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1730
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public erasureRecursive(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1734
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->erasureRecFun:Lcom/sun/tools/javac/code/Type$Mapping;

    invoke-static {p1, v0}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public freshTypeVariables(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 3327
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v6

    .line 3328
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Type;

    .line 3329
    iget v0, v5, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3c

    move-object v0, v5

    .line 3330
    check-cast v0, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$WildcardType;->getExtendsBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 3331
    if-nez v3, :cond_27

    .line 3332
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 3333
    :cond_27
    new-instance v0, Lcom/sun/tools/javac/code/Type$CapturedType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->capturedName:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    check-cast v5, Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Type$CapturedType;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$WildcardType;)V

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_8

    .line 3339
    :cond_3c
    invoke-virtual {v6, v5}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_8

    .line 3342
    :cond_40
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1997
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1998
    :cond_10
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2004
    :goto_16
    return-object v0

    .line 1999
    :cond_17
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    .line 2000
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_16

    .line 2004
    :cond_37
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    goto :goto_16
.end method

.method public getRetention(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/code/RetentionPolicy;
    .registers 5

    .line 3870
    sget-object v1, Lcom/sun/tools/javac/code/RetentionPolicy;->CLASS:Lcom/sun/tools/javac/code/RetentionPolicy;

    .line 3871
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->retentionType:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->attribute(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v0

    .line 3872
    if-eqz v0, :cond_41

    .line 3873
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->value:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Attribute$Compound;->member(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v0

    .line 3874
    if-eqz v0, :cond_41

    instance-of v2, v0, Lcom/sun/tools/javac/code/Attribute$Enum;

    if-eqz v2, :cond_41

    .line 3875
    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Enum;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 3876
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->SOURCE:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_2f

    sget-object v0, Lcom/sun/tools/javac/code/RetentionPolicy;->SOURCE:Lcom/sun/tools/javac/code/RetentionPolicy;

    .line 3882
    :goto_2e
    return-object v0

    .line 3877
    :cond_2f
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->CLASS:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_38

    sget-object v0, Lcom/sun/tools/javac/code/RetentionPolicy;->CLASS:Lcom/sun/tools/javac/code/RetentionPolicy;

    goto :goto_2e

    .line 3878
    :cond_38
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->RUNTIME:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v2, :cond_41

    sget-object v0, Lcom/sun/tools/javac/code/RetentionPolicy;->RUNTIME:Lcom/sun/tools/javac/code/RetentionPolicy;

    goto :goto_2e

    :cond_41
    move-object v0, v1

    goto :goto_2e
.end method

.method public glb(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 3035
    if-nez p2, :cond_3

    .line 3059
    :cond_2
    :goto_2
    return-object p1

    .line 3037
    :cond_3
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3038
    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object p1, v0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    goto :goto_2

    .line 3039
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3041
    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types;->isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object p1, p2

    .line 3042
    goto :goto_2

    .line 3044
    :cond_22
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->closure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 3045
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Types;->closureMin(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 3047
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3048
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object p1, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    goto :goto_2

    .line 3049
    :cond_3d
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3050
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    move-object p1, v0

    goto :goto_2

    .line 3052
    :cond_4b
    const/4 v1, 0x0

    .line 3053
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 3054
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isInterface()Z

    move-result v0

    if-nez v0, :cond_73

    .line 3055
    add-int/lit8 v0, v1, 0x1

    :goto_64
    move v1, v0

    .line 3054
    goto :goto_50

    .line 3056
    :cond_66
    const/4 v0, 0x1

    if-le v1, v0, :cond_6e

    .line 3057
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->createErrorType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_2

    .line 3059
    :cond_6e
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/code/Types;->makeCompoundType(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_2

    :cond_73
    move v0, v1

    goto :goto_64
.end method

.method public glb(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 3025
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 3026
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 3027
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 3031
    :cond_1d
    return-object v1

    .line 3029
    :cond_1e
    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/code/Types;->glb(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    move-object v1, v0

    .line 3030
    goto :goto_b
.end method

.method public hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 2224
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    return v0
.end method

.method public hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z
    .registers 5

    .line 2228
    if-eqz p3, :cond_9

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->hasSameArgs_strict:Lcom/sun/tools/javac/code/Types$TypeRelation;

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types$TypeRelation;)Z

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->hasSameArgs_nonstrict:Lcom/sun/tools/javac/code/Types$TypeRelation;

    goto :goto_4
.end method

.method hasSameBounds(Lcom/sun/tools/javac/code/Type$ForAll;Lcom/sun/tools/javac/code/Type$ForAll;)Z
    .registers 9

    .line 2489
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    .line 2490
    iget-object v2, p2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    .line 2491
    :goto_5
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2492
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2493
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v4, p2, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    iget-object v5, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v4, v5}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2492
    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2496
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 2497
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_5

    .line 2499
    :cond_35
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    :goto_42
    return v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public implementation(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;ZLcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Symbol$TypeSymbol;",
            "Z",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    .line 2152
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->implCache:Lcom/sun/tools/javac/code/Types$ImplementationCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/tools/javac/code/Types$ImplementationCache;->get(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;ZLcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2742
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v0, p0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->precedes(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2743
    :cond_14
    invoke-virtual {p1, p2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    .line 2747
    :cond_18
    :goto_18
    return-object p1

    .line 2744
    :cond_19
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1, p0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->precedes(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2745
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Types;->insert(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto :goto_18
.end method

.method public interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1871
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->interfaces:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    const/16 v2, 0xa

    .line 2772
    if-ne p1, p2, :cond_5

    .line 2791
    :goto_4
    return-object p1

    .line 2774
    :cond_5
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2775
    :cond_11
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto :goto_4

    .line 2776
    :cond_16
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v0, p0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->precedes(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2777
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Types;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto :goto_4

    .line 2778
    :cond_2f
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v0, p0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->precedes(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2779
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Types;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto :goto_4

    .line 2780
    :cond_48
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2781
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto :goto_4

    .line 2782
    :cond_65
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, v0, :cond_db

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v2, :cond_db

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v2, :cond_db

    .line 2784
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 2785
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->merge(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2786
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/code/Types;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto/16 :goto_4

    .line 2788
    :cond_b1
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 2789
    :cond_c5
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto/16 :goto_4

    .line 2791
    :cond_db
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    :try_start_df
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e5

    move-result-object p1

    goto/16 :goto_4

    :catchall_e5
    move-exception v0

    throw v0
.end method

.method public isArray(Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 1395
    :goto_0
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_b

    .line 1396
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    .line 1397
    :cond_b
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 1625
    sget-object v0, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    return v0
.end method

.method public isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 10

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1635
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_c

    move v0, v1

    .line 1664
    :goto_b
    return v0

    .line 1637
    :cond_c
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v0, v5, :cond_2e

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1638
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1639
    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v2, v1, :cond_5d

    if-eq v2, v3, :cond_54

    if-eq v2, v4, :cond_4a

    if-eq v2, v5, :cond_48

    const/16 v0, 0xa

    if-eq v2, v0, :cond_33

    .line 1664
    :cond_2e
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->isConvertible(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_b

    .line 1655
    :cond_33
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->unboxedType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v0, v1, :cond_3f

    if-eq v0, v3, :cond_3f

    if-ne v0, v4, :cond_2e

    .line 1659
    :cond_3f
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->unboxedType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/sun/tools/javac/code/Types;->isAssignable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_b

    :cond_48
    move v0, v1

    .line 1653
    goto :goto_b

    .line 1649
    :cond_4a
    const/16 v2, -0x8000

    if-gt v2, v0, :cond_2e

    const/16 v2, 0x7fff

    if-gt v0, v2, :cond_2e

    move v0, v1

    .line 1650
    goto :goto_b

    .line 1645
    :cond_54
    if-ltz v0, :cond_2e

    const v2, 0xffff

    if-gt v0, v2, :cond_2e

    move v0, v1

    .line 1646
    goto :goto_b

    .line 1641
    :cond_5d
    const/16 v2, -0x80

    if-gt v2, v0, :cond_2e

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2e

    move v0, v1

    .line 1642
    goto :goto_b
.end method

.method public isCaptureOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type$WildcardType;)Z
    .registers 5

    .line 975
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$TypeVar;->isCaptured()Z

    move-result v0

    if-nez v0, :cond_11

    .line 976
    :cond_f
    const/4 v0, 0x0

    .line 977
    :goto_10
    return v0

    :cond_11
    check-cast p1, Lcom/sun/tools/javac/code/Type$CapturedType;

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->wildcard:Lcom/sun/tools/javac/code/Type$WildcardType;

    invoke-virtual {p0, p2, v0}, Lcom/sun/tools/javac/code/Types;->isSameWildcard(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    goto :goto_10
.end method

.method public isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 999
    sget-object v0, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    return v0
.end method

.method public isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 7

    const/4 v0, 0x1

    .line 1008
    if-ne p1, p2, :cond_4

    .line 1026
    :cond_3
    :goto_3
    return v0

    .line 1011
    :cond_4
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-eq v1, v2, :cond_30

    .line 1012
    iget-boolean v1, p0, Lcom/sun/tools/javac/code/Types;->allowBoxing:Z

    if-eqz v1, :cond_2e

    .line 1013
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->isConvertible(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sun/tools/javac/code/Types;->allowObjectToPrimitiveCast:Z

    if-eqz v1, :cond_2e

    .line 1015
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1016
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, p1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2e
    const/4 v0, 0x0

    goto :goto_3

    .line 1017
    :cond_30
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq p3, v0, :cond_5c

    .line 1019
    :try_start_36
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    .line 1020
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->checkUnsafeVarargsConversion(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)V

    .line 1021
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->isCastable:Lcom/sun/tools/javac/code/Types$TypeRelation;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types$TypeRelation;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_54

    move-result v0

    .line 1023
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v1, p0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    goto :goto_3

    :catchall_54
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v1, p0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    .line 1024
    throw v0

    .line 1026
    :cond_5c
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->isCastable:Lcom/sun/tools/javac/code/Types$TypeRelation;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types$TypeRelation;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3
.end method

.method public isConvertible(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 349
    sget-object v0, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->isConvertible(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    return v0
.end method

.method public isConvertible(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 6

    .line 331
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_8

    .line 332
    const/4 v0, 0x1

    .line 339
    :goto_7
    return v0

    .line 333
    :cond_8
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    .line 334
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    .line 335
    if-ne v0, v1, :cond_17

    .line 336
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_7

    .line 338
    :cond_17
    iget-boolean v1, p0, Lcom/sun/tools/javac/code/Types;->allowBoxing:Z

    if-nez v1, :cond_1d

    const/4 v0, 0x0

    goto :goto_7

    .line 339
    :cond_1d
    if-eqz v0, :cond_2a

    .line 340
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    goto :goto_7

    .line 341
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->unboxedType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    goto :goto_7
.end method

.method public isDerivedRaw(Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 1934
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->isDerivedRawCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1935
    if-nez v0, :cond_17

    .line 1936
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->isDerivedRawInternal(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1937
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->isDerivedRawCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDerivedRaw(Lcom/sun/tools/javac/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 1952
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->isDerivedRaw(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 1954
    :cond_13
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    return v0
.end method

.method public isDerivedRawInternal(Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1943
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1945
    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1947
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/code/Types;->isDerivedRaw(Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1948
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/code/Types;->isDerivedRaw(Lcom/sun/tools/javac/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_28
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isReifiable(Lcom/sun/tools/javac/code/Type;)Z
    .registers 3

    .line 1356
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->isReifiable:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 670
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->isSameType:Lcom/sun/tools/javac/code/Types$TypeRelation;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types$TypeRelation;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSameTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 656
    :goto_0
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 658
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 659
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 660
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 662
    :cond_1b
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_25

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public isSameWildcard(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Z
    .registers 6

    const/4 v0, 0x0

    .line 981
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_8

    .line 984
    :cond_7
    :goto_7
    return v0

    .line 983
    :cond_8
    check-cast p2, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 984
    iget-object v1, p2, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    if-ne v1, v2, :cond_7

    iget-object v1, p2, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 2058
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    return v0
.end method

.method public isSubSignature(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z
    .registers 5

    .line 2062
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 427
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    return v0
.end method

.method public isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    if-ne p1, p2, :cond_6

    move v0, v1

    .line 451
    :goto_5
    return v0

    .line 436
    :cond_6
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_11

    .line 437
    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types;->isSuperType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    goto :goto_5

    .line 439
    :cond_11
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 440
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 441
    invoke-virtual {p0, p1, v0, p3}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v2

    .line 442
    goto :goto_5

    :cond_3b
    move v0, v1

    .line 444
    goto :goto_5

    .line 447
    :cond_3d
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 448
    if-eq p2, v0, :cond_4e

    .line 449
    if-eqz p3, :cond_49

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    :cond_49
    invoke-virtual {p0, p1, v0, v2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    goto :goto_5

    .line 451
    :cond_4e
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->isSubtype:Lcom/sun/tools/javac/code/Types$TypeRelation;

    if-eqz p3, :cond_56

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->capture(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    :cond_56
    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types$TypeRelation;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public final isSubtypeNoCapture(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Z)Z

    move-result v0

    return v0
.end method

.method public isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 358
    sget-object v0, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    return v0
.end method

.method public isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 5

    .line 364
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->isSubtypeUncheckedInternal(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    .line 365
    if-eqz v0, :cond_9

    .line 366
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/code/Types;->checkUnsafeVarargsConversion(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)V

    .line 368
    :cond_9
    return v0
.end method

.method public isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/Warner;",
            ")Z"
        }
    .end annotation

    .line 587
    :goto_0
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 588
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, p3}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 589
    const/4 v0, 0x0

    .line 590
    :goto_11
    return v0

    .line 587
    :cond_12
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 590
    :cond_15
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public isSubtypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 598
    :goto_0
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 600
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 601
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 602
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 604
    :cond_1b
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_25

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public isSubtypesUnchecked(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/Warner;",
            ")Z"
        }
    .end annotation

    .line 614
    :goto_0
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 616
    invoke-virtual {p0, v0, v1, p3}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 617
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 618
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 620
    :cond_1b
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_25

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public isSuperType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 7

    const/16 v3, 0x13

    const/4 v1, 0x1

    .line 630
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v0, v3, :cond_3a

    const/16 v2, 0x15

    if-eq v0, v2, :cond_10

    .line 645
    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    move-object v0, p1

    .line 634
    check-cast v0, Lcom/sun/tools/javac/code/Type$UndetVar;

    .line 635
    if-eq p1, p2, :cond_23

    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    if-eq v2, p2, :cond_23

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v2, v3, :cond_23

    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_25

    :cond_23
    move v0, v1

    .line 638
    goto :goto_f

    .line 639
    :cond_25
    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v2, :cond_30

    .line 640
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p2, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    goto :goto_f

    .line 641
    :cond_30
    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->lobounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, p2}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/tools/javac/code/Type$UndetVar;->lobounds:Lcom/sun/tools/javac/util/List;

    move v0, v1

    .line 642
    goto :goto_f

    :cond_3a
    move v0, v1

    .line 632
    goto :goto_f
.end method

.method public isUnbounded(Lcom/sun/tools/javac/code/Type;)Z
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->isUnbounded:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public lowerBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->lowerBound:Lcom/sun/tools/javac/code/Types$MapVisitor;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$MapVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public lowerBoundArgtypes(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1312
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->lowerBoundMapping:Lcom/sun/tools/javac/code/Type$Mapping;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lub(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 2895
    invoke-static {p1, p2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->lub(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public lub(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0xe

    .line 2903
    const/4 v0, 0x0

    .line 2906
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2907
    iget v3, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v3, v5, :cond_41

    if-eq v3, v6, :cond_3e

    if-eq v3, v4, :cond_2b

    .line 2925
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 2926
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    .line 2990
    :cond_2a
    :goto_2a
    return-object v0

    .line 2916
    :cond_2b
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2917
    iget v3, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v3, v4, :cond_2b

    .line 2918
    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v6, :cond_3b

    .line 2919
    or-int/lit8 v0, v1, 0x1

    :goto_39
    move v1, v0

    .line 2910
    goto :goto_c

    .line 2921
    :cond_3b
    or-int/lit8 v0, v1, 0x2

    .line 2923
    goto :goto_39

    .line 2912
    :cond_3e
    or-int/lit8 v0, v1, 0x1

    .line 2913
    goto :goto_39

    .line 2909
    :cond_41
    or-int/lit8 v0, v1, 0x2

    goto :goto_39

    .line 2929
    :cond_44
    if-eqz v1, :cond_15d

    const/4 v0, 0x1

    if-eq v1, v0, :cond_110

    const/4 v0, 0x2

    if-eq v1, v0, :cond_73

    .line 2984
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types;->arraySuperType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2985
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2986
    iget v3, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v3, v6, :cond_166

    .line 2987
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_6c
    move-object v1, v0

    .line 2988
    goto :goto_58

    .line 2990
    :cond_6e
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/code/Types;->lub(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_2a

    .line 2958
    :cond_73
    :goto_73
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v0, v5, :cond_86

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v0, v4, :cond_86

    .line 2959
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_73

    .line 2960
    :cond_86
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 2962
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->erasedSupertypes(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2963
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_9e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2964
    iget v3, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v3, v5, :cond_b2

    iget v3, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v3, v4, :cond_163

    .line 2965
    :cond_b2
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->erasedSupertypes(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/code/Types;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    :goto_ba
    move-object v1, v0

    .line 2966
    goto :goto_9e

    .line 2968
    :cond_bc
    invoke-direct {p0, v1}, Lcom/sun/tools/javac/code/Types;->closureMin(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2970
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2971
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_c9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2972
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v1, v3}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2973
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v1

    :goto_e8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_104

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 2974
    iget-object v6, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v1, v6}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/sun/tools/javac/code/Types;->intersect(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    move-object v3, v1

    .line 2975
    goto :goto_e8

    .line 2976
    :cond_104
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v2, v0

    .line 2977
    goto :goto_c9

    .line 2980
    :cond_10a
    invoke-direct {p0, v2}, Lcom/sun/tools/javac/code/Types;->compoundMin(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_2a

    .line 2935
    :cond_110
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->elemTypeFun:Lcom/sun/tools/javac/code/Type$Mapping;

    invoke-static {p1, v0}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2936
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2937
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 2941
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2942
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_136
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 2943
    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_136

    .line 2945
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types;->arraySuperType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_2a

    .line 2954
    :cond_14e
    new-instance v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/code/Types;->lub(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    goto/16 :goto_2a

    .line 2931
    :cond_15d
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    goto/16 :goto_2a

    :cond_163
    move-object v0, v1

    goto/16 :goto_ba

    :cond_166
    move-object v0, v1

    goto/16 :goto_6c

    :cond_169
    move v0, v1

    goto/16 :goto_39
.end method

.method public makeCompoundType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 1795
    invoke-static {p1, p2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->makeCompoundType(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public makeCompoundType(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 1782
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 1783
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1784
    :goto_1b
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Types;->makeCompoundType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0

    .line 1783
    :cond_20
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public makeCompoundType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 1748
    sget-boolean v0, Lcom/sun/tools/javac/code/Type;->moreInfo:Z

    if-eqz v0, :cond_58

    .line 1751
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 1752
    :goto_e
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/32 v2, 0x41001401

    iget-object v4, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1754
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_5d

    .line 1756
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    .line 1759
    :goto_2a
    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 1760
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 1761
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->allparams_field:Lcom/sun/tools/javac/util/List;

    .line 1762
    if-eqz p2, :cond_68

    .line 1763
    iput-object p2, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 1764
    iput-object p1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 1769
    :goto_41
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    if-nez v1, :cond_51

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 1770
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->isInterface()Z

    move-result v1

    if-nez v1, :cond_73

    :cond_51
    const/4 v1, 0x1

    :goto_52
    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 1769
    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/Assert;->check(ZLjava/lang/Object;)V

    .line 1772
    return-object v0

    .line 1752
    :cond_58
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    goto :goto_e

    .line 1758
    :cond_5d
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    goto :goto_2a

    .line 1766
    :cond_68
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 1767
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    goto :goto_41

    .line 1770
    :cond_73
    const/4 v1, 0x0

    goto :goto_52
.end method

.method public memberType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 1569
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 1570
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1569
    :goto_f
    return-object v0

    .line 1571
    :cond_10
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->memberType:Lcom/sun/tools/javac/code/Types$SimpleVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    goto :goto_f
.end method

.method public membersClosure(Lcom/sun/tools/javac/code/Type;Z)Lcom/sun/tools/javac/code/Scope$CompoundScope;
    .registers 5

    .line 2210
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->membersCache:Lcom/sun/tools/javac/code/Types$MembersClosureCache;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/code/Types$MembersClosureCache;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Scope$CompoundScope;

    return-object v0
.end method

.method public newInstances(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2508
    sget-object v0, Lcom/sun/tools/javac/code/Types;->newInstanceFun:Lcom/sun/tools/javac/code/Type$Mapping;

    invoke-static {p1, v0}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move-object v1, v2

    .line 2509
    :goto_7
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2510
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 2511
    iget-object v3, v0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v3, p1, v2}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 2509
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_7

    .line 2513
    :cond_1d
    return-object v2
.end method

.method public notSoftSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 6

    .line 1331
    if-ne p1, p2, :cond_4

    const/4 v0, 0x0

    .line 1341
    :goto_3
    return v0

    .line 1332
    :cond_4
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1b

    .line 1333
    check-cast p1, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 1334
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 1335
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/code/Types;->relaxBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    .line 1334
    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1338
    :cond_1b
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_25

    .line 1339
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p2

    .line 1341
    :cond_25
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/code/Types;->relaxBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public overrideEquivalent(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 2079
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2080
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    .line 2079
    :goto_1b
    return v0

    .line 2080
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public rank(Lcom/sun/tools/javac/code/Type;)I
    .registers 5

    const/4 v0, 0x0

    .line 2589
    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4c

    const/16 v2, 0xe

    if-eq v1, v2, :cond_16

    const/16 v2, 0x13

    if-ne v1, v2, :cond_10

    .line 2623
    :goto_f
    return v0

    .line 2625
    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2610
    :cond_16
    check-cast p1, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 2611
    iget v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->rank_field:I

    if-gez v0, :cond_49

    .line 2612
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->rank(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    .line 2613
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move v1, v0

    .line 2614
    :goto_29
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2616
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->rank(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    if-le v0, v1, :cond_95

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->rank(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    .line 2615
    :goto_41
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v1, v0

    goto :goto_29

    .line 2618
    :cond_45
    add-int/lit8 v0, v1, 0x1

    iput v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->rank_field:I

    .line 2620
    :cond_49
    iget v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->rank_field:I

    goto :goto_f

    .line 2591
    :cond_4c
    check-cast p1, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 2592
    iget v1, p1, Lcom/sun/tools/javac/code/Type$ClassType;->rank_field:I

    if-gez v1, :cond_60

    .line 2593
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 2594
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->java_lang_Object:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v2, :cond_63

    .line 2595
    iput v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->rank_field:I

    .line 2607
    :cond_60
    :goto_60
    iget v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->rank_field:I

    goto :goto_f

    .line 2597
    :cond_63
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->rank(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    .line 2598
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    move v1, v0

    .line 2599
    :goto_70
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2601
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->rank(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    if-le v0, v1, :cond_93

    .line 2602
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    :try_start_84
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types;->rank(Lcom/sun/tools/javac/code/Type;)I
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_91

    move-result v0

    .line 2600
    :goto_88
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v1, v0

    goto :goto_70

    .line 2604
    :cond_8c
    add-int/lit8 v0, v1, 0x1

    iput v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->rank_field:I

    goto :goto_60

    .line 2602
    :catchall_91
    move-exception v0

    throw v0

    :cond_93
    move v0, v1

    goto :goto_88

    :cond_95
    move v0, v1

    goto :goto_41
.end method

.method public resultSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 8

    .line 3131
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 3132
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 3133
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 3134
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v0}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3135
    invoke-virtual {p0, v2, v0, p3}, Lcom/sun/tools/javac/code/Types;->covariantReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    return v0
.end method

.method public returnTypeSubstitutable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z
    .registers 6

    .line 3143
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3144
    sget-object v0, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->resultSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    .line 3146
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 3147
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    .line 3146
    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Types;->covariantReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_c
.end method

.method public returnTypeSubstitutable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3154
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3168
    :cond_c
    :goto_c
    return v0

    .line 3156
    :cond_d
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p3}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1d
    move v0, v1

    .line 3157
    goto :goto_c

    .line 3159
    :cond_1f
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types;->hasSameArgs(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3160
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/sun/tools/javac/code/Types;->covariantReturnType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_c

    .line 3161
    :cond_2e
    iget-boolean v2, p0, Lcom/sun/tools/javac/code/Types;->allowCovariantReturns:Z

    if-nez v2, :cond_34

    move v0, v1

    .line 3162
    goto :goto_c

    .line 3163
    :cond_34
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v2, p3, p4}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 3165
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_4e

    move v0, v1

    .line 3166
    goto :goto_c

    .line 3167
    :cond_4e
    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p4, v1}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    goto :goto_c
.end method

.method public setBounds(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 1985
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 1986
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 1987
    :goto_17
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->setBounds(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    .line 1988
    const/4 v0, -0x1

    iput v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->rank_field:I

    .line 1989
    return-void

    .line 1986
    :cond_1e
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public setBounds(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    .line 1968
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1969
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 1972
    :goto_e
    const/4 v0, -0x1

    iput v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->rank_field:I

    .line 1973
    return-void

    .line 1971
    :cond_12
    invoke-virtual {p0, p2, p3}, Lcom/sun/tools/javac/code/Types;->makeCompoundType(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    goto :goto_e
.end method

.method public subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type;"
        }
    .end annotation

    .line 2288
    new-instance v0, Lcom/sun/tools/javac/code/Types$Subst;

    invoke-direct {v0, p0, p2, p3}, Lcom/sun/tools/javac/code/Types$Subst;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public subst(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2278
    new-instance v0, Lcom/sun/tools/javac/code/Types$Subst;

    invoke-direct {v0, p0, p2, p3}, Lcom/sun/tools/javac/code/Types$Subst;-><init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public substBound(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type$TypeVar;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/code/Type$TypeVar;"
        }
    .end annotation

    .line 2470
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2471
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    if-ne v1, v0, :cond_b

    .line 2479
    :goto_a
    return-object p1

    .line 2475
    :cond_b
    new-instance v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v4, v4, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, v2, v3, v4}, Lcom/sun/tools/javac/code/Type$TypeVar;-><init>(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    .line 2478
    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    move-object p1, v0

    .line 2479
    goto :goto_a
.end method

.method public substBounds(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2432
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2466
    :cond_6
    :goto_6
    return-object p1

    .line 2434
    :cond_7
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v2

    .line 2435
    const/4 v0, 0x0

    .line 2437
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2438
    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 2439
    iget-object v4, v0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v4, p2, p3}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 2440
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    if-eq v4, v0, :cond_9e

    .line 2441
    const/4 v0, 0x1

    .line 2442
    :goto_2a
    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    move v1, v0

    .line 2443
    goto :goto_11

    .line 2444
    :cond_2f
    if-eqz v1, :cond_6

    .line 2446
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v3

    .line 2448
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 2449
    new-instance v4, Lcom/sun/tools/javac/code/Type$TypeVar;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v6, v6, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v4, v0, v5, v6}, Lcom/sun/tools/javac/code/Type$TypeVar;-><init>(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)V

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_39

    .line 2453
    :cond_55
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2454
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    move-object v1, v0

    .line 2456
    :goto_5e
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    .line 2457
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1, v4}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 2456
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_5e

    .line 2459
    :cond_72
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2461
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_7f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    move-object v1, v0

    .line 2462
    check-cast v1, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 2463
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iput-object v0, v1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    .line 2464
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    .line 2465
    goto :goto_7f

    .line 2466
    :cond_98
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto/16 :goto_6

    :cond_9e
    move v0, v1

    goto :goto_2a
.end method

.method public supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1801
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->supertype:Lcom/sun/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public toString(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 2643
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Printer;->createStandardPrinter(Lcom/sun/tools/javac/api/Messages;)Lcom/sun/tools/javac/code/Printer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2655
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_20

    .line 2656
    check-cast p1, Lcom/sun/tools/javac/code/Type$ForAll;

    .line 2657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/code/Types;->typaramsString(Lcom/sun/tools/javac/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2659
    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method public toString(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 2635
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->messages:Lcom/sun/tools/javac/util/JavacMessages;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Printer;->createStandardPrinter(Lcom/sun/tools/javac/api/Messages;)Lcom/sun/tools/javac/code/Printer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unboxedType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 3206
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types;->allowBoxing:Z

    if-eqz v0, :cond_2a

    .line 3207
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->boxedName:[Lcom/sun/tools/javac/util/Name;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 3208
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->boxedName:[Lcom/sun/tools/javac/util/Name;

    aget-object v1, v1, v0

    .line 3209
    if-eqz v1, :cond_27

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    .line 3210
    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 3211
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->typeOfTag:[Lcom/sun/tools/javac/code/Type;

    aget-object v0, v1, v0

    .line 3214
    :goto_26
    return-object v0

    .line 3207
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3214
    :cond_2a
    sget-object v0, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    goto :goto_26
.end method

.method public union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2755
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2764
    :goto_6
    return-object p2

    .line 2757
    :cond_7
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object p2, p1

    .line 2758
    goto :goto_6

    .line 2759
    :cond_f
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v0, p0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->precedes(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2760
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Types;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p2

    goto :goto_6

    .line 2761
    :cond_2e
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v0, p0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->precedes(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2762
    iget-object v0, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/code/Types;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p2

    goto :goto_6

    .line 2764
    :cond_4d
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types;->union(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p2

    goto :goto_6
.end method

.method public upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types;->upperBound:Lcom/sun/tools/javac/code/Types$MapVisitor;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$MapVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/codehaus/groovy/reflection/CachedClass;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/reflection/CachedClass$CachedMethodComparatorByName;,
        Lorg/codehaus/groovy/reflection/CachedClass$CachedMethodComparatorWithString;
    }
.end annotation


# static fields
.field static final DW:[Lgroovy/lang/MetaMethod;

.field public static final FH:[Lorg/codehaus/groovy/reflection/CachedClass;

.field private static j6:Lorg/codehaus/groovy/util/ReferenceBundle;


# instance fields
.field private final EQ:Lorg/codehaus/groovy/util/LazyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/LazyReference",
            "<",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/codehaus/groovy/reflection/ClassInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/lang/Class;

.field public J0:[Lorg/codehaus/groovy/reflection/CachedMethod;

.field private final J8:Lorg/codehaus/groovy/util/LazyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/LazyReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/codehaus/groovy/reflection/CachedClass;",
            ">;>;"
        }
    .end annotation
.end field

.field public final Mr:Z

.field public final QX:Z

.field public final U2:Z

.field private VH:Lorg/codehaus/groovy/util/LazyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/LazyReference",
            "<[",
            "Lorg/codehaus/groovy/reflection/CachedConstructor;",
            ">;"
        }
    .end annotation
.end field

.field private final Ws:Lorg/codehaus/groovy/util/LazyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/LazyReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/codehaus/groovy/reflection/CachedClass;",
            ">;>;"
        }
    .end annotation
.end field

.field public final XL:Z

.field private final Zo:Lorg/codehaus/groovy/util/LazyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/LazyReference",
            "<[",
            "Lorg/codehaus/groovy/reflection/CachedField;",
            ">;"
        }
    .end annotation
.end field

.field public final aM:I

.field private gn:Lorg/codehaus/groovy/util/LazyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/LazyReference",
            "<[",
            "Lorg/codehaus/groovy/reflection/CachedMethod;",
            ">;"
        }
    .end annotation
.end field

.field j3:I

.field private final tp:Lorg/codehaus/groovy/util/LazyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/LazyReference",
            "<",
            "Lorg/codehaus/groovy/runtime/callsite/CallSiteClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Lorg/codehaus/groovy/util/LazyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/LazyReference",
            "<",
            "Lorg/codehaus/groovy/reflection/CachedClass;",
            ">;"
        }
    .end annotation
.end field

.field public v5:Lorg/codehaus/groovy/reflection/ClassInfo;

.field we:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lorg/codehaus/groovy/util/ReferenceBundle;->DW()Lorg/codehaus/groovy/util/ReferenceBundle;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/reflection/CachedClass;->j6:Lorg/codehaus/groovy/util/ReferenceBundle;

    new-array v0, v1, [Lgroovy/lang/MetaMethod;

    sput-object v0, Lorg/codehaus/groovy/reflection/CachedClass;->DW:[Lgroovy/lang/MetaMethod;

    new-array v0, v1, [Lorg/codehaus/groovy/reflection/CachedClass;

    sput-object v0, Lorg/codehaus/groovy/reflection/CachedClass;->FH:[Lorg/codehaus/groovy/reflection/CachedClass;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/codehaus/groovy/reflection/ClassInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass$1;

    sget-object v1, Lorg/codehaus/groovy/reflection/CachedClass;->j6:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, p0, v1}, Lorg/codehaus/groovy/reflection/CachedClass$1;-><init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->Zo:Lorg/codehaus/groovy/util/LazyReference;

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass$2;

    sget-object v1, Lorg/codehaus/groovy/reflection/CachedClass;->j6:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, p0, v1}, Lorg/codehaus/groovy/reflection/CachedClass$2;-><init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->VH:Lorg/codehaus/groovy/util/LazyReference;

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass$3;

    sget-object v1, Lorg/codehaus/groovy/reflection/CachedClass;->j6:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, p0, v1}, Lorg/codehaus/groovy/reflection/CachedClass$3;-><init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->gn:Lorg/codehaus/groovy/util/LazyReference;

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass$4;

    sget-object v1, Lorg/codehaus/groovy/reflection/CachedClass;->j6:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, p0, v1}, Lorg/codehaus/groovy/reflection/CachedClass$4;-><init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->u7:Lorg/codehaus/groovy/util/LazyReference;

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass$5;

    sget-object v1, Lorg/codehaus/groovy/reflection/CachedClass;->j6:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, p0, v1}, Lorg/codehaus/groovy/reflection/CachedClass$5;-><init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->tp:Lorg/codehaus/groovy/util/LazyReference;

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass$6;

    sget-object v1, Lorg/codehaus/groovy/reflection/CachedClass;->j6:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, p0, v1}, Lorg/codehaus/groovy/reflection/CachedClass$6;-><init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->EQ:Lorg/codehaus/groovy/util/LazyReference;

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass$7;

    sget-object v1, Lorg/codehaus/groovy/reflection/CachedClass;->j6:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, p0, v1}, Lorg/codehaus/groovy/reflection/CachedClass$7;-><init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->J8:Lorg/codehaus/groovy/util/LazyReference;

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass$8;

    sget-object v1, Lorg/codehaus/groovy/reflection/CachedClass;->j6:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, p0, v1}, Lorg/codehaus/groovy/reflection/CachedClass$8;-><init>(Lorg/codehaus/groovy/reflection/CachedClass;Lorg/codehaus/groovy/util/ReferenceBundle;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->Ws:Lorg/codehaus/groovy/util/LazyReference;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->j3:I

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedClass;->Hw:Ljava/lang/Class;

    iput-object p2, p0, Lorg/codehaus/groovy/reflection/CachedClass;->v5:Lorg/codehaus/groovy/reflection/ClassInfo;

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->QX:Z

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->XL:Z

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->aM:I

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->Mr:Z

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->U2:Z

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedClass;->Hw()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/reflection/CachedClass;

    iget-object v0, v0, Lorg/codehaus/groovy/reflection/CachedClass;->Hw:Ljava/lang/Class;

    invoke-static {p1, v0}, Lorg/codehaus/groovy/reflection/ReflectionCache;->j6(Ljava/lang/Class;Ljava/lang/Class;)Z

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->Hw:Ljava/lang/Class;

    invoke-static {v0, p1}, Lorg/codehaus/groovy/reflection/ReflectionCache;->DW(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedClass;->j6()Lorg/codehaus/groovy/reflection/CachedClass;

    move-result-object p0

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic j6(Lorg/codehaus/groovy/reflection/CachedClass;)Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->Hw:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public DW()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/codehaus/groovy/reflection/CachedClass;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->J8:Lorg/codehaus/groovy/util/LazyReference;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/LazyReference;->FH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public FH()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/groovy/reflection/ClassInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->EQ:Lorg/codehaus/groovy/util/LazyReference;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/LazyReference;->FH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public Hw()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/codehaus/groovy/reflection/CachedClass;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->Ws:Lorg/codehaus/groovy/util/LazyReference;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/LazyReference;->FH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final VH()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->Hw:Ljava/lang/Class;

    return-object v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/CachedClass;->VH()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->we:I

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->we:I

    iget v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->we:I

    if-nez v0, :cond_0

    const v0, -0x35014142    # -8347487.0f

    iput v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->we:I

    :cond_0
    iget v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->we:I

    return v0
.end method

.method public j6()Lorg/codehaus/groovy/reflection/CachedClass;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->u7:Lorg/codehaus/groovy/util/LazyReference;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/LazyReference;->FH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/reflection/CachedClass;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->Hw:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()[Lorg/codehaus/groovy/reflection/CachedMethod;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass;->gn:Lorg/codehaus/groovy/util/LazyReference;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/LazyReference;->FH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/groovy/reflection/CachedMethod;

    return-object v0
.end method

.class final Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/reflection/ClassInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Class;",
        "Lorg/codehaus/groovy/reflection/ClassInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final j6:Lorg/codehaus/groovy/reflection/ClassInfo;


# instance fields
.field private final DW:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private FH:I

.field private final Hw:[Lorg/codehaus/groovy/reflection/ClassInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/codehaus/groovy/reflection/ClassInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lorg/codehaus/groovy/reflection/ClassInfo;-><init>(Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;Ljava/lang/Class;I)V

    sput-object v0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->j6:Lorg/codehaus/groovy/reflection/ClassInfo;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/ref/PhantomReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->DW:Ljava/lang/ref/PhantomReference;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/codehaus/groovy/reflection/ClassInfo;

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->Hw:[Lorg/codehaus/groovy/reflection/ClassInfo;

    const/4 v0, 0x0

    :goto_15
    iget-object v1, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->Hw:[Lorg/codehaus/groovy/reflection/ClassInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_21

    sget-object v2, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->j6:Lorg/codehaus/groovy/reflection/ClassInfo;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_21
    return-void
.end method

.method synthetic constructor <init>(Lorg/codehaus/groovy/reflection/ClassInfo$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;-><init>()V

    return-void
.end method

.method private DW(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;
    .registers 7

    iget v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->FH:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    iget-object v3, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->Hw:[Lorg/codehaus/groovy/reflection/ClassInfo;

    array-length v4, v3

    if-ge v2, v4, :cond_26

    if-gez v0, :cond_f

    add-int/lit8 v0, v0, 0x5

    :cond_f
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_21

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->FH:I

    const/4 p1, 0x5

    if-ne v0, p1, :cond_20

    iput v1, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->FH:I

    :cond_20
    return-object v3

    :cond_21
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic j6(Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;)Ljava/lang/ref/PhantomReference;
    .registers 1

    iget-object p0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->DW:Ljava/lang/ref/PhantomReference;

    return-object p0
.end method

.method private j6(Lorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/ClassInfo;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->Hw:[Lorg/codehaus/groovy/reflection/ClassInfo;

    iget v1, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->FH:I

    aput-object p1, v0, v1

    const/4 v0, 0x5

    if-ne v2, v0, :cond_10

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->FH:I

    :cond_10
    return-object p1
.end method


# virtual methods
.method public j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;
    .registers 4

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->DW(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/reflection/ClassInfo;

    if-eqz v0, :cond_13

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->j6(Lorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/ClassInfo;

    return-object v0

    :cond_13
    invoke-static {}, Lorg/codehaus/groovy/reflection/ClassInfo;->v5()Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/groovy/util/AbstractConcurrentMap;->j6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object p1

    check-cast p1, Lorg/codehaus/groovy/reflection/ClassInfo;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->j6(Lorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/ClassInfo;

    return-object p1
.end method

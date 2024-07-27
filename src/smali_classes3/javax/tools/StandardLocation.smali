.class public final enum Ljavax/tools/StandardLocation;
.super Ljava/lang/Enum;
.source "StandardLocation.java"

# interfaces
.implements Ljavax/tools/JavaFileManager$Location;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/tools/StandardLocation;",
        ">;",
        "Ljavax/tools/JavaFileManager$Location;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Ljavax/tools/StandardLocation;

.field public static final enum ANNOTATION_PROCESSOR_PATH:Ljavax/tools/StandardLocation;

.field public static final enum CLASS_OUTPUT:Ljavax/tools/StandardLocation;

.field public static final enum CLASS_PATH:Ljavax/tools/StandardLocation;

.field public static final enum PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

.field public static final enum SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

.field public static final enum SOURCE_PATH:Ljavax/tools/StandardLocation;

.field private static locations:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/tools/JavaFileManager$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Ljavax/tools/StandardLocation;

    const-string v1, "CLASS_OUTPUT"

    invoke-direct {v0, v1, v3}, Ljavax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    .line 48
    new-instance v0, Ljavax/tools/StandardLocation;

    const-string v1, "SOURCE_OUTPUT"

    invoke-direct {v0, v1, v4}, Ljavax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/StandardLocation;->SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

    .line 53
    new-instance v0, Ljavax/tools/StandardLocation;

    const-string v1, "CLASS_PATH"

    invoke-direct {v0, v1, v5}, Ljavax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    .line 58
    new-instance v0, Ljavax/tools/StandardLocation;

    const-string v1, "SOURCE_PATH"

    invoke-direct {v0, v1, v6}, Ljavax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    .line 63
    new-instance v0, Ljavax/tools/StandardLocation;

    const-string v1, "ANNOTATION_PROCESSOR_PATH"

    invoke-direct {v0, v1, v7}, Ljavax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Ljavax/tools/StandardLocation;

    .line 69
    new-instance v0, Ljavax/tools/StandardLocation;

    const-string v1, "PLATFORM_CLASS_PATH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Ljavax/tools/StandardLocation;

    .line 38
    const/4 v1, 0x6

    new-array v1, v1, [Ljavax/tools/StandardLocation;

    sget-object v2, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    aput-object v2, v1, v3

    sget-object v2, Ljavax/tools/StandardLocation;->SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

    aput-object v2, v1, v4

    sget-object v2, Ljavax/tools/StandardLocation;->CLASS_PATH:Ljavax/tools/StandardLocation;

    aput-object v2, v1, v5

    sget-object v2, Ljavax/tools/StandardLocation;->SOURCE_PATH:Ljavax/tools/StandardLocation;

    aput-object v2, v1, v6

    sget-object v2, Ljavax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Ljavax/tools/StandardLocation;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Ljavax/tools/StandardLocation;->$VALUES:[Ljavax/tools/StandardLocation;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljavax/tools/StandardLocation;->locations:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static locationFor(Ljava/lang/String;)Ljavax/tools/JavaFileManager$Location;
    .registers 7

    .line 82
    sget-object v0, Ljavax/tools/StandardLocation;->locations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Ljavax/tools/StandardLocation;->values()[Ljavax/tools/StandardLocation;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 85
    sget-object v4, Ljavax/tools/StandardLocation;->locations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljavax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Ljavax/tools/StandardLocation;->locations:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/tools/StandardLocation$1;

    invoke-direct {v2, p0}, Ljavax/tools/StandardLocation$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Ljavax/tools/StandardLocation;->locations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager$Location;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/tools/StandardLocation;
    .registers 2

    .line 38
    const-class v0, Ljavax/tools/StandardLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/tools/StandardLocation;

    return-object v0
.end method

.method public static values()[Ljavax/tools/StandardLocation;
    .registers 1

    .line 38
    sget-object v0, Ljavax/tools/StandardLocation;->$VALUES:[Ljavax/tools/StandardLocation;

    invoke-virtual {v0}, [Ljavax/tools/StandardLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/tools/StandardLocation;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 97
    invoke-virtual {p0}, Ljavax/tools/StandardLocation;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOutputLocation()Z
    .registers 2

    .line 100
    sget-object v0, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljavax/tools/StandardLocation;->SOURCE_OUTPUT:Ljavax/tools/StandardLocation;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

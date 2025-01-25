.class abstract Lsun/nio/cs/ThreadLocalCoders$Cache;
.super Ljava/lang/Object;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/cs/ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Cache"
.end annotation


# instance fields
.field private cache:Ljava/lang/ThreadLocal;

.field private final size:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    .line 47
    iput p1, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    .line 48
    return-void
.end method

.method private moveToFront([Ljava/lang/Object;I)V
    .registers 5

    .line 53
    aget-object v0, p1, p2

    .line 54
    :goto_2
    if-lez p2, :cond_d

    .line 55
    add-int/lit8 v1, p2, -0x1

    aget-object v1, p1, v1

    aput-object v1, p1, p2

    .line 54
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 56
    :cond_d
    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 57
    return-void
.end method


# virtual methods
.method abstract create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method forName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 62
    iget-object v0, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 63
    if-nez v0, :cond_24

    .line 64
    iget v0, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lsun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 80
    :cond_13
    invoke-virtual {p0, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object v1, v0, v2

    .line 82
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v2}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    move-object v0, v1

    .line 83
    :goto_23
    return-object v0

    .line 67
    :cond_24
    const/4 v1, 0x0

    :goto_25
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 68
    aget-object v2, v0, v1

    .line 69
    if-nez v2, :cond_2f

    .line 67
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 71
    :cond_2f
    invoke-virtual {p0, v2, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 72
    if-lez v1, :cond_3a

    .line 73
    invoke-direct {p0, v0, v1}, Lsun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    :cond_3a
    move-object v0, v2

    .line 74
    goto :goto_23
.end method

.method abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

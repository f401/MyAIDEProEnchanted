.class abstract Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders;
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

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    .line 227
    iput p1, p0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->size:I

    .line 228
    return-void
.end method

.method private moveToFront([Ljava/lang/Object;I)V
    .registers 5

    .line 233
    aget-object v0, p1, p2

    .line 234
    :goto_2
    if-lez p2, :cond_d

    .line 235
    add-int/lit8 v1, p2, -0x1

    aget-object v1, p1, v1

    aput-object v1, p1, p2

    .line 234
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 236
    :cond_d
    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 237
    return-void
.end method


# virtual methods
.method abstract create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method forName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 242
    iget-object v0, p0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 243
    if-nez v0, :cond_24

    .line 244
    iget v0, p0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 260
    :cond_13
    invoke-virtual {p0, p1}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 261
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object v1, v0, v2

    .line 262
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    move-object v0, v1

    .line 263
    :goto_23
    return-object v0

    .line 247
    :cond_24
    const/4 v1, 0x0

    :goto_25
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 248
    aget-object v2, v0, v1

    .line 249
    if-nez v2, :cond_2f

    .line 247
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 251
    :cond_2f
    invoke-virtual {p0, v2, p1}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 252
    if-lez v1, :cond_3a

    .line 253
    invoke-direct {p0, v0, v1}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    :cond_3a
    move-object v0, v2

    .line 254
    goto :goto_23
.end method

.method abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

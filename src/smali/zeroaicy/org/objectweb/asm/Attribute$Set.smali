.class final Lzeroaicy/org/objectweb/asm/Attribute$Set;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzeroaicy/org/objectweb/asm/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Set"
.end annotation


# static fields
.field private static final SIZE_INCREMENT:I = 0x6


# instance fields
.field private data:[Lzeroaicy/org/objectweb/asm/Attribute;

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/Attribute;

    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    return-void
.end method

.method private add(Lzeroaicy/org/objectweb/asm/Attribute;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Attribute;",
            ")V"
        }
    .end annotation

    .line 384
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    array-length v2, v1

    if-lt v0, v2, :cond_12

    .line 385
    array-length v2, v1

    add-int/lit8 v2, v2, 0x6

    new-array v2, v2, [Lzeroaicy/org/objectweb/asm/Attribute;

    .line 386
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iput-object v2, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    .line 389
    :cond_12
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    aput-object p1, v0, v1

    return-void
.end method

.method private contains(Lzeroaicy/org/objectweb/asm/Attribute;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 375
    :goto_2
    iget v2, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    if-lt v1, v2, :cond_7

    return v0

    .line 376
    :cond_7
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    iget-object v3, p1, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method addAttributes(Lzeroaicy/org/objectweb/asm/Attribute;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/Attribute;",
            ")V"
        }
    .end annotation

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 361
    :cond_3
    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->contains(Lzeroaicy/org/objectweb/asm/Attribute;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 362
    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->add(Lzeroaicy/org/objectweb/asm/Attribute;)V

    .line 364
    :cond_c
    iget-object p1, p1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    goto :goto_0
.end method

.method toArray()[Lzeroaicy/org/objectweb/asm/Attribute;
    .registers 5

    .line 369
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    new-array v1, v0, [Lzeroaicy/org/objectweb/asm/Attribute;

    .line 370
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

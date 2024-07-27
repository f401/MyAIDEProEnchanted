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

    const/4 v3, 0x0

    .line 384
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/Attribute;

    .line 386
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iput-object v0, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    .line 389
    :cond_0
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    aput-object p1, v0, v1

    return-void
.end method

.method private contains(Lzeroaicy/org/objectweb/asm/Attribute;)Z
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    .line 375
    :goto_0
    iget v2, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    if-lt v0, v2, :cond_0

    .line 380
    :goto_1
    return v1

    .line 376
    :cond_0
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    aget-object v2, v2, v0

    iget-object v2, v2, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    iget-object v3, p1, Lzeroaicy/org/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    const/4 v1, 0x1

    goto :goto_1

    .line 375
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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

    .line 360
    :goto_0
    if-nez p1, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->contains(Lzeroaicy/org/objectweb/asm/Attribute;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    invoke-direct {p0, p1}, Lzeroaicy/org/objectweb/asm/Attribute$Set;->add(Lzeroaicy/org/objectweb/asm/Attribute;)V

    .line 364
    :cond_1
    iget-object p1, p1, Lzeroaicy/org/objectweb/asm/Attribute;->nextAttribute:Lzeroaicy/org/objectweb/asm/Attribute;

    goto :goto_0
.end method

.method toArray()[Lzeroaicy/org/objectweb/asm/Attribute;
    .registers 5

    const/4 v3, 0x0

    .line 369
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/Attribute;

    .line 370
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->data:[Lzeroaicy/org/objectweb/asm/Attribute;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Attribute$Set;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    return-object v0
.end method

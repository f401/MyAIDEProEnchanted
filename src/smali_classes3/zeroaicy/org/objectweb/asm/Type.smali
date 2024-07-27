.class public final Lzeroaicy/org/objectweb/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lzeroaicy/org/objectweb/asm/Type;

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lzeroaicy/org/objectweb/asm/Type;

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

.field public static final INT:I = 0x5

.field private static final INTERNAL:I = 0xc

.field public static final INT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lzeroaicy/org/objectweb/asm/Type;

.field public static final METHOD:I = 0xb

.field public static final OBJECT:I = 0xa

.field private static final PRIMITIVE_DESCRIPTORS:Ljava/lang/String; = "VZCBSIFJD"

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lzeroaicy/org/objectweb/asm/Type;


# instance fields
.field private final sort:I

.field private final valueBegin:I

.field private final valueBuffer:Ljava/lang/String;

.field private final valueEnd:I


# direct methods
.method static final constructor <clinit>()V
    .registers 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v1, 0x0

    const-string v2, "VZCBSIFJD"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->VOID_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const-string v1, "VZCBSIFJD"

    invoke-direct {v0, v4, v1, v4, v5}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const-string v1, "VZCBSIFJD"

    invoke-direct {v0, v5, v1, v5, v6}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->CHAR_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const-string v1, "VZCBSIFJD"

    invoke-direct {v0, v6, v1, v6, v7}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->BYTE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const-string v1, "VZCBSIFJD"

    invoke-direct {v0, v7, v1, v7, v8}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->SHORT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const-string v1, "VZCBSIFJD"

    const/4 v2, 0x6

    invoke-direct {v0, v8, v1, v8, v2}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->INT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v1, 0x6

    const-string v2, "VZCBSIFJD"

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->FLOAT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v1, 0x7

    const-string v2, "VZCBSIFJD"

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->LONG_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/16 v1, 0x8

    const-string v2, "VZCBSIFJD"

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->DOUBLE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .registers 5

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    .line 161
    iput-object p2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    .line 162
    iput p3, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    .line 163
    iput p4, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    return-void
.end method

.method private static appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 615
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 620
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 622
    const/16 v0, 0x49

    .line 642
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    :goto_2
    return-void

    .line 616
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 623
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 624
    const/16 v0, 0x56

    goto :goto_1

    .line 625
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 626
    const/16 v0, 0x5a

    goto :goto_1

    .line 627
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 628
    const/16 v0, 0x42

    goto :goto_1

    .line 629
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 630
    const/16 v0, 0x43

    goto :goto_1

    .line 631
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 632
    const/16 v0, 0x53

    goto :goto_1

    .line 633
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 634
    const/16 v0, 0x44

    goto :goto_1

    .line 635
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 636
    const/16 v0, 0x46

    goto :goto_1

    .line 637
    :cond_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    .line 638
    const/16 v0, 0x4a

    goto :goto_1

    .line 640
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 644
    :cond_a
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private appendDescriptor(Ljava/lang/StringBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 598
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 599
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 603
    :goto_0
    return-void

    .line 600
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 601
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v3, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 603
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lzeroaicy/org/objectweb/asm/Type;
    .registers 10

    const/16 v8, 0x4c

    const/16 v7, 0x3b

    const/16 v6, 0x29

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    .line 302
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    .line 315
    new-array v4, v0, [Lzeroaicy/org/objectweb/asm/Type;

    .line 320
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_2

    .line 333
    return-object v4

    .line 304
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 303
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_0

    .line 306
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_4

    .line 308
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 309
    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 311
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 322
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_3

    .line 325
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_5

    .line 327
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 328
    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 330
    :goto_4
    invoke-static {p0, v3, v0}, Lzeroaicy/org/objectweb/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v2

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_1

    .line 323
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_4
.end method

.method public static getArgumentTypes(Ljava/lang/reflect/Method;)[Lzeroaicy/org/objectweb/asm/Type;
    .registers 5

    .line 343
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 344
    array-length v0, v1

    new-array v2, v0, [Lzeroaicy/org/objectweb/asm/Type;

    .line 345
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    .line 348
    return-object v2

    .line 346
    :cond_0
    aget-object v3, v1, v0

    invoke-static {v3}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v3

    aput-object v3, v2, v0

    .line 345
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .registers 8

    const/16 v6, 0x4a

    const/16 v5, 0x44

    const/4 v2, 0x1

    .line 731
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    move v4, v2

    move v1, v2

    .line 733
    :goto_0
    const/16 v0, 0x29

    if-ne v3, v0, :cond_0

    .line 750
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 751
    const/16 v1, 0x56

    if-ne v0, v1, :cond_4

    .line 752
    shl-int/lit8 v0, v4, 0x2

    .line 755
    :goto_1
    return v0

    .line 734
    :cond_0
    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_7

    .line 735
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 736
    add-int/lit8 v0, v4, 0x2

    .line 748
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v4, v0

    goto :goto_0

    .line 739
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 738
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    if-eq v1, v3, :cond_2

    .line 741
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x4c

    if-ne v0, v3, :cond_3

    .line 743
    const/16 v0, 0x3b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 744
    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 746
    :cond_3
    add-int/lit8 v0, v4, 0x1

    goto :goto_2

    .line 754
    :cond_4
    if-eq v0, v6, :cond_5

    if-ne v0, v5, :cond_6

    :cond_5
    const/4 v0, 0x2

    .line 755
    :goto_4
    shl-int/lit8 v1, v4, 0x2

    or-int/2addr v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    .line 754
    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public static getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 550
    const/4 v0, 0x0

    .line 551
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 553
    const-string v0, ")V"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 550
    :cond_0
    aget-object v3, v2, v0

    .line 551
    invoke-static {v3, v1}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    invoke-static {p0, v0}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 584
    const/4 v0, 0x0

    .line 585
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 587
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 589
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 584
    :cond_0
    aget-object v3, v2, v0

    .line 585
    invoke-static {v3, v1}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs getMethodDescriptor(Lzeroaicy/org/objectweb/asm/Type;[Lzeroaicy/org/objectweb/asm/Type;)Ljava/lang/String;
    .registers 5

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    const/4 v0, 0x0

    .line 567
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 569
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 570
    invoke-direct {p0, v1}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/StringBuilder;)V

    .line 571
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 566
    :cond_0
    aget-object v2, p1, v0

    .line 567
    invoke-direct {v2, v1}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMethodType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 5

    .line 264
    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method

.method public static varargs getMethodType(Lzeroaicy/org/objectweb/asm/Type;[Lzeroaicy/org/objectweb/asm/Type;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 3

    .line 275
    invoke-static {p0, p1}, Lzeroaicy/org/objectweb/asm/Type;->getMethodDescriptor(Lzeroaicy/org/objectweb/asm/Type;[Lzeroaicy/org/objectweb/asm/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 5

    const/4 v3, 0x0

    .line 252
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    :goto_0
    new-instance v1, Lzeroaicy/org/objectweb/asm/Type;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v0, p0, v3, v2}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v1

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public static getReturnType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 3

    .line 368
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getReturnTypeOffset(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 2

    .line 379
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method static getReturnTypeOffset(Ljava/lang/String;)I
    .registers 4

    .line 390
    const/4 v0, 0x1

    .line 392
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    .line 402
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    move v1, v0

    .line 393
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_2

    .line 396
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_0

    .line 398
    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 399
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 394
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static getType(Ljava/lang/Class;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lzeroaicy/org/objectweb/asm/Type;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 188
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 189
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->INT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    .line 210
    :goto_0
    return-object v0

    .line 190
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 191
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->VOID_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 193
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 194
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 195
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->BYTE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 196
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 197
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->CHAR_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 198
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 199
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->SHORT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 200
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 201
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->DOUBLE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 202
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 203
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->FLOAT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 204
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 205
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->LONG_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 207
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 210
    :cond_9
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public static getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 3

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Constructor;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Lzeroaicy/org/objectweb/asm/Type;"
        }
    .end annotation

    .line 221
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Method;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 2

    .line 231
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeInternal(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/Type;
    .registers 7

    .line 417
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :sswitch_0
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->VOID_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    .line 441
    :goto_0
    return-object v0

    .line 421
    :sswitch_1
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 423
    :sswitch_2
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->CHAR_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 425
    :sswitch_3
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->BYTE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 427
    :sswitch_4
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->SHORT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 429
    :sswitch_5
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->INT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 431
    :sswitch_6
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->FLOAT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 433
    :sswitch_7
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->LONG_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 435
    :sswitch_8
    sget-object v0, Lzeroaicy/org/objectweb/asm/Type;->DOUBLE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    goto :goto_0

    .line 437
    :sswitch_9
    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1, p2}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    goto :goto_0

    .line 439
    :sswitch_a
    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/16 v1, 0xa

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p2, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    goto :goto_0

    .line 441
    :sswitch_b
    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1, p2}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    goto :goto_0

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_b
        0x42 -> :sswitch_3
        0x43 -> :sswitch_2
        0x44 -> :sswitch_8
        0x46 -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_7
        0x4c -> :sswitch_a
        0x53 -> :sswitch_4
        0x56 -> :sswitch_0
        0x5a -> :sswitch_1
        0x5b -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v5, 0xc

    const/16 v3, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 844
    if-ne p0, p1, :cond_0

    .line 867
    :goto_0
    return v0

    .line 847
    :cond_0
    instance-of v2, p1, Lzeroaicy/org/objectweb/asm/Type;

    if-nez v2, :cond_1

    move v0, v1

    .line 848
    goto :goto_0

    .line 850
    :cond_1
    check-cast p1, Lzeroaicy/org/objectweb/asm/Type;

    .line 851
    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_1
    iget v4, p1, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    if-ne v4, v5, :cond_3

    :goto_2
    if-eq v2, v3, :cond_4

    move v0, v1

    .line 852
    goto :goto_0

    .line 851
    :cond_2
    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    goto :goto_1

    :cond_3
    iget v3, p1, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    goto :goto_2

    .line 854
    :cond_4
    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    .line 855
    iget v4, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    .line 856
    iget v3, p1, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    .line 857
    iget v5, p1, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    .line 859
    sub-int v6, v4, v2

    sub-int/2addr v5, v3

    if-eq v6, v5, :cond_7

    move v0, v1

    .line 860
    goto :goto_0

    .line 863
    :cond_5
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p1, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_6

    move v0, v1

    .line 864
    goto :goto_0

    .line 862
    :cond_6
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    :cond_7
    if-lt v2, v4, :cond_5

    goto :goto_0
.end method

.method public getArgumentTypes()[Lzeroaicy/org/objectweb/asm/Type;
    .registers 2

    .line 285
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentsAndReturnSizes()I
    .registers 2

    .line 715
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 4

    .line 458
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 487
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 460
    :pswitch_1
    const-string v0, "void"

    .line 485
    :goto_0
    return-object v0

    .line 462
    :pswitch_2
    const-string v0, "boolean"

    goto :goto_0

    .line 464
    :pswitch_3
    const-string v0, "char"

    goto :goto_0

    .line 466
    :pswitch_4
    const-string v0, "byte"

    goto :goto_0

    .line 468
    :pswitch_5
    const-string v0, "short"

    goto :goto_0

    .line 470
    :pswitch_6
    const-string v0, "int"

    goto :goto_0

    .line 472
    :pswitch_7
    const-string v0, "float"

    goto :goto_0

    .line 474
    :pswitch_8
    const-string v0, "long"

    goto :goto_0

    .line 476
    :pswitch_9
    const-string v0, "double"

    goto :goto_0

    .line 478
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/Type;->getElementType()Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lzeroaicy/org/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/Type;->getDimensions()I

    move-result v0

    :goto_1
    if-gtz v0, :cond_0

    .line 482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 480
    :cond_0
    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 485
    :pswitch_b
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 6

    .line 519
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 520
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    .line 521
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 522
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v3, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v4, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDimensions()I
    .registers 4

    .line 670
    const/4 v0, 0x1

    .line 671
    :goto_0
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    .line 674
    return v0

    .line 672
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getElementType()Lzeroaicy/org/objectweb/asm/Type;
    .registers 4

    .line 241
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/Type;->getDimensions()I

    move-result v0

    .line 242
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    add-int/2addr v0, v2

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-static {v1, v0, v2}, Lzeroaicy/org/objectweb/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .registers 4

    .line 499
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpcode(I)I
    .registers 4

    const/16 v1, 0xac

    .line 771
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_1

    .line 772
    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 796
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 775
    :pswitch_0
    add-int/lit8 p1, p1, 0x5

    .line 823
    :goto_0
    :pswitch_1
    return p1

    .line 777
    :pswitch_2
    add-int/lit8 p1, p1, 0x6

    goto :goto_0

    .line 779
    :pswitch_3
    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 783
    :pswitch_4
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 785
    :pswitch_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 787
    :pswitch_6
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 791
    :pswitch_7
    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 794
    :pswitch_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 799
    :cond_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_1

    .line 827
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 801
    :pswitch_9
    if-eq p1, v1, :cond_2

    .line 802
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 804
    :cond_2
    const/16 p1, 0xb1

    goto :goto_0

    .line 812
    :pswitch_a
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 814
    :pswitch_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 816
    :pswitch_c
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 820
    :pswitch_d
    const/16 v0, 0x15

    if-eq p1, v0, :cond_3

    const/16 v0, 0x36

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_3

    .line 821
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 823
    :cond_3
    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 825
    :pswitch_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 772
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 799
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public getReturnType()Lzeroaicy/org/objectweb/asm/Type;
    .registers 2

    .line 358
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzeroaicy/org/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 684
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 701
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 686
    :pswitch_1
    const/4 v0, 0x0

    .line 699
    :goto_0
    return v0

    .line 696
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 699
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSort()I
    .registers 3

    .line 660
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    goto :goto_0
.end method

.method public hashCode()I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 877
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    :goto_0
    mul-int/lit8 v0, v0, 0xd

    .line 878
    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 879
    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    :goto_1
    if-lt v1, v2, :cond_2

    .line 883
    :cond_0
    return v0

    .line 877
    :cond_1
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    goto :goto_0

    .line 880
    :cond_2
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 879
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x11

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 893
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

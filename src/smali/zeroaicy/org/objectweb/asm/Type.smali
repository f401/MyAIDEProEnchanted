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
    .registers 4

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v1, 0x0

    const-string v2, "VZCBSIFJD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v1, v3}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->VOID_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v1, 0x2

    invoke-direct {v0, v3, v2, v3, v1}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v1, v3}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->CHAR_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v1, 0x4

    invoke-direct {v0, v3, v2, v3, v1}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->BYTE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v1, v3}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->SHORT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v1, 0x6

    invoke-direct {v0, v3, v2, v3, v1}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->INT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v1, v3}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->FLOAT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/16 v1, 0x8

    invoke-direct {v0, v3, v2, v3, v1}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lzeroaicy/org/objectweb/asm/Type;->LONG_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v1, v3}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 615
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_67

    .line 619
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 621
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_14

    const/16 p0, 0x49

    goto :goto_4b

    .line 623
    :cond_14
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1b

    const/16 p0, 0x56

    goto :goto_4b

    .line 625
    :cond_1b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_22

    const/16 p0, 0x5a

    goto :goto_4b

    .line 627
    :cond_22
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_29

    const/16 p0, 0x42

    goto :goto_4b

    .line 629
    :cond_29
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_30

    const/16 p0, 0x43

    goto :goto_4b

    .line 631
    :cond_30
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_37

    const/16 p0, 0x53

    goto :goto_4b

    .line 633
    :cond_37
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3e

    const/16 p0, 0x44

    goto :goto_4b

    .line 635
    :cond_3e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_45

    const/16 p0, 0x46

    goto :goto_4b

    .line 637
    :cond_45
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4f

    const/16 p0, 0x4a

    .line 642
    :goto_4b
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 640
    :cond_4f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 644
    :cond_55
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_66
    return-void

    .line 616
    :cond_67
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1
.end method

.method private appendDescriptor(Ljava/lang/StringBuilder;)V
    .registers 5
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

    if-ne v0, v1, :cond_14

    .line 599
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_35

    :cond_14
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2c

    .line 601
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 603
    :cond_2c
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_35
    return-void
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lzeroaicy/org/objectweb/asm/Type;
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    :goto_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    const/16 v6, 0x4c

    const/16 v7, 0x5b

    const/16 v8, 0x29

    if-ne v4, v8, :cond_41

    .line 315
    new-array v4, v3, [Lzeroaicy/org/objectweb/asm/Type;

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 320
    :goto_16
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_1d

    return-object v4

    :cond_1d
    move v1, v9

    .line 322
    :goto_1e
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_3e

    add-int/lit8 v2, v1, 0x1

    .line 325
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_35

    .line 327
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 328
    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 330
    :cond_35
    invoke-static {p0, v9, v2}, Lzeroaicy/org/objectweb/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v1

    aput-object v1, v4, v10

    add-int/2addr v10, v0

    move v9, v2

    goto :goto_16

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 303
    :cond_41
    :goto_41
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_5d

    add-int/lit8 v4, v2, 0x1

    .line 306
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_59

    .line 308
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 309
    add-int/2addr v2, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5a

    .line 306
    :cond_59
    move v2, v4

    .line 309
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_41
.end method

.method public static getArgumentTypes(Ljava/lang/reflect/Method;)[Lzeroaicy/org/objectweb/asm/Type;
    .registers 4

    .line 343
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 344
    array-length v0, p0

    new-array v0, v0, [Lzeroaicy/org/objectweb/asm/Type;

    .line 345
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-gez v1, :cond_d

    return-object v0

    .line 346
    :cond_d
    aget-object v2, p0, v1

    invoke-static {v2}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_a
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .registers 8

    .line 731
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_7
    const/16 v4, 0x29

    const/16 v5, 0x44

    const/16 v6, 0x4a

    if-ne v1, v4, :cond_25

    .line 750
    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x56

    const/4 v2, 0x2

    if-ne p0, v1, :cond_1c

    shl-int/lit8 p0, v3, 0x2

    return p0

    :cond_1c
    if-eq p0, v6, :cond_20

    if-ne p0, v5, :cond_21

    :cond_20
    const/4 v0, 0x2

    :cond_21
    shl-int/lit8 p0, v3, 0x2

    or-int/2addr p0, v0

    return p0

    :cond_25
    if-eq v1, v6, :cond_4e

    if-ne v1, v5, :cond_2a

    goto :goto_4e

    .line 738
    :cond_2a
    :goto_2a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x5b

    if-eq v1, v4, :cond_4b

    add-int/lit8 v1, v2, 0x1

    .line 741
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x4c

    if-ne v2, v4, :cond_47

    .line 743
    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 744
    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_47
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_52

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    .line 748
    :goto_52
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7
.end method

.method public static getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    .line 551
    :goto_f
    array-length v2, p0

    if-lt v1, v2, :cond_1c

    .line 553
    const-string p0, ")V"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 550
    :cond_1c
    aget-object v2, p0, v1

    .line 551
    invoke-static {v2, v0}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static getDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
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

    move-result-object p0

    return-object p0
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 585
    :goto_f
    array-length v3, v1

    if-lt v2, v3, :cond_23

    .line 587
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 584
    :cond_23
    aget-object v3, v1, v2

    .line 585
    invoke-static {v3, v0}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method public static varargs getMethodDescriptor(Lzeroaicy/org/objectweb/asm/Type;[Lzeroaicy/org/objectweb/asm/Type;)Ljava/lang/String;
    .registers 5

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 567
    :goto_b
    array-length v2, p1

    if-lt v1, v2, :cond_1b

    .line 569
    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 570
    invoke-direct {p0, v0}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/StringBuilder;)V

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 566
    :cond_1b
    aget-object v2, p1, v1

    .line 567
    invoke-direct {v2, v0}, Lzeroaicy/org/objectweb/asm/Type;->appendDescriptor(Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public static getMethodType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 5

    .line 264
    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    invoke-direct {v0, v3, p0, v1, v2}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method

.method public static varargs getMethodType(Lzeroaicy/org/objectweb/asm/Type;[Lzeroaicy/org/objectweb/asm/Type;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 2

    .line 275
    invoke-static {p0, p1}, Lzeroaicy/org/objectweb/asm/Type;->getMethodDescriptor(Lzeroaicy/org/objectweb/asm/Type;[Lzeroaicy/org/objectweb/asm/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getObjectType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 5

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_c

    const/16 v1, 0x9

    goto :goto_e

    :cond_c
    const/16 v1, 0xc

    :goto_e
    new-instance v2, Lzeroaicy/org/objectweb/asm/Type;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v1, p0, v0, v3}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v2
.end method

.method public static getReturnType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 3

    .line 368
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getReturnTypeOffset(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 1

    .line 379
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method static getReturnTypeOffset(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 392
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_c

    add-int/2addr v1, v0

    return v1

    .line 393
    :cond_c
    :goto_c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_2c

    add-int/lit8 v2, v1, 0x1

    .line 396
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_2a

    .line 398
    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 399
    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_2a
    move v1, v2

    goto :goto_2

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public static getType(Ljava/lang/Class;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lzeroaicy/org/objectweb/asm/Type;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 188
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_d

    .line 189
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->INT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 190
    :cond_d
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_14

    .line 191
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->VOID_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 192
    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1b

    .line 193
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 194
    :cond_1b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_22

    .line 195
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->BYTE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 196
    :cond_22
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_29

    .line 197
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->CHAR_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 198
    :cond_29
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_30

    .line 199
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->SHORT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 200
    :cond_30
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_37

    .line 201
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->DOUBLE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 202
    :cond_37
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3e

    .line 203
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->FLOAT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 204
    :cond_3e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_45

    .line 205
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->LONG_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 207
    :cond_45
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 210
    :cond_4b
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 3

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/reflect/Constructor;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lzeroaicy/org/objectweb/asm/Type;"
        }
    .end annotation

    .line 221
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/reflect/Method;)Lzeroaicy/org/objectweb/asm/Type;
    .registers 1

    .line 231
    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzeroaicy/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/Type;

    move-result-object p0

    return-object p0
.end method

.method private static getTypeInternal(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/Type;
    .registers 5

    .line 417
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6f

    const/16 v1, 0x46

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_60

    const/16 v1, 0x53

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x56

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x49

    if-eq v0, v1, :cond_57

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_54

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_51

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_49

    packed-switch v0, :pswitch_data_78

    .line 443
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Invalid descriptor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :pswitch_40  #0x44
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->DOUBLE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 423
    :pswitch_43  #0x43
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->CHAR_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 425
    :pswitch_46  #0x42
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->BYTE_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 437
    :cond_49
    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1, p2}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0

    .line 421
    :cond_51
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 433
    :cond_54
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->LONG_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 429
    :cond_57
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->INT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 419
    :cond_5a
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->VOID_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 427
    :cond_5d
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->SHORT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 439
    :cond_60
    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0, p1, p2}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0

    .line 431
    :cond_6c
    sget-object p0, Lzeroaicy/org/objectweb/asm/Type;->FLOAT_TYPE:Lzeroaicy/org/objectweb/asm/Type;

    return-object p0

    .line 441
    :cond_6f
    new-instance v0, Lzeroaicy/org/objectweb/asm/Type;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1, p2}, Lzeroaicy/org/objectweb/asm/Type;-><init>(ILjava/lang/String;II)V

    return-object v0

    nop

    :pswitch_data_78
    .packed-switch 0x42
        :pswitch_46  #00000042
        :pswitch_43  #00000043
        :pswitch_40  #00000044
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 847
    :cond_4
    instance-of v1, p1, Lzeroaicy/org/objectweb/asm/Type;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 850
    :cond_a
    check-cast p1, Lzeroaicy/org/objectweb/asm/Type;

    .line 851
    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v3, 0xc

    const/16 v4, 0xa

    if-ne v1, v3, :cond_16

    const/16 v1, 0xa

    :cond_16
    iget v5, p1, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    if-ne v5, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v4, v5

    :goto_1c
    if-eq v1, v4, :cond_1f

    return v2

    .line 854
    :cond_1f
    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    .line 855
    iget v3, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    .line 856
    iget v4, p1, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    .line 857
    sub-int v5, v3, v1

    iget v6, p1, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    sub-int/2addr v6, v4

    if-eq v5, v6, :cond_2d

    return v2

    :cond_2d
    :goto_2d
    if-lt v1, v3, :cond_30

    return v0

    .line 863
    :cond_30
    iget-object v5, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p1, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3f

    return v2

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d
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

    packed-switch v0, :pswitch_data_5a

    .line 487
    :pswitch_5  #0xb
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 485
    :pswitch_b  #0xa, 0xc
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 478
    :pswitch_1e  #0x9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/Type;->getElementType()Lzeroaicy/org/objectweb/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lzeroaicy/org/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/Type;->getDimensions()I

    move-result v1

    :goto_2f
    if-gtz v1, :cond_36

    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 480
    :cond_36
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 476
    :pswitch_3e  #0x8
    const-string v0, "double"

    return-object v0

    .line 474
    :pswitch_41  #0x7
    const-string v0, "long"

    return-object v0

    .line 472
    :pswitch_44  #0x6
    const-string v0, "float"

    return-object v0

    .line 470
    :pswitch_47  #0x5
    const-string v0, "int"

    return-object v0

    .line 468
    :pswitch_4a  #0x4
    const-string v0, "short"

    return-object v0

    .line 466
    :pswitch_4d  #0x3
    const-string v0, "byte"

    return-object v0

    .line 464
    :pswitch_50  #0x2
    const-string v0, "char"

    return-object v0

    .line 462
    :pswitch_53  #0x1
    const-string v0, "boolean"

    return-object v0

    .line 460
    :pswitch_56  #0x0
    const-string v0, "void"

    return-object v0

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_56  #00000000
        :pswitch_53  #00000001
        :pswitch_50  #00000002
        :pswitch_4d  #00000003
        :pswitch_4a  #00000004
        :pswitch_47  #00000005
        :pswitch_44  #00000006
        :pswitch_41  #00000007
        :pswitch_3e  #00000008
        :pswitch_1e  #00000009
        :pswitch_b  #0000000a
        :pswitch_5  #0000000b
        :pswitch_b  #0000000c
    .end packed-switch
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 6

    .line 519
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_15

    .line 520
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    const/16 v1, 0xc

    if-ne v0, v1, :cond_46

    .line 522
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

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

    return-object v0

    .line 524
    :cond_46
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()I
    .registers 4

    const/4 v0, 0x1

    .line 671
    :goto_1
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getElementType()Lzeroaicy/org/objectweb/asm/Type;
    .registers 4

    .line 241
    invoke-virtual {p0}, Lzeroaicy/org/objectweb/asm/Type;->getDimensions()I

    move-result v0

    .line 242
    iget-object v1, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    add-int/2addr v2, v0

    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    invoke-static {v1, v2, v0}, Lzeroaicy/org/objectweb/asm/Type;->getTypeInternal(Ljava/lang/String;II)Lzeroaicy/org/objectweb/asm/Type;

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

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_44

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_9

    goto :goto_44

    .line 799
    :cond_9
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0xac

    packed-switch v0, :pswitch_data_6a

    .line 827
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 825
    :pswitch_16  #0xb
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_1c  #0x9, 0xa, 0xc
    const/16 v0, 0x15

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x36

    if-eq p1, v0, :cond_2d

    if-ne p1, v1, :cond_27

    goto :goto_2d

    .line 821
    :cond_27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_2d
    :goto_2d
    add-int/lit8 p1, p1, 0x4

    return p1

    :pswitch_30  #0x8
    add-int/lit8 p1, p1, 0x3

    return p1

    :pswitch_33  #0x7
    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_36  #0x6
    add-int/lit8 p1, p1, 0x2

    :pswitch_38  #0x1, 0x2, 0x3, 0x4, 0x5
    return p1

    :pswitch_39  #0x0
    if-ne p1, v1, :cond_3e

    const/16 p1, 0xb1

    return p1

    .line 802
    :cond_3e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 772
    :cond_44
    :goto_44
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_88

    .line 796
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_4f  #0x9, 0xa, 0xc
    add-int/lit8 p1, p1, 0x4

    return p1

    :pswitch_52  #0x8
    add-int/lit8 p1, p1, 0x3

    return p1

    :pswitch_55  #0x7
    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_58  #0x6
    add-int/lit8 p1, p1, 0x2

    :pswitch_5a  #0x5
    return p1

    :pswitch_5b  #0x4
    add-int/lit8 p1, p1, 0x7

    return p1

    :pswitch_5e  #0x2
    add-int/lit8 p1, p1, 0x6

    return p1

    :pswitch_61  #0x1, 0x3
    add-int/lit8 p1, p1, 0x5

    return p1

    .line 794
    :pswitch_64  #0x0, 0xb
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_39  #00000000
        :pswitch_38  #00000001
        :pswitch_38  #00000002
        :pswitch_38  #00000003
        :pswitch_38  #00000004
        :pswitch_38  #00000005
        :pswitch_36  #00000006
        :pswitch_33  #00000007
        :pswitch_30  #00000008
        :pswitch_1c  #00000009
        :pswitch_1c  #0000000a
        :pswitch_16  #0000000b
        :pswitch_1c  #0000000c
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_64  #00000000
        :pswitch_61  #00000001
        :pswitch_5e  #00000002
        :pswitch_61  #00000003
        :pswitch_5b  #00000004
        :pswitch_5a  #00000005
        :pswitch_58  #00000006
        :pswitch_55  #00000007
        :pswitch_52  #00000008
        :pswitch_4f  #00000009
        :pswitch_4f  #0000000a
        :pswitch_64  #0000000b
        :pswitch_4f  #0000000c
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

    packed-switch v0, :pswitch_data_12

    .line 701
    :pswitch_5  #0xb
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b  #0x7, 0x8
    const/4 v0, 0x2

    return v0

    :pswitch_d  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x9, 0xa, 0xc
    const/4 v0, 0x1

    return v0

    :pswitch_f  #0x0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_d  #00000001
        :pswitch_d  #00000002
        :pswitch_d  #00000003
        :pswitch_d  #00000004
        :pswitch_d  #00000005
        :pswitch_d  #00000006
        :pswitch_b  #00000007
        :pswitch_b  #00000008
        :pswitch_d  #00000009
        :pswitch_d  #0000000a
        :pswitch_5  #0000000b
        :pswitch_d  #0000000c
    .end packed-switch
.end method

.method public getSort()I
    .registers 3

    .line 660
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    const/16 v0, 0xa

    :cond_8
    return v0
.end method

.method public hashCode()I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 877
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_9

    const/16 v1, 0xa

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    mul-int/lit8 v1, v1, 0xd

    const/16 v2, 0x9

    if-lt v0, v2, :cond_23

    .line 879
    iget v0, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBegin:I

    iget v2, p0, Lzeroaicy/org/objectweb/asm/Type;->valueEnd:I

    :goto_14
    if-lt v0, v2, :cond_17

    goto :goto_23

    .line 880
    :cond_17
    iget-object v3, p0, Lzeroaicy/org/objectweb/asm/Type;->valueBuffer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x11

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_23
    :goto_23
    return v1
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

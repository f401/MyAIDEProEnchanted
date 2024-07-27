.class public Lzeroaicy/org/objectweb/asm/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# static fields
.field public static final CAST:I = 0x47

.field public static final CLASS_EXTENDS:I = 0x10

.field public static final CLASS_TYPE_PARAMETER:I = 0x0

.field public static final CLASS_TYPE_PARAMETER_BOUND:I = 0x11

.field public static final CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:I = 0x48

.field public static final CONSTRUCTOR_REFERENCE:I = 0x45

.field public static final CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:I = 0x4a

.field public static final EXCEPTION_PARAMETER:I = 0x42

.field public static final FIELD:I = 0x13

.field public static final INSTANCEOF:I = 0x43

.field public static final LOCAL_VARIABLE:I = 0x40

.field public static final METHOD_FORMAL_PARAMETER:I = 0x16

.field public static final METHOD_INVOCATION_TYPE_ARGUMENT:I = 0x49

.field public static final METHOD_RECEIVER:I = 0x15

.field public static final METHOD_REFERENCE:I = 0x46

.field public static final METHOD_REFERENCE_TYPE_ARGUMENT:I = 0x4b

.field public static final METHOD_RETURN:I = 0x14

.field public static final METHOD_TYPE_PARAMETER:I = 0x1

.field public static final METHOD_TYPE_PARAMETER_BOUND:I = 0x12

.field public static final NEW:I = 0x44

.field public static final RESOURCE_VARIABLE:I = 0x41

.field public static final THROWS:I = 0x17


# instance fields
.field private final targetTypeAndInfo:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lzeroaicy/org/objectweb/asm/TypeReference;->targetTypeAndInfo:I

    return-void
.end method

.method public static newExceptionReference(I)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 4

    .line 262
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    const/high16 v1, 0x17000000

    shl-int/lit8 v2, p0, 0x8

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newFormalParameterReference(I)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 4

    .line 252
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    const/high16 v1, 0x16000000

    shl-int/lit8 v2, p0, 0x10

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newSuperTypeReference(I)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 4

    .line 242
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    const/high16 v1, 0x10000000

    const v2, 0xffff

    and-int/2addr v2, p0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTryCatchReference(I)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 4

    .line 273
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    const/high16 v1, 0x42000000    # 32.0f

    shl-int/lit8 v2, p0, 0x8

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeArgumentReference(II)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 4

    .line 287
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v1, p1

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeParameterBoundReference(III)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 6

    .line 230
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 v1, p0, 0x18

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeParameterReference(II)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 5

    .line 217
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 v1, p0, 0x18

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeReference(I)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 3

    .line 206
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 v1, p0, 0x18

    invoke-direct {v0, v1}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method static putTarget(ILzeroaicy/org/objectweb/asm/ByteVector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lzeroaicy/org/objectweb/asm/ByteVector;",
            ")V"
        }
    .end annotation

    .line 403
    ushr-int/lit8 v0, p0, 0x18

    sparse-switch v0, :sswitch_data_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 407
    :sswitch_0
    ushr-int/lit8 v0, p0, 0x10

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    .line 433
    :goto_0
    return-void

    .line 412
    :sswitch_1
    ushr-int/lit8 v0, p0, 0x18

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 419
    :sswitch_2
    invoke-virtual {p1, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 430
    :sswitch_3
    ushr-int/lit8 v0, p0, 0x18

    const v1, 0xffff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v0, v1}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x10 -> :sswitch_3
        0x11 -> :sswitch_3
        0x12 -> :sswitch_3
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x17 -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_3
        0x45 -> :sswitch_3
        0x46 -> :sswitch_3
        0x47 -> :sswitch_2
        0x48 -> :sswitch_2
        0x49 -> :sswitch_2
        0x4a -> :sswitch_2
        0x4b -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getExceptionIndex()I
    .registers 3

    .line 359
    iget v0, p0, Lzeroaicy/org/objectweb/asm/TypeReference;->targetTypeAndInfo:I

    const v1, 0xffff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getFormalParameterIndex()I
    .registers 3

    .line 348
    iget v0, p0, Lzeroaicy/org/objectweb/asm/TypeReference;->targetTypeAndInfo:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getSort()I
    .registers 2

    .line 303
    iget v0, p0, Lzeroaicy/org/objectweb/asm/TypeReference;->targetTypeAndInfo:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getSuperTypeIndex()I
    .registers 3

    .line 338
    iget v0, p0, Lzeroaicy/org/objectweb/asm/TypeReference;->targetTypeAndInfo:I

    const v1, 0xffff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    return v0
.end method

.method public getTryCatchBlockIndex()I
    .registers 3

    .line 370
    iget v0, p0, Lzeroaicy/org/objectweb/asm/TypeReference;->targetTypeAndInfo:I

    const v1, 0xffff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getTypeArgumentIndex()I
    .registers 2

    .line 382
    iget v0, p0, Lzeroaicy/org/objectweb/asm/TypeReference;->targetTypeAndInfo:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTypeParameterBoundIndex()I
    .registers 3

    .line 327
    iget v0, p0, Lzeroaicy/org/objectweb/asm/TypeReference;->targetTypeAndInfo:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getTypeParameterIndex()I
    .registers 3

    .line 315
    iget v0, p0, Lzeroaicy/org/objectweb/asm/TypeReference;->targetTypeAndInfo:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getValue()I
    .registers 2

    .line 392
    iget v0, p0, Lzeroaicy/org/objectweb/asm/TypeReference;->targetTypeAndInfo:I

    return v0
.end method

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
    .registers 3

    .line 262
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x8

    const/high16 v1, 0x17000000

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newFormalParameterReference(I)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 3

    .line 252
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x10

    const/high16 v1, 0x16000000

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newSuperTypeReference(I)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 3

    .line 242
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    const v1, 0xffff

    and-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x8

    const/high16 v1, 0x10000000

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTryCatchReference(I)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 3

    .line 273
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x8

    const/high16 v1, 0x42000000  # 32.0f

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeArgumentReference(II)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 3

    .line 287
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeParameterBoundReference(III)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 4

    .line 230
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeParameterReference(II)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 3

    .line 217
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeReference(I)Lzeroaicy/org/objectweb/asm/TypeReference;
    .registers 2

    .line 206
    new-instance v0, Lzeroaicy/org/objectweb/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x18

    invoke-direct {v0, p0}, Lzeroaicy/org/objectweb/asm/TypeReference;-><init>(I)V

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

    ushr-int/lit8 v0, p0, 0x18

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    packed-switch v0, :pswitch_data_2c

    packed-switch v0, :pswitch_data_40

    .line 433
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 412
    :pswitch_13  #0x13, 0x14, 0x15
    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putByte(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2a

    .line 419
    :pswitch_17  #0x47, 0x48, 0x49, 0x4a, 0x4b
    invoke-virtual {p1, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putInt(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2a

    .line 430
    :pswitch_1b  #0x10, 0x11, 0x12, 0x17, 0x42, 0x43, 0x44, 0x45, 0x46
    const v1, 0xffff00

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x8

    invoke-virtual {p1, v0, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->put12(II)Lzeroaicy/org/objectweb/asm/ByteVector;

    goto :goto_2a

    .line 407
    :cond_25
    :pswitch_25  #0x16
    ushr-int/lit8 p0, p0, 0x10

    invoke-virtual {p1, p0}, Lzeroaicy/org/objectweb/asm/ByteVector;->putShort(I)Lzeroaicy/org/objectweb/asm/ByteVector;

    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x10
        :pswitch_1b  #00000010
        :pswitch_1b  #00000011
        :pswitch_1b  #00000012
        :pswitch_13  #00000013
        :pswitch_13  #00000014
        :pswitch_13  #00000015
        :pswitch_25  #00000016
        :pswitch_1b  #00000017
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x42
        :pswitch_1b  #00000042
        :pswitch_1b  #00000043
        :pswitch_1b  #00000044
        :pswitch_1b  #00000045
        :pswitch_1b  #00000046
        :pswitch_17  #00000047
        :pswitch_17  #00000048
        :pswitch_17  #00000049
        :pswitch_17  #0000004a
        :pswitch_17  #0000004b
    .end packed-switch
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

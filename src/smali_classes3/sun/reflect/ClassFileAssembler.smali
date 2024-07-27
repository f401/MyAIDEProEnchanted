.class Lsun/reflect/ClassFileAssembler;
.super Ljava/lang/Object;
.source "ClassFileAssembler.java"

# interfaces
.implements Lsun/reflect/ClassFileConstants;


# instance fields
.field private cpIdx:S

.field private maxLocals:I

.field private maxStack:I

.field private stack:I

.field private vec:Lsun/reflect/ByteVector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-static {}, Lsun/reflect/ByteVectorFactory;->create()Lsun/reflect/ByteVector;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/reflect/ClassFileAssembler;-><init>(Lsun/reflect/ByteVector;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lsun/reflect/ByteVector;)V
    .registers 3

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    .line 164
    iput v0, p0, Lsun/reflect/ClassFileAssembler;->stack:I

    .line 165
    iput v0, p0, Lsun/reflect/ClassFileAssembler;->maxStack:I

    .line 166
    iput v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 37
    iput-object p1, p0, Lsun/reflect/ClassFileAssembler;->vec:Lsun/reflect/ByteVector;

    .line 38
    return-void
.end method

.method private decStack()V
    .registers 2

    .line 173
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->stack:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/reflect/ClassFileAssembler;->stack:I

    .line 174
    return-void
.end method

.method private incStack()V
    .registers 2

    .line 169
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->stack:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 170
    return-void
.end method


# virtual methods
.method public append(Lsun/reflect/ByteVector;)V
    .registers 4

    .line 82
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lsun/reflect/ByteVector;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 83
    invoke-interface {p1, v0}, Lsun/reflect/ByteVector;->get(I)B

    move-result v1

    invoke-virtual {p0, v1}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public append(Lsun/reflect/ClassFileAssembler;)V
    .registers 3

    .line 78
    iget-object v0, p1, Lsun/reflect/ClassFileAssembler;->vec:Lsun/reflect/ByteVector;

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->append(Lsun/reflect/ByteVector;)V

    .line 79
    return-void
.end method

.method public cpi()S
    .registers 3

    .line 94
    iget-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    if-eqz v0, :cond_0

    .line 97
    return v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal use of ClassFileAssembler"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitByte(B)V
    .registers 3

    .line 74
    iget-object v0, p0, Lsun/reflect/ClassFileAssembler;->vec:Lsun/reflect/ByteVector;

    invoke-interface {v0, p1}, Lsun/reflect/ByteVector;->add(B)V

    .line 75
    return-void
.end method

.method public emitConstantPoolClass(S)V
    .registers 3

    .line 113
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 114
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 115
    iget-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    .line 116
    return-void
.end method

.method public emitConstantPoolFieldref(SS)V
    .registers 4

    .line 128
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 129
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 130
    invoke-virtual {p0, p2}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 131
    iget-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    .line 132
    return-void
.end method

.method public emitConstantPoolInterfaceMethodref(SS)V
    .registers 4

    .line 146
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 147
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 148
    invoke-virtual {p0, p2}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 149
    iget-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    .line 150
    return-void
.end method

.method public emitConstantPoolMethodref(SS)V
    .registers 4

    .line 137
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 138
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 139
    invoke-virtual {p0, p2}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 140
    iget-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    .line 141
    return-void
.end method

.method public emitConstantPoolNameAndType(SS)V
    .registers 4

    .line 119
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 120
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 121
    invoke-virtual {p0, p2}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 122
    iget-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    .line 123
    return-void
.end method

.method public emitConstantPoolString(S)V
    .registers 3

    .line 153
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 154
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 155
    iget-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    .line 156
    return-void
.end method

.method public emitConstantPoolUTF8(Ljava/lang/String;)V
    .registers 5

    .line 103
    invoke-static {p1}, Lsun/reflect/UTF8;->encode(Ljava/lang/String;)[B

    move-result-object v1

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 105
    array-length v0, v1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 106
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 107
    aget-byte v2, v1, v0

    invoke-virtual {p0, v2}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    iget-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lsun/reflect/ClassFileAssembler;->cpIdx:S

    .line 110
    return-void
.end method

.method public emitInt(I)V
    .registers 3

    .line 56
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 57
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 58
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 59
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 60
    return-void
.end method

.method public emitMagicAndVersion()V
    .registers 2

    .line 50
    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitInt(I)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 52
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 53
    return-void
.end method

.method public emitShort(S)V
    .registers 3

    .line 63
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 64
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 65
    return-void
.end method

.method emitShort(SS)V
    .registers 6

    .line 69
    iget-object v0, p0, Lsun/reflect/ClassFileAssembler;->vec:Lsun/reflect/ByteVector;

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-interface {v0, p1, v1}, Lsun/reflect/ByteVector;->put(IB)V

    .line 70
    iget-object v0, p0, Lsun/reflect/ClassFileAssembler;->vec:Lsun/reflect/ByteVector;

    add-int/lit8 v1, p1, 0x1

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    invoke-interface {v0, v1, v2}, Lsun/reflect/ByteVector;->put(IB)V

    .line 71
    return-void
.end method

.method public getData()Lsun/reflect/ByteVector;
    .registers 2

    .line 41
    iget-object v0, p0, Lsun/reflect/ClassFileAssembler;->vec:Lsun/reflect/ByteVector;

    return-object v0
.end method

.method public getLength()S
    .registers 2

    .line 46
    iget-object v0, p0, Lsun/reflect/ClassFileAssembler;->vec:Lsun/reflect/ByteVector;

    invoke-interface {v0}, Lsun/reflect/ByteVector;->getLength()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getMaxLocals()S
    .registers 2

    .line 181
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    int-to-short v0, v0

    return v0
.end method

.method public getMaxStack()S
    .registers 2

    .line 177
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxStack:I

    int-to-short v0, v0

    return v0
.end method

.method public getStack()I
    .registers 2

    .line 193
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->stack:I

    return v0
.end method

.method public opc_aaload()V
    .registers 2

    .line 358
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 359
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 360
    return-void
.end method

.method public opc_aconst_null()V
    .registers 2

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 210
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 211
    return-void
.end method

.method public opc_aload_0()V
    .registers 3

    const/4 v1, 0x1

    .line 334
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 335
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 336
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 337
    return-void
.end method

.method public opc_aload_1()V
    .registers 3

    const/4 v1, 0x2

    .line 340
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 341
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 342
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 343
    return-void
.end method

.method public opc_aload_2()V
    .registers 3

    const/4 v1, 0x3

    .line 346
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 347
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 348
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 349
    return-void
.end method

.method public opc_aload_3()V
    .registers 3

    const/4 v1, 0x4

    .line 352
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 353
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 354
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 355
    return-void
.end method

.method public opc_areturn()V
    .registers 2

    .line 542
    const/16 v0, -0x50

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 544
    return-void
.end method

.method public opc_arraylength()V
    .registers 2

    .line 635
    const/16 v0, -0x42

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 636
    return-void
.end method

.method public opc_astore_0()V
    .registers 3

    const/4 v1, 0x1

    .line 363
    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 364
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 365
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 366
    return-void
.end method

.method public opc_astore_1()V
    .registers 3

    const/4 v1, 0x2

    .line 369
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 370
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 371
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 372
    return-void
.end method

.method public opc_astore_2()V
    .registers 3

    const/4 v1, 0x3

    .line 375
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 376
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 377
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 378
    return-void
.end method

.method public opc_astore_3()V
    .registers 3

    const/4 v1, 0x4

    .line 381
    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 382
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 383
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 384
    return-void
.end method

.method public opc_athrow()V
    .registers 2

    .line 653
    const/16 v0, -0x41

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 654
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 655
    return-void
.end method

.method public opc_checkcast(S)V
    .registers 3

    .line 663
    const/16 v0, -0x40

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 664
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 665
    return-void
.end method

.method public opc_dload_0()V
    .registers 3

    const/4 v1, 0x2

    .line 306
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 307
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 308
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 309
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 310
    return-void
.end method

.method public opc_dload_1()V
    .registers 3

    const/4 v1, 0x3

    .line 313
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 314
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 315
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 316
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 317
    return-void
.end method

.method public opc_dload_2()V
    .registers 3

    const/4 v1, 0x4

    .line 320
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 321
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 322
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 323
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 324
    return-void
.end method

.method public opc_dload_3()V
    .registers 3

    const/4 v1, 0x5

    .line 327
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 328
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 329
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 330
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 331
    return-void
.end method

.method public opc_dreturn()V
    .registers 2

    .line 537
    const/16 v0, -0x51

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 539
    return-void
.end method

.method public opc_dup()V
    .registers 2

    .line 396
    const/16 v0, 0x59

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 397
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 398
    return-void
.end method

.method public opc_dup_x1()V
    .registers 2

    .line 401
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 402
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 403
    return-void
.end method

.method public opc_f2d()V
    .registers 2

    .line 434
    const/16 v0, -0x73

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 435
    return-void
.end method

.method public opc_fload_0()V
    .registers 3

    const/4 v1, 0x1

    .line 282
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 283
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 284
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 285
    return-void
.end method

.method public opc_fload_1()V
    .registers 3

    const/4 v1, 0x2

    .line 288
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 289
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 290
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 291
    return-void
.end method

.method public opc_fload_2()V
    .registers 3

    const/4 v1, 0x3

    .line 294
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 295
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 296
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 297
    return-void
.end method

.method public opc_fload_3()V
    .registers 3

    const/4 v1, 0x4

    .line 300
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 301
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 302
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 303
    return-void
.end method

.method public opc_freturn()V
    .registers 2

    .line 532
    const/16 v0, -0x52

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 534
    return-void
.end method

.method public opc_getfield(SI)V
    .registers 4

    .line 568
    const/16 v0, -0x4c

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 569
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 570
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 571
    return-void
.end method

.method public opc_getstatic(SI)V
    .registers 4

    .line 556
    const/16 v0, -0x4e

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 557
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 558
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 559
    return-void
.end method

.method public opc_goto(Lsun/reflect/Label;)V
    .registers 5

    .line 479
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v0

    .line 480
    const/16 v1, -0x59

    invoke-virtual {p0, v1}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 481
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v1

    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lsun/reflect/Label;->add(Lsun/reflect/ClassFileAssembler;SSI)V

    .line 482
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 483
    return-void
.end method

.method public opc_goto(S)V
    .registers 3

    .line 472
    const/16 v0, -0x59

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 473
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 474
    return-void
.end method

.method public opc_i2d()V
    .registers 2

    .line 422
    const/16 v0, -0x79

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 423
    return-void
.end method

.method public opc_i2f()V
    .registers 2

    .line 418
    const/16 v0, -0x7a

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 419
    return-void
.end method

.method public opc_i2l()V
    .registers 2

    .line 414
    const/16 v0, -0x7b

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 415
    return-void
.end method

.method public opc_if_icmpeq(Lsun/reflect/Label;)V
    .registers 5

    .line 465
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v0

    .line 466
    const/16 v1, -0x61

    invoke-virtual {p0, v1}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 467
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v1

    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, p0, v0, v1, v2}, Lsun/reflect/Label;->add(Lsun/reflect/ClassFileAssembler;SSI)V

    .line 468
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 469
    return-void
.end method

.method public opc_if_icmpeq(S)V
    .registers 3

    .line 457
    const/16 v0, -0x61

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 458
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 459
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 460
    return-void
.end method

.method public opc_ifeq(Lsun/reflect/Label;)V
    .registers 5

    .line 450
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v0

    .line 451
    const/16 v1, -0x67

    invoke-virtual {p0, v1}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 452
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v1

    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lsun/reflect/Label;->add(Lsun/reflect/ClassFileAssembler;SSI)V

    .line 453
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 454
    return-void
.end method

.method public opc_ifeq(S)V
    .registers 3

    .line 442
    const/16 v0, -0x67

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 443
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 444
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 445
    return-void
.end method

.method public opc_ifnonnull(Lsun/reflect/Label;)V
    .registers 5

    .line 510
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v0

    .line 511
    const/16 v1, -0x39

    invoke-virtual {p0, v1}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 512
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v1

    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lsun/reflect/Label;->add(Lsun/reflect/ClassFileAssembler;SSI)V

    .line 513
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 514
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 515
    return-void
.end method

.method public opc_ifnonnull(S)V
    .registers 3

    .line 502
    const/16 v0, -0x39

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 503
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 504
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 505
    return-void
.end method

.method public opc_ifnull(Lsun/reflect/Label;)V
    .registers 5

    .line 494
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v0

    .line 495
    const/16 v1, -0x3a

    invoke-virtual {p0, v1}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 496
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getLength()S

    move-result v1

    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lsun/reflect/Label;->add(Lsun/reflect/ClassFileAssembler;SSI)V

    .line 497
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 498
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 499
    return-void
.end method

.method public opc_ifnull(S)V
    .registers 3

    .line 486
    const/16 v0, -0x3a

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 487
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 488
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 489
    return-void
.end method

.method public opc_iload_0()V
    .registers 3

    const/4 v1, 0x1

    .line 230
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 231
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 232
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 233
    return-void
.end method

.method public opc_iload_1()V
    .registers 3

    const/4 v1, 0x2

    .line 236
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 237
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 238
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 239
    return-void
.end method

.method public opc_iload_2()V
    .registers 3

    const/4 v1, 0x3

    .line 242
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 243
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 244
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 245
    return-void
.end method

.method public opc_iload_3()V
    .registers 3

    const/4 v1, 0x4

    .line 248
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 249
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 250
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 251
    return-void
.end method

.method public opc_instanceof(S)V
    .registers 3

    .line 668
    const/16 v0, -0x3f

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 669
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 670
    return-void
.end method

.method public opc_invokeinterface(SIBI)V
    .registers 6

    .line 623
    const/16 v0, -0x47

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 624
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 625
    invoke-virtual {p0, p3}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 626
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 627
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 628
    return-void
.end method

.method public opc_invokespecial(SII)V
    .registers 5

    .line 600
    const/16 v0, -0x49

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 601
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 602
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 603
    return-void
.end method

.method public opc_invokestatic(SII)V
    .registers 5

    .line 611
    const/16 v0, -0x48

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 612
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 613
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 614
    return-void
.end method

.method public opc_invokevirtual(SII)V
    .registers 5

    .line 589
    const/16 v0, -0x4a

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 590
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 591
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 592
    return-void
.end method

.method public opc_ireturn()V
    .registers 2

    .line 522
    const/16 v0, -0x54

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 524
    return-void
.end method

.method public opc_l2d()V
    .registers 2

    .line 430
    const/16 v0, -0x76

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 431
    return-void
.end method

.method public opc_l2f()V
    .registers 2

    .line 426
    const/16 v0, -0x77

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 427
    return-void
.end method

.method public opc_ldc(B)V
    .registers 3

    .line 220
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 221
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 222
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 223
    return-void
.end method

.method public opc_lload_0()V
    .registers 3

    const/4 v1, 0x2

    .line 254
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 255
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 256
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 257
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 258
    return-void
.end method

.method public opc_lload_1()V
    .registers 3

    const/4 v1, 0x3

    .line 261
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 262
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 263
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 264
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 265
    return-void
.end method

.method public opc_lload_2()V
    .registers 3

    const/4 v1, 0x4

    .line 268
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 269
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 270
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 271
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 272
    return-void
.end method

.method public opc_lload_3()V
    .registers 3

    const/4 v1, 0x5

    .line 275
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 276
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 277
    :cond_0
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 278
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 279
    return-void
.end method

.method public opc_lreturn()V
    .registers 2

    .line 527
    const/16 v0, -0x53

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 529
    return-void
.end method

.method public opc_new(S)V
    .registers 3

    .line 643
    const/16 v0, -0x45

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 644
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 645
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 646
    return-void
.end method

.method public opc_pop()V
    .registers 2

    .line 391
    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 392
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->decStack()V

    .line 393
    return-void
.end method

.method public opc_putfield(SI)V
    .registers 4

    .line 574
    const/16 v0, -0x4b

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 575
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 576
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 577
    return-void
.end method

.method public opc_putstatic(SI)V
    .registers 4

    .line 562
    const/16 v0, -0x4d

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 563
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 564
    invoke-virtual {p0}, Lsun/reflect/ClassFileAssembler;->getStack()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 565
    return-void
.end method

.method public opc_return()V
    .registers 2

    .line 547
    const/16 v0, -0x4f

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->setStack(I)V

    .line 549
    return-void
.end method

.method public opc_sipush(S)V
    .registers 3

    .line 214
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 215
    invoke-virtual {p0, p1}, Lsun/reflect/ClassFileAssembler;->emitShort(S)V

    .line 216
    invoke-direct {p0}, Lsun/reflect/ClassFileAssembler;->incStack()V

    .line 217
    return-void
.end method

.method public opc_swap()V
    .registers 2

    .line 406
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lsun/reflect/ClassFileAssembler;->emitByte(B)V

    .line 407
    return-void
.end method

.method public setMaxLocals(I)V
    .registers 2

    .line 188
    iput p1, p0, Lsun/reflect/ClassFileAssembler;->maxLocals:I

    .line 189
    return-void
.end method

.method public setStack(I)V
    .registers 3

    .line 198
    iput p1, p0, Lsun/reflect/ClassFileAssembler;->stack:I

    .line 199
    iget v0, p0, Lsun/reflect/ClassFileAssembler;->maxStack:I

    if-le p1, v0, :cond_0

    .line 200
    iput p1, p0, Lsun/reflect/ClassFileAssembler;->maxStack:I

    .line 202
    :cond_0
    return-void
.end method

.class public final Lcom/s1243808733/android/dex/EncodedValueReader;
.super Ljava/lang/Object;
.source "EncodedValueReader.java"


# static fields
.field public static final ENCODED_ANNOTATION:I = 0x1d

.field public static final ENCODED_ARRAY:I = 0x1c

.field public static final ENCODED_BOOLEAN:I = 0x1f

.field public static final ENCODED_BYTE:I = 0x0

.field public static final ENCODED_CHAR:I = 0x3

.field public static final ENCODED_DOUBLE:I = 0x11

.field public static final ENCODED_ENUM:I = 0x1b

.field public static final ENCODED_FIELD:I = 0x19

.field public static final ENCODED_FLOAT:I = 0x10

.field public static final ENCODED_INT:I = 0x4

.field public static final ENCODED_LONG:I = 0x6

.field public static final ENCODED_METHOD:I = 0x1a

.field public static final ENCODED_METHOD_HANDLE:I = 0x16

.field public static final ENCODED_METHOD_TYPE:I = 0x15

.field public static final ENCODED_NULL:I = 0x1e

.field public static final ENCODED_SHORT:I = 0x2

.field public static final ENCODED_STRING:I = 0x17

.field public static final ENCODED_TYPE:I = 0x18

.field private static final MUST_READ:I = -0x1


# instance fields
.field private annotationType:I

.field private arg:I

.field protected final in:Lcom/s1243808733/android/dex/util/ByteInput;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/EncodedValue;)V
    .registers 2

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValue;->asByteInput()Lcom/s1243808733/android/dex/util/ByteInput;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/util/ByteInput;)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/EncodedValue;I)V
    .registers 3

    .line 72
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValue;->asByteInput()Lcom/s1243808733/android/dex/util/ByteInput;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/util/ByteInput;I)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/util/ByteInput;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 53
    iput-object p1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/util/ByteInput;I)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    .line 68
    iput p2, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    return-void
.end method

.method private checkType(I)V
    .registers 5

    .line 302
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 303
    :cond_7
    nop

    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Expected %x but was %x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAnnotationType()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->annotationType:I

    return v0
.end method

.method public peek()I
    .registers 3

    .line 79
    iget v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 80
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    invoke-interface {v0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v0

    .line 81
    and-int/lit8 v1, v0, 0x1f

    iput v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 82
    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    .line 84
    :cond_15
    iget v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    return v0
.end method

.method public readAnnotation()I
    .registers 2

    .line 117
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->annotationType:I

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readAnnotationName()I
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readArray()I
    .registers 2

    .line 98
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    invoke-static {v0}, Lcom/s1243808733/android/dex/Leb128;->readUnsignedLeb128(Lcom/s1243808733/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readBoolean()Z
    .registers 2

    .line 226
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 228
    iget v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public readByte()B
    .registers 3

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 139
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readSignedInt(Lcom/s1243808733/android/dex/util/ByteInput;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .registers 4

    .line 149
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 151
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .registers 4

    .line 173
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 175
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readUnsignedLong(Lcom/s1243808733/android/dex/util/ByteInput;IZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 4

    .line 209
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 211
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readField()I
    .registers 4

    .line 203
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readFloat()F
    .registers 4

    .line 167
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .registers 3

    .line 155
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 157
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readSignedInt(Lcom/s1243808733/android/dex/util/ByteInput;I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 3

    .line 161
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 163
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readSignedLong(Lcom/s1243808733/android/dex/util/ByteInput;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readMethod()I
    .registers 4

    .line 215
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 217
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readMethodHandle()I
    .registers 4

    .line 185
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 187
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readMethodType()I
    .registers 4

    .line 179
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 181
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readNull()V
    .registers 2

    .line 221
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    return-void
.end method

.method public readShort()S
    .registers 3

    .line 143
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 145
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readSignedInt(Lcom/s1243808733/android/dex/util/ByteInput;I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readString()I
    .registers 4

    .line 191
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 193
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public readType()I
    .registers 4

    .line 197
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;->checkType(I)V

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 199
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dex/EncodedValueCodec;->readUnsignedInt(Lcom/s1243808733/android/dex/util/ByteInput;IZ)I

    move-result v0

    return v0
.end method

.method public skipValue()V
    .registers 3

    .line 236
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_87

    const/4 v1, 0x3

    if-eq v0, v1, :cond_83

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7f

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7b

    const/16 v1, 0x11

    if-eq v0, v1, :cond_77

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_94

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :pswitch_38  #0x1f
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readBoolean()Z

    goto :goto_92

    .line 291
    :pswitch_3c  #0x1e
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readNull()V

    goto :goto_92

    .line 285
    :pswitch_40  #0x1d
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v0

    :goto_44
    if-ge v1, v0, :cond_92

    .line 286
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readAnnotationName()I

    .line 287
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->skipValue()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 280
    :pswitch_4f  #0x1c
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readArray()I

    move-result v0

    :goto_53
    if-ge v1, v0, :cond_92

    .line 281
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->skipValue()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 274
    :pswitch_5b  #0x1b
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readEnum()I

    goto :goto_92

    .line 277
    :pswitch_5f  #0x1a
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethod()I

    goto :goto_92

    .line 271
    :pswitch_63  #0x19
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readField()I

    goto :goto_92

    .line 268
    :pswitch_67  #0x18
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readType()I

    goto :goto_92

    .line 265
    :pswitch_6b  #0x17
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readString()I

    goto :goto_92

    .line 262
    :pswitch_6f  #0x16
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethodHandle()I

    goto :goto_92

    .line 259
    :pswitch_73  #0x15
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethodType()I

    goto :goto_92

    .line 256
    :cond_77
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readDouble()D

    goto :goto_92

    .line 253
    :cond_7b
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readFloat()F

    goto :goto_92

    .line 247
    :cond_7f
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readInt()I

    goto :goto_92

    .line 244
    :cond_83
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readChar()C

    goto :goto_92

    .line 241
    :cond_87
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readShort()S

    goto :goto_92

    .line 250
    :cond_8b
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readLong()J

    goto :goto_92

    .line 238
    :cond_8f
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readByte()B

    :cond_92
    :goto_92
    return-void

    nop

    :pswitch_data_94
    .packed-switch 0x15
        :pswitch_73  #00000015
        :pswitch_6f  #00000016
        :pswitch_6b  #00000017
        :pswitch_67  #00000018
        :pswitch_63  #00000019
        :pswitch_5f  #0000001a
        :pswitch_5b  #0000001b
        :pswitch_4f  #0000001c
        :pswitch_40  #0000001d
        :pswitch_3c  #0000001e
        :pswitch_38  #0000001f
    .end packed-switch
.end method

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
    .registers 3

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValue;->asByteInput()Lcom/s1243808733/android/dex/util/ByteInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/util/ByteInput;)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/EncodedValue;I)V
    .registers 4

    .line 72
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/EncodedValue;->asByteInput()Lcom/s1243808733/android/dex/util/ByteInput;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/util/ByteInput;I)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/util/ByteInput;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 53
    iput-object p1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dex/util/ByteInput;I)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 67
    iput-object p1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    .line 68
    iput p2, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    return-void
.end method

.method private checkType(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected %x but was %x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
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

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->in:Lcom/s1243808733/android/dex/util/ByteInput;

    invoke-interface {v0}, Lcom/s1243808733/android/dex/util/ByteInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 81
    and-int/lit8 v1, v0, 0x1f

    iput v1, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    .line 82
    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->arg:I

    .line 84
    :cond_0
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

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->peek()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 297
    :pswitch_0
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/s1243808733/android/dex/EncodedValueReader;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readByte()B

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 241
    :pswitch_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readShort()S

    goto :goto_0

    .line 244
    :pswitch_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readChar()C

    goto :goto_0

    .line 247
    :pswitch_4
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readInt()I

    goto :goto_0

    .line 250
    :pswitch_5
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readLong()J

    goto :goto_0

    .line 253
    :pswitch_6
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readFloat()F

    goto :goto_0

    .line 256
    :pswitch_7
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readDouble()D

    goto :goto_0

    .line 259
    :pswitch_8
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethodType()I

    goto :goto_0

    .line 262
    :pswitch_9
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethodHandle()I

    goto :goto_0

    .line 265
    :pswitch_a
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readString()I

    goto :goto_0

    .line 268
    :pswitch_b
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readType()I

    goto :goto_0

    .line 271
    :pswitch_c
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readField()I

    goto :goto_0

    .line 274
    :pswitch_d
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readEnum()I

    goto :goto_0

    .line 277
    :pswitch_e
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readMethod()I

    goto :goto_0

    .line 280
    :pswitch_f
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readArray()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->skipValue()V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 285
    :pswitch_10
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readAnnotationName()I

    .line 287
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->skipValue()V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 291
    :pswitch_11
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readNull()V

    goto :goto_0

    .line 294
    :pswitch_12
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/EncodedValueReader;->readBoolean()Z

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.class public Lorg/antlr/v4/runtime/CodePointBuffer;
.super Ljava/lang/Object;
.source "CodePointBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/CodePointBuffer$Builder;,
        Lorg/antlr/v4/runtime/CodePointBuffer$Type;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final charBuffer:Ljava/nio/CharBuffer;

.field private final intBuffer:Ljava/nio/IntBuffer;

.field private final type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Lorg/antlr/v4/runtime/CodePointBuffer$Type;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    .line 32
    iput-object p2, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 33
    iput-object p3, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->charBuffer:Ljava/nio/CharBuffer;

    .line 34
    iput-object p4, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->intBuffer:Ljava/nio/IntBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/antlr/v4/runtime/CodePointBuffer$Type;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;Lorg/antlr/v4/runtime/CodePointBuffer$1;)V
    .registers 6

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/antlr/v4/runtime/CodePointBuffer;-><init>(Lorg/antlr/v4/runtime/CodePointBuffer$Type;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public static builder(I)Lorg/antlr/v4/runtime/CodePointBuffer$Builder;
    .registers 3

    .line 131
    new-instance v0, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Builder;-><init>(ILorg/antlr/v4/runtime/CodePointBuffer$1;)V

    return-object v0
.end method

.method public static withBytes(Ljava/nio/ByteBuffer;)Lorg/antlr/v4/runtime/CodePointBuffer;
    .registers 4

    .line 38
    new-instance v0, Lorg/antlr/v4/runtime/CodePointBuffer;

    sget-object v1, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->BYTE:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lorg/antlr/v4/runtime/CodePointBuffer;-><init>(Lorg/antlr/v4/runtime/CodePointBuffer$Type;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V

    return-object v0
.end method

.method public static withChars(Ljava/nio/CharBuffer;)Lorg/antlr/v4/runtime/CodePointBuffer;
    .registers 4

    .line 42
    new-instance v0, Lorg/antlr/v4/runtime/CodePointBuffer;

    sget-object v1, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->CHAR:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lorg/antlr/v4/runtime/CodePointBuffer;-><init>(Lorg/antlr/v4/runtime/CodePointBuffer$Type;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V

    return-object v0
.end method

.method public static withInts(Ljava/nio/IntBuffer;)Lorg/antlr/v4/runtime/CodePointBuffer;
    .registers 4

    .line 46
    new-instance v0, Lorg/antlr/v4/runtime/CodePointBuffer;

    sget-object v1, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->INT:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p0}, Lorg/antlr/v4/runtime/CodePointBuffer;-><init>(Lorg/antlr/v4/runtime/CodePointBuffer$Type;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V

    return-object v0
.end method


# virtual methods
.method arrayOffset()I
    .registers 3

    .line 104
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 110
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v0

    return v0

    .line 112
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_22
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    return v0

    .line 106
    :cond_29
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method byteArray()[B
    .registers 2

    .line 117
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method charArray()[C
    .registers 2

    .line 122
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    return-object v0
.end method

.method public get(I)I
    .registers 4

    .line 88
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 94
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    return p1

    .line 96
    :cond_1a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not reached"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_22
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->get(I)C

    move-result p1

    return p1

    .line 90
    :cond_29
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method getType()Lorg/antlr/v4/runtime/CodePointBuffer$Type;
    .registers 2

    .line 100
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    return-object v0
.end method

.method intArray()[I
    .registers 2

    .line 127
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    return-object v0
.end method

.method public position()I
    .registers 3

    .line 50
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 56
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    return v0

    .line 58
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_22
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    return v0

    .line 52
    :cond_29
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .registers 4

    .line 62
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    goto :goto_25

    .line 70
    :cond_14
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_25

    .line 67
    :cond_1a
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_25

    .line 64
    :cond_20
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_25
    return-void
.end method

.method public remaining()I
    .registers 3

    .line 76
    sget-object v0, Lorg/antlr/v4/runtime/CodePointBuffer$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->type:Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 82
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    return v0

    .line 84
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_22
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    return v0

    .line 78
    :cond_29
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

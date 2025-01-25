.class public final Lcom/s1243808733/android/dx/dex/code/SwitchData;
.super Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;
.source "SwitchData.java"


# instance fields
.field private final cases:Lcom/s1243808733/android/dx/util/IntList;

.field private final packed:Z

.field private final targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

.field private final user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Lcom/s1243808733/android/dx/util/IntList;[Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V
    .registers 6

    .line 63
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    if-eqz p2, :cond_44

    if-eqz p3, :cond_3c

    if-eqz p4, :cond_34

    .line 77
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result p1

    .line 79
    array-length v0, p4

    if-ne p1, v0, :cond_2c

    const v0, 0xffff

    if-gt p1, v0, :cond_24

    .line 87
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 88
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    .line 89
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 90
    invoke-static {p3}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->shouldPack(Lcom/s1243808733/android/dx/util/IntList;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packed:Z

    return-void

    .line 84
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too many cases"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cases / targets mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_34
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "targets == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_3c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cases == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_44
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "user == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static packedCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J
    .registers 6

    .line 211
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    int-to-long v1, v1

    .line 213
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result p0

    int-to-long v3, p0

    sub-long/2addr v3, v1

    const-wide/16 v0, 0x1

    add-long/2addr v3, v0

    const-wide/16 v0, 0x2

    mul-long v3, v3, v0

    const-wide/16 v0, 0x4

    add-long/2addr v3, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, v3, v0

    if-gtz p0, :cond_24

    goto :goto_26

    :cond_24
    const-wide/16 v3, -0x1

    :goto_26
    return-wide v3
.end method

.method private static shouldPack(Lcom/s1243808733/android/dx/util/IntList;)Z
    .registers 8

    .line 240
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_9

    return v2

    .line 246
    :cond_9
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packedCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J

    move-result-wide v0

    .line 247
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->sparseCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v0, v5

    if-ltz p0, :cond_23

    .line 256
    const-wide/16 v5, 0x5

    mul-long v3, v3, v5

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    cmp-long p0, v0, v3

    if-gtz p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    return v2
.end method

.method private static sparseCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J
    .registers 5

    .line 227
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x4

    mul-long v0, v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 5

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_2a

    .line 168
    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 174
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public codeSize()I
    .registers 3

    .line 96
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packedCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J

    move-result-wide v0

    goto :goto_11

    .line 97
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->sparseCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J

    move-result-wide v0

    :goto_11
    long-to-int v1, v0

    return v1
.end method

.method public isPacked()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packed:Z

    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 7

    .line 180
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result p1

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    array-length v1, v1

    .line 184
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v2, :cond_17

    const-string v2, "packed"

    goto :goto_19

    :cond_17
    const-string v2, "sparse"

    :goto_19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v2, "-switch-payload // for switch @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_5d

    .line 189
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v3

    .line 191
    const-string v4, "\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v4, " // "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sub-int/2addr v3, p1

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 199
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 6

    .line 149
    new-instance p1, Lcom/s1243808733/android/dx/dex/code/SwitchData;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/s1243808733/android/dx/dex/code/SwitchData;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Lcom/s1243808733/android/dx/util/IntList;[Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    return-object p1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 10

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 104
    sget-object v1, Lcom/s1243808733/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/s1243808733/android/dx/dex/code/Dop;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->codeSize()I

    move-result v1

    .line 105
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    array-length v2, v2

    .line 107
    iget-boolean v3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packed:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5c

    if-nez v2, :cond_1c

    const/4 v3, 0x0

    goto :goto_22

    .line 108
    :cond_1c
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    :goto_22
    if-nez v2, :cond_26

    const/4 v2, 0x0

    goto :goto_2e

    .line 109
    :cond_26
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    :goto_2e
    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 112
    const/16 v5, 0x100

    invoke-interface {p1, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 113
    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 114
    invoke-interface {p1, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    const/4 v5, 0x0

    :goto_3d
    if-ge v4, v2, :cond_84

    .line 119
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v6, v5}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v6

    add-int v7, v3, v4

    if-le v6, v7, :cond_4b

    move v6, v1

    goto :goto_56

    .line 125
    :cond_4b
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v6

    sub-int/2addr v6, v0

    add-int/lit8 v5, v5, 0x1

    .line 129
    :goto_56
    invoke-interface {p1, v6}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 132
    :cond_5c
    const/16 v1, 0x200

    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 133
    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    const/4 v1, 0x0

    :goto_65
    if-ge v1, v2, :cond_73

    .line 136
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-interface {p1, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_73
    :goto_73
    if-ge v4, v2, :cond_84

    .line 140
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v1

    .line 141
    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    :cond_84
    return-void
.end method

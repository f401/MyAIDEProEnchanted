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
    .registers 7

    .line 63
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "user == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p3, :cond_1

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cases == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    if-nez p4, :cond_2

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targets == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    .line 79
    array-length v1, p4

    if-eq v0, v1, :cond_3

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cases / targets mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3
    const v1, 0xffff

    if-le v0, v1, :cond_4

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too many cases"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_4
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 88
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    .line 89
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 90
    invoke-static {p3}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->shouldPack(Lcom/s1243808733/android/dx/util/IntList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packed:Z

    return-void
.end method

.method private static packedCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J
    .registers 5

    .line 211
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    int-to-long v2, v1

    .line 213
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    int-to-long v0, v0

    .line 214
    sub-long/2addr v0, v2

    const/4 v2, 0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/4 v2, 0x2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/4 v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 216
    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method private static shouldPack(Lcom/s1243808733/android/dx/util/IntList;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    .line 242
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packedCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J

    move-result-wide v2

    .line 247
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->sparseCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J

    move-result-wide v4

    .line 256
    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    const/4 v6, 0x5

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const/4 v6, 0x4

    int-to-long v6, v6

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static sparseCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J
    .registers 5

    .line 227
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    .line 229
    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    const/4 v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    array-length v2, v0

    .line 167
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    const-string v3, "\n    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public codeSize()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 96
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packedCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->sparseCodeSize(Lcom/s1243808733/android/dx/util/IntList;)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public isPacked()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packed:Z

    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    array-length v3, v0

    .line 184
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v0, :cond_0

    const-string v0, "packed"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v0, "-switch-payload // for switch @ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_1

    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    const-string v0, "sparse"

    goto :goto_0

    .line 189
    :cond_1
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v4

    .line 190
    const-string v5, "\n  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v5, " // "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sub-int/2addr v4, v1

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 149
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/SwitchData;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/code/SwitchData;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Lcom/s1243808733/android/dx/util/IntList;[Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->user:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v6

    .line 104
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/s1243808733/android/dx/dex/code/Dop;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->codeSize()I

    move-result v2

    .line 105
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    array-length v3, v0

    .line 107
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v0, :cond_5

    .line 108
    if-nez v3, :cond_1

    move v5, v1

    .line 109
    :goto_0
    if-nez v3, :cond_2

    move v0, v1

    .line 110
    :goto_1
    sub-int/2addr v0, v5

    add-int/lit8 v7, v0, 0x1

    .line 112
    const/16 v0, 0x100

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 113
    invoke-interface {p1, v7}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 114
    invoke-interface {p1, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    move v4, v1

    move v3, v1

    .line 117
    :goto_2
    if-lt v4, v7, :cond_3

    .line 139
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    move v5, v0

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    goto :goto_1

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 120
    add-int v1, v5, v4

    if-le v0, v1, :cond_4

    move v0, v2

    move v1, v3

    .line 129
    :goto_3
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 117
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v3, v1

    goto :goto_2

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    sub-int/2addr v0, v6

    .line 126
    add-int/lit8 v1, v3, 0x1

    goto :goto_3

    .line 132
    :cond_5
    const/16 v0, 0x200

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 133
    invoke-interface {p1, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    move v0, v1

    .line 135
    :goto_4
    if-lt v0, v3, :cond_6

    .line 139
    :goto_5
    if-ge v1, v3, :cond_0

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->targets:[Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 141
    sub-int/2addr v0, v6

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 136
    :cond_6
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/SwitchData;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

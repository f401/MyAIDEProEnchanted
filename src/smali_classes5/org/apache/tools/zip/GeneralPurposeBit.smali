.class public final Lorg/apache/tools/zip/GeneralPurposeBit;
.super Ljava/lang/Object;
.source "GeneralPurposeBit.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DATA_DESCRIPTOR_FLAG:I = 0x8

.field private static final ENCRYPTION_FLAG:I = 0x1

.field private static final STRONG_ENCRYPTION_FLAG:I = 0x40

.field public static final UFT8_NAMES_FLAG:I = 0x800


# instance fields
.field private dataDescriptorFlag:Z

.field private encryptionFlag:Z

.field private languageEncodingFlag:Z

.field private strongEncryptionFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 53
    iput-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 54
    iput-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 55
    iput-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 58
    return-void
.end method

.method public static parse([BI)Lorg/apache/tools/zip/GeneralPurposeBit;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-static {p0, p1}, Lorg/apache/tools/zip/ZipShort;->getValue([BI)I

    move-result v3

    .line 173
    new-instance v4, Lorg/apache/tools/zip/GeneralPurposeBit;

    invoke-direct {v4}, Lorg/apache/tools/zip/GeneralPurposeBit;-><init>()V

    .line 174
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_10
    invoke-virtual {v4, v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    .line 175
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_18
    invoke-virtual {v4, v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 176
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_2f

    move v0, v1

    :goto_20
    invoke-virtual {v4, v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->useStrongEncryption(Z)V

    .line 178
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_31

    :goto_27
    invoke-virtual {v4, v1}, Lorg/apache/tools/zip/GeneralPurposeBit;->useEncryption(Z)V

    .line 179
    return-object v4

    :cond_2b
    move v0, v2

    .line 174
    goto :goto_10

    :cond_2d
    move v0, v2

    .line 175
    goto :goto_18

    :cond_2f
    move v0, v2

    .line 176
    goto :goto_20

    :cond_31
    move v1, v2

    goto :goto_27
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .line 206
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 207
    :catch_5
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GeneralPurposeBit is not Cloneable?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode([BI)V
    .registers 8

    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-eqz v0, :cond_1c

    const/16 v0, 0x8

    .line 158
    :goto_7
    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-eqz v2, :cond_1e

    const/16 v2, 0x800

    .line 159
    :goto_d
    iget-boolean v3, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 160
    iget-boolean v4, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v4, :cond_15

    const/16 v1, 0x40

    .line 157
    :cond_15
    or-int/2addr v0, v2

    or-int/2addr v0, v3

    or-int/2addr v0, v1

    invoke-static {v0, p1, p2}, Lorg/apache/tools/zip/ZipShort;->putShort(I[BI)V

    .line 162
    return-void

    :cond_1c
    move v0, v1

    .line 157
    goto :goto_7

    :cond_1e
    move v2, v1

    .line 158
    goto :goto_d
.end method

.method public encode()[B
    .registers 3

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 144
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/GeneralPurposeBit;->encode([BI)V

    .line 145
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 192
    instance-of v1, p1, Lorg/apache/tools/zip/GeneralPurposeBit;

    if-eqz v1, :cond_20

    .line 193
    check-cast p1, Lorg/apache/tools/zip/GeneralPurposeBit;

    .line 194
    iget-boolean v1, p1, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-ne v1, v2, :cond_20

    iget-boolean v1, p1, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-ne v1, v2, :cond_20

    iget-boolean v1, p1, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-ne v1, v2, :cond_20

    iget-boolean v1, p1, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    .line 200
    :cond_20
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 184
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 185
    iget-boolean v1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 186
    iget-boolean v2, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 187
    iget-boolean v3, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 184
    mul-int/lit8 v0, v0, 0x11

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public useDataDescriptor(Z)V
    .registers 2

    .line 95
    iput-boolean p1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 96
    return-void
.end method

.method public useEncryption(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 114
    return-void
.end method

.method public useStrongEncryption(Z)V
    .registers 3

    .line 131
    iput-boolean p1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 132
    if-eqz p1, :cond_8

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->useEncryption(Z)V

    .line 135
    :cond_8
    return-void
.end method

.method public useUTF8ForNames(Z)V
    .registers 2

    .line 75
    iput-boolean p1, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 76
    return-void
.end method

.method public usesDataDescriptor()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return v0
.end method

.method public usesEncryption()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    return v0
.end method

.method public usesStrongEncryption()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public usesUTF8ForNames()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Lorg/apache/tools/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return v0
.end method

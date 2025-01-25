.class public Lcom/s1243808733/aide/functions/r8merger/DexHeader;
.super Ljava/lang/Object;
.source "DexHeader.java"


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field public checksum:Ljava/lang/String;

.field public classDefsOff:Ljava/lang/String;

.field public classDefsSize:Ljava/lang/String;

.field public dataOff:Ljava/lang/String;

.field public dataSize:Ljava/lang/String;

.field public endianTag:Ljava/lang/String;

.field public fieldIdsOff:Ljava/lang/String;

.field public fieldIdsSize:Ljava/lang/String;

.field public fileSize:Ljava/lang/String;

.field public headerSize:Ljava/lang/String;

.field public linkOff:Ljava/lang/String;

.field public linkSize:Ljava/lang/String;

.field public magic:Ljava/lang/String;

.field public mapOff:Ljava/lang/String;

.field public methodIdsOff:Ljava/lang/String;

.field public methodIdsSize:Ljava/lang/String;

.field public protoIdsOff:Ljava/lang/String;

.field public protoIdsSize:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public stringIdsOff:Ljava/lang/String;

.field public stringIdsSize:Ljava/lang/String;

.field public typeIdsOff:Ljava/lang/String;

.field public typeIdsSize:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 9

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    .line 44
    const/16 p1, 0xe1

    new-array v1, p1, [B

    .line 45
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_205

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_18
    const/16 v3, 0x10

    if-ge v2, p1, :cond_39

    .line 47
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v3, :cond_29

    .line 48
    :try_start_22
    iget-object v3, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_29
    iget-object v3, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_36} :catch_205

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 56
    :cond_39
    iget-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->magic:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->checksum:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->signature:Ljava/lang/String;

    .line 59
    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x48

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fileSize:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-virtual {v1, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->headerSize:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x58

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->endianTag:Ljava/lang/String;

    .line 62
    new-array v1, p1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v6, 0x60

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->linkSize:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v4, 0x68

    invoke-virtual {v1, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->linkOff:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x70

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->mapOff:Ljava/lang/String;

    .line 65
    new-array v1, p1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v6, 0x78

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->stringIdsSize:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-virtual {v1, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->stringIdsOff:Ljava/lang/String;

    .line 67
    new-array v1, p1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v6, 0x88

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->typeIdsSize:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v4, 0x90

    invoke-virtual {v1, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->typeIdsOff:Ljava/lang/String;

    .line 69
    new-array v1, p1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v6, 0x98

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->protoIdsSize:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v4, 0xa0

    invoke-virtual {v1, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->protoIdsOff:Ljava/lang/String;

    .line 71
    new-array v1, p1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v6, 0xa8

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fieldIdsSize:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v4, 0xb0

    invoke-virtual {v1, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fieldIdsOff:Ljava/lang/String;

    .line 73
    new-array v1, p1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v6, 0xb8

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->methodIdsSize:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v4, 0xc0

    invoke-virtual {v1, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->methodIdsOff:Ljava/lang/String;

    .line 75
    new-array v1, p1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0xc0

    const/16 v6, 0xc8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->classDefsSize:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    const/16 v5, 0xd0

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->classDefsOff:Ljava/lang/String;

    .line 77
    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v4, 0xd0

    const/16 v5, 0xd8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->dataSize:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v0, 0xd8

    const/16 v1, 0xe0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->dataOff:Ljava/lang/String;

    return-void

    :catch_205
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private fixLength(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_22

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v2, 0x30

    if-ne p1, v2, :cond_22

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 86
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

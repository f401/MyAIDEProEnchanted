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
    .registers 11

    const/16 v6, 0x40

    const/16 v5, 0x18

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/16 v7, 0x10

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    .line 44
    const/16 v2, 0xe1

    new-array v2, v2, [B

    .line 45
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move v0, v1

    .line 46
    :goto_0
    array-length v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v3, :cond_0

    .line 56
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->magic:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->checksum:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->signature:Ljava/lang/String;

    .line 59
    const-string v0, "%d"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x48

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fileSize:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0x48

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->headerSize:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    const/16 v3, 0x58

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->endianTag:Ljava/lang/String;

    .line 62
    const-string v0, "%d"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x58

    const/16 v6, 0x60

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->linkSize:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0x60

    const/16 v3, 0x68

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->linkOff:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0x68

    const/16 v3, 0x70

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->mapOff:Ljava/lang/String;

    .line 65
    const-string v0, "%d"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x70

    const/16 v6, 0x78

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->stringIdsSize:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->stringIdsOff:Ljava/lang/String;

    .line 67
    const-string v0, "%d"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    const/16 v6, 0x88

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->typeIdsSize:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0x88

    const/16 v3, 0x90

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->typeIdsOff:Ljava/lang/String;

    .line 69
    const-string v0, "%d"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x90

    const/16 v6, 0x98

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->protoIdsSize:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0x98

    const/16 v3, 0xa0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->protoIdsOff:Ljava/lang/String;

    .line 71
    const-string v0, "%d"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0xa0

    const/16 v6, 0xa8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fieldIdsSize:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0xa8

    const/16 v3, 0xb0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fieldIdsOff:Ljava/lang/String;

    .line 73
    const-string v0, "%d"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0xb0

    const/16 v6, 0xb8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->methodIdsSize:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0xb8

    const/16 v3, 0xc0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->methodIdsOff:Ljava/lang/String;

    .line 75
    const-string v0, "%d"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0xc0

    const/16 v6, 0xc8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->classDefsSize:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0xc8

    const/16 v3, 0xd0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->classDefsOff:Ljava/lang/String;

    .line 77
    const-string v0, "%d"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0xd0

    const/16 v6, 0xd8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->dataSize:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0xd8

    const/16 v2, 0xe0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->fixLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->dataOff:Ljava/lang/String;

    :goto_1
    return-void

    .line 47
    :cond_0
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    if-ge v3, v7, :cond_1

    .line 48
    :try_start_1
    iget-object v3, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/aide/functions/r8merger/DexHeader;->builder:Ljava/lang/StringBuilder;

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private fixLength(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

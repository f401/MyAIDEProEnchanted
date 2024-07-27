.class public Lcom/sun/tools/javac/util/UnsharedNameTable;
.super Lcom/sun/tools/javac/util/Name$Table;
.source "UnsharedNameTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;
    }
.end annotation


# instance fields
.field private hashMask:I

.field private hashes:[Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

.field public index:I


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/util/Names;)V
    .registers 3

    .line 76
    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/util/UnsharedNameTable;-><init>(Lcom/sun/tools/javac/util/Names;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Names;I)V
    .registers 4

    .line 70
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/Name$Table;-><init>(Lcom/sun/tools/javac/util/Names;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/util/UnsharedNameTable;->hashes:[Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    .line 71
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/sun/tools/javac/util/UnsharedNameTable;->hashMask:I

    .line 72
    new-array v0, p2, [Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    iput-object v0, p0, Lcom/sun/tools/javac/util/UnsharedNameTable;->hashes:[Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    .line 73
    return-void
.end method

.method public static create(Lcom/sun/tools/javac/util/Names;)Lcom/sun/tools/javac/util/Name$Table;
    .registers 2

    .line 42
    new-instance v0, Lcom/sun/tools/javac/util/UnsharedNameTable;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/UnsharedNameTable;-><init>(Lcom/sun/tools/javac/util/Names;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/util/UnsharedNameTable;->hashes:[Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    .line 146
    return-void
.end method

.method public fromChars([CII)Lcom/sun/tools/javac/util/Name;
    .registers 7

    const/4 v2, 0x0

    .line 82
    mul-int/lit8 v0, p3, 0x3

    new-array v0, v0, [B

    .line 83
    invoke-static {p1, p2, v0, v2, p3}, Lcom/sun/tools/javac/util/Convert;->chars2utf([CI[BII)I

    move-result v1

    .line 84
    invoke-virtual {p0, v0, v2, v1}, Lcom/sun/tools/javac/util/UnsharedNameTable;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public fromUtf([BII)Lcom/sun/tools/javac/util/Name;
    .registers 10

    const/4 v5, 0x0

    .line 89
    invoke-static {p1, p2, p3}, Lcom/sun/tools/javac/util/UnsharedNameTable;->hashValue([BII)I

    move-result v0

    iget v1, p0, Lcom/sun/tools/javac/util/UnsharedNameTable;->hashMask:I

    and-int v4, v0, v1

    .line 91
    iget-object v0, p0, Lcom/sun/tools/javac/util/UnsharedNameTable;->hashes:[Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    aget-object v0, v0, v4

    .line 93
    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, v0

    .line 98
    :goto_0
    if-eqz v3, :cond_0

    .line 99
    if-nez v3, :cond_2

    .line 124
    :cond_0
    new-array v1, p3, [B

    .line 125
    invoke-static {p1, p2, v1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget v3, p0, Lcom/sun/tools/javac/util/UnsharedNameTable;->index:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/UnsharedNameTable;->index:I

    new-instance v0, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;

    invoke-direct {v0, p0, v1, v3}, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;-><init>(Lcom/sun/tools/javac/util/UnsharedNameTable;[BI)V

    .line 128
    iget-object v1, v0, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    invoke-static {p1, p2, v1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    new-instance v1, Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;-><init>(Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;)V

    .line 132
    if-nez v2, :cond_6

    .line 133
    iget-object v2, p0, Lcom/sun/tools/javac/util/UnsharedNameTable;->hashes:[Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    aput-object v1, v2, v4

    .line 140
    :cond_1
    :goto_1
    return-object v0

    .line 103
    :cond_2
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;

    .line 105
    if-nez v0, :cond_4

    .line 106
    if-ne v1, v3, :cond_3

    .line 107
    iget-object v1, p0, Lcom/sun/tools/javac/util/UnsharedNameTable;->hashes:[Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    iget-object v0, v3, Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    aput-object v0, v1, v4

    .line 121
    :goto_2
    iget-object v3, v3, Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    move-object v1, v0

    goto :goto_0

    .line 110
    :cond_3
    const-string v0, "previousNonNullTableEntry cannot be null here."

    invoke-static {v2, v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v0, v3, Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    iput-object v0, v2, Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    move-object v0, v1

    goto :goto_2

    .line 115
    :cond_4
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;->getByteLength()I

    move-result v2

    if-ne v2, p3, :cond_5

    iget-object v2, v0, Lcom/sun/tools/javac/util/UnsharedNameTable$NameImpl;->bytes:[B

    invoke-static {v2, v5, p1, p2, p3}, Lcom/sun/tools/javac/util/UnsharedNameTable;->equals([BI[BII)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    move-object v0, v1

    move-object v2, v3

    .line 118
    goto :goto_2

    .line 136
    :cond_6
    iget-object v3, v2, Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    const-string v4, "previousNonNullTableEntry.next must be null."

    invoke-static {v3, v4}, Lcom/sun/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object v1, v2, Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;->next:Lcom/sun/tools/javac/util/UnsharedNameTable$HashEntry;

    goto :goto_1
.end method

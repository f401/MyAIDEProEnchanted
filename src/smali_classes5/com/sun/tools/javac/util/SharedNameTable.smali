.class public Lcom/sun/tools/javac/util/SharedNameTable;
.super Lcom/sun/tools/javac/util/Name$Table;
.source "SharedNameTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;
    }
.end annotation


# static fields
.field private static freelist:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/sun/tools/javac/util/SharedNameTable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public bytes:[B

.field private hashMask:I

.field private hashes:[Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

.field private nc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/util/SharedNameTable;->freelist:Lcom/sun/tools/javac/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Names;)V
    .registers 4

    .line 90
    const v0, 0x8000

    const/high16 v1, 0x20000

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/tools/javac/util/SharedNameTable;-><init>(Lcom/sun/tools/javac/util/Names;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/util/Names;II)V
    .registers 5

    .line 82
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/util/Name$Table;-><init>(Lcom/sun/tools/javac/util/Names;)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/util/SharedNameTable;->nc:I

    .line 83
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/sun/tools/javac/util/SharedNameTable;->hashMask:I

    .line 84
    new-array v0, p2, [Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    iput-object v0, p0, Lcom/sun/tools/javac/util/SharedNameTable;->hashes:[Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    .line 85
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/sun/tools/javac/util/SharedNameTable;->bytes:[B

    .line 87
    return-void
.end method

.method public static create(Lcom/sun/tools/javac/util/Names;)Lcom/sun/tools/javac/util/SharedNameTable;
    .registers 3

    const-class v0, Lcom/sun/tools/javac/util/SharedNameTable;

    monitor-enter v0

    .line 45
    :cond_3
    :try_start_3
    sget-object v0, Lcom/sun/tools/javac/util/SharedNameTable;->freelist:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 46
    sget-object v0, Lcom/sun/tools/javac/util/SharedNameTable;->freelist:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/SharedNameTable;

    .line 47
    sget-object v1, Lcom/sun/tools/javac/util/SharedNameTable;->freelist:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    sput-object v1, Lcom/sun/tools/javac/util/SharedNameTable;->freelist:Lcom/sun/tools/javac/util/List;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_2c

    .line 48
    if-eqz v0, :cond_3

    .line 49
    const-class v1, Lcom/sun/tools/javac/util/SharedNameTable;

    monitor-exit v1

    .line 52
    :goto_22
    return-object v0

    :cond_23
    :try_start_23
    new-instance v0, Lcom/sun/tools/javac/util/SharedNameTable;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/SharedNameTable;-><init>(Lcom/sun/tools/javac/util/Names;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    const-class v1, Lcom/sun/tools/javac/util/SharedNameTable;

    monitor-exit v1

    goto :goto_22

    .line 44
    :catchall_2c
    move-exception v0

    const-class v1, Lcom/sun/tools/javac/util/SharedNameTable;

    monitor-exit v1

    throw v0
.end method

.method private static dispose(Lcom/sun/tools/javac/util/SharedNameTable;)V
    .registers 3

    const-class v0, Lcom/sun/tools/javac/util/SharedNameTable;

    monitor-enter v0

    .line 56
    :try_start_3
    sget-object v0, Lcom/sun/tools/javac/util/SharedNameTable;->freelist:Lcom/sun/tools/javac/util/List;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/util/SharedNameTable;->freelist:Lcom/sun/tools/javac/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    .line 57
    const-class v0, Lcom/sun/tools/javac/util/SharedNameTable;

    monitor-exit v0

    return-void

    .line 55
    :catchall_14
    move-exception v0

    const-class v1, Lcom/sun/tools/javac/util/SharedNameTable;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 158
    invoke-static {p0}, Lcom/sun/tools/javac/util/SharedNameTable;->dispose(Lcom/sun/tools/javac/util/SharedNameTable;)V

    .line 159
    return-void
.end method

.method public fromChars([CII)Lcom/sun/tools/javac/util/Name;
    .registers 10

    const/4 v4, 0x0

    .line 95
    iget v2, p0, Lcom/sun/tools/javac/util/SharedNameTable;->nc:I

    .line 96
    iget-object v0, p0, Lcom/sun/tools/javac/util/SharedNameTable;->bytes:[B

    .line 97
    :goto_5
    mul-int/lit8 v1, p3, 0x3

    add-int/2addr v1, v2

    array-length v3, v0

    if-lt v1, v3, :cond_18

    .line 99
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 100
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput-object v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->bytes:[B

    move-object v0, v1

    .line 102
    goto :goto_5

    .line 103
    :cond_18
    invoke-static {p1, p2, v0, v2, p3}, Lcom/sun/tools/javac/util/Convert;->chars2utf([CI[BII)I

    move-result v1

    sub-int v3, v1, v2

    .line 104
    invoke-static {v0, v2, v3}, Lcom/sun/tools/javac/util/SharedNameTable;->hashValue([BII)I

    move-result v1

    iget v4, p0, Lcom/sun/tools/javac/util/SharedNameTable;->hashMask:I

    and-int/2addr v4, v1

    .line 105
    iget-object v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->hashes:[Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    aget-object v1, v1, v4

    .line 106
    :goto_29
    if-eqz v1, :cond_3c

    .line 107
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->getByteLength()I

    move-result v5

    if-ne v5, v3, :cond_39

    iget v5, v1, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->index:I

    .line 108
    invoke-static {v0, v5, v0, v2, v3}, Lcom/sun/tools/javac/util/SharedNameTable;->equals([BI[BII)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 109
    :cond_39
    iget-object v1, v1, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->next:Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    goto :goto_29

    .line 111
    :cond_3c
    if-nez v1, :cond_5c

    .line 112
    new-instance v0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;-><init>(Lcom/sun/tools/javac/util/SharedNameTable;)V

    .line 113
    iput v2, v0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->index:I

    .line 114
    iput v3, v0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->length:I

    .line 115
    iget-object v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->hashes:[Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->next:Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    .line 116
    iget-object v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->hashes:[Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    aput-object v0, v1, v4

    .line 117
    add-int v1, v2, v3

    iput v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->nc:I

    .line 118
    if-nez v3, :cond_5b

    .line 119
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->nc:I

    .line 122
    :cond_5b
    :goto_5b
    return-object v0

    :cond_5c
    move-object v0, v1

    goto :goto_5b
.end method

.method public fromUtf([BII)Lcom/sun/tools/javac/util/Name;
    .registers 10

    const/4 v5, 0x0

    .line 127
    invoke-static {p1, p2, p3}, Lcom/sun/tools/javac/util/SharedNameTable;->hashValue([BII)I

    move-result v0

    iget v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->hashMask:I

    and-int v2, v0, v1

    .line 128
    iget-object v0, p0, Lcom/sun/tools/javac/util/SharedNameTable;->hashes:[Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    aget-object v1, v0, v2

    .line 129
    iget-object v0, p0, Lcom/sun/tools/javac/util/SharedNameTable;->bytes:[B

    .line 130
    :goto_f
    if-eqz v1, :cond_22

    .line 131
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->getByteLength()I

    move-result v3

    if-ne v3, p3, :cond_1f

    iget v3, v1, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->index:I

    invoke-static {v0, v3, p1, p2, p3}, Lcom/sun/tools/javac/util/SharedNameTable;->equals([BI[BII)Z

    move-result v3

    if-nez v3, :cond_22

    .line 132
    :cond_1f
    iget-object v1, v1, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->next:Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    goto :goto_f

    .line 134
    :cond_22
    if-nez v1, :cond_59

    .line 135
    iget v3, p0, Lcom/sun/tools/javac/util/SharedNameTable;->nc:I

    .line 136
    :goto_26
    add-int v1, v3, p3

    array-length v4, v0

    if-le v1, v4, :cond_38

    .line 138
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 139
    array-length v4, v0

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput-object v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->bytes:[B

    move-object v0, v1

    .line 141
    goto :goto_26

    .line 142
    :cond_38
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    new-instance v0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;-><init>(Lcom/sun/tools/javac/util/SharedNameTable;)V

    .line 144
    iput v3, v0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->index:I

    .line 145
    iput p3, v0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->length:I

    .line 146
    iget-object v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->hashes:[Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;->next:Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    .line 147
    iget-object v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->hashes:[Lcom/sun/tools/javac/util/SharedNameTable$NameImpl;

    aput-object v0, v1, v2

    .line 148
    add-int v1, v3, p3

    iput v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->nc:I

    .line 149
    if-nez p3, :cond_58

    .line 150
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/util/SharedNameTable;->nc:I

    .line 153
    :cond_58
    :goto_58
    return-object v0

    :cond_59
    move-object v0, v1

    goto :goto_58
.end method

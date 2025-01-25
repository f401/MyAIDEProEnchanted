.class public Lcom/android/apksig/internal/jar/ManifestParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/jar/ManifestParser$Attribute;,
        Lcom/android/apksig/internal/jar/ManifestParser$Section;
    }
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private mBufferedLine:[B

.field private mEndOffset:I

.field private final mManifest:[B

.field private mOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/apksig/internal/jar/ManifestParser;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mManifest:[B

    iput p2, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mOffset:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mEndOffset:I

    return-void
.end method

.method private static concat([B[BII)[B
    .registers 7

    const/4 v2, 0x0

    array-length v0, p0

    add-int/2addr v0, p3

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static parseAttr(Ljava/lang/String;)Lcom/android/apksig/internal/jar/ManifestParser$Attribute;
    .registers 5

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_11

    new-instance v0, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private readAttribute()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readAttributeBytes()[B

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    array-length v0, v1

    if-nez v0, :cond_e

    const-string v0, ""

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_7
.end method

.method private readAttributeBytes()[B
    .registers 8

    const/16 v6, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    if-eqz v0, :cond_11

    array-length v0, v0

    if-nez v0, :cond_11

    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    :cond_e
    sget-object v0, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    invoke-direct {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readLine()[B

    move-result-object v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    if-eqz v0, :cond_60

    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    goto :goto_10

    :cond_1e
    array-length v2, v0

    if-nez v2, :cond_2a

    iget-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    if-eqz v0, :cond_e

    sget-object v1, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    goto :goto_10

    :cond_2a
    iget-object v2, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    if-nez v2, :cond_3c

    :goto_2e
    invoke-direct {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readLine()[B

    move-result-object v1

    if-eqz v1, :cond_10

    array-length v2, v1

    if-nez v2, :cond_51

    sget-object v1, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    goto :goto_10

    :cond_3c
    array-length v3, v0

    if-eqz v3, :cond_43

    aget-byte v3, v0, v4

    if-eq v3, v6, :cond_47

    :cond_43
    iput-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    move-object v0, v2

    goto :goto_10

    :cond_47
    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v0, v5, v1}, Lcom/android/apksig/internal/jar/ManifestParser;->concat([B[BII)[B

    move-result-object v0

    goto :goto_2e

    :cond_51
    aget-byte v2, v1, v4

    if-ne v2, v6, :cond_5d

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v5, v2}, Lcom/android/apksig/internal/jar/ManifestParser;->concat([B[BII)[B

    move-result-object v0

    goto :goto_2e

    :cond_5d
    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    goto :goto_10

    :cond_60
    move-object v0, v1

    goto :goto_10
.end method

.method private readLine()[B
    .registers 9

    const/16 v7, 0xa

    const/4 v5, -0x1

    iget v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mOffset:I

    iget v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mEndOffset:I

    if-lt v1, v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    move v0, v1

    :goto_c
    iget v2, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mEndOffset:I

    if-ge v0, v2, :cond_37

    iget-object v4, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mManifest:[B

    aget-byte v3, v4, v0

    const/16 v6, 0xd

    if-ne v3, v6, :cond_2e

    add-int/lit8 v3, v0, 0x1

    if-ge v3, v2, :cond_43

    aget-byte v4, v4, v3

    if-ne v4, v7, :cond_43

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    :goto_23
    if-ne v4, v5, :cond_3a

    move v0, v2

    move v4, v2

    :goto_27
    iput v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mOffset:I

    if-ne v4, v1, :cond_3c

    sget-object v0, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    goto :goto_a

    :cond_2e
    if-ne v3, v7, :cond_34

    add-int/lit8 v3, v0, 0x1

    move v4, v0

    goto :goto_23

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_37
    move v4, v5

    move v3, v5

    goto :goto_23

    :cond_3a
    move v0, v3

    goto :goto_27

    :cond_3c
    iget-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mManifest:[B

    invoke-static {v0, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_a

    :cond_43
    move v4, v0

    goto :goto_23
.end method


# virtual methods
.method public readAllSections()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readSection()Lcom/android/apksig/internal/jar/ManifestParser$Section;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    return-object v0
.end method

.method public readSection()Lcom/android/apksig/internal/jar/ManifestParser$Section;
    .registers 5

    :cond_0
    iget v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mOffset:I

    invoke-direct {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readAttribute()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    invoke-static {v0}, Lcom/android/apksig/internal/jar/ManifestParser;->parseAttr(Ljava/lang/String;)Lcom/android/apksig/internal/jar/ManifestParser$Attribute;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readAttribute()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_15

    :cond_28
    new-instance v0, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    iget v3, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mOffset:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/apksig/internal/jar/ManifestParser$Section;-><init>(IILjava/util/List;)V

    goto :goto_9
.end method

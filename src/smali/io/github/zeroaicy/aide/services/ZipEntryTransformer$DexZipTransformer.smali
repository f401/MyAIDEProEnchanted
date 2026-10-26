.class public Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;
.super Ljava/lang/Object;
.source "ZipEntryTransformer.java"

# interfaces
.implements Lio/github/zeroaicy/aide/services/ZipEntryTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/aide/services/ZipEntryTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DexZipTransformer"
.end annotation


# instance fields
.field protected classesCountDex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->classesCountDex:I

    return-void
.end method

.method private isNotClassesDex(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 2

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const-string v1, "classes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public transformer(Ljava/util/zip/ZipEntry;Lio/github/zeroaicy/aide/services/PackagingStream;)Ljava/util/zip/ZipEntry;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 20
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-direct {p0, p1, v0}, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->isNotClassesDex(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {p2, v0}, Lio/github/zeroaicy/aide/services/PackagingStream;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 37
    :cond_0
    :goto_0
    return-object p1

    .line 30
    :cond_1
    iget v0, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->classesCountDex:I

    if-le v0, v3, :cond_2

    const-string v1, "classes%d.dex"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_1
    invoke-virtual {p2, v0}, Lio/github/zeroaicy/aide/services/PackagingStream;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->classesCountDex:I

    .line 33
    invoke-virtual {p2}, Lio/github/zeroaicy/aide/services/PackagingStream;->getZipEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    .line 34
    iget v0, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->classesCountDex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->classesCountDex:I

    .line 35
    const-string v1, "classes%d.dex"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 30
    :cond_2
    const-string v0, "classes.dex"

    goto :goto_1

    .line 37
    :cond_3
    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

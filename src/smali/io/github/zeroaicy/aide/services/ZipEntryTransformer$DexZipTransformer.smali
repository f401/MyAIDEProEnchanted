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
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->classesCountDex:I

    return-void
.end method

.method private isNotClassesDex(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .registers 3

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 45
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_25

    .line 46
    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 47
    const-string p1, "classes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 48
    const-string p1, ".dex"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x1

    :goto_26
    return p1
.end method


# virtual methods
.method public transformer(Ljava/util/zip/ZipEntry;Lio/github/zeroaicy/aide/services/PackagingStream;)Ljava/util/zip/ZipEntry;
    .registers 8

    .line 20
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-direct {p0, p1, v0}, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->isNotClassesDex(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 24
    invoke-virtual {p2, v0}, Lio/github/zeroaicy/aide/services/PackagingStream;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    const/4 p1, 0x0

    :cond_11
    return-object p1

    .line 30
    :cond_12
    iget p1, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->classesCountDex:I

    const/4 v0, 0x0

    const-string v1, "classes%d.dex"

    const/4 v2, 0x1

    if-le p1, v2, :cond_27

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    :cond_27
    const-string p1, "classes.dex"

    .line 32
    :goto_29
    invoke-virtual {p2, p1}, Lio/github/zeroaicy/aide/services/PackagingStream;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget v3, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->classesCountDex:I

    .line 33
    invoke-virtual {p2}, Lio/github/zeroaicy/aide/services/PackagingStream;->getZipEntryCount()I

    move-result v4

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_4a

    .line 34
    iget p1, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->classesCountDex:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;->classesCountDex:I

    .line 35
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    .line 37
    :cond_4a
    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.class public Lio/github/zeroaicy/aide/services/ZipEntryTransformer$NativeLibFileTransformer;
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
    name = "NativeLibFileTransformer"
.end annotation


# instance fields
.field private androidExtractNativeLibs:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean p1, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$NativeLibFileTransformer;->androidExtractNativeLibs:Z

    return-void
.end method


# virtual methods
.method public transformer(Ljava/util/zip/ZipEntry;Lio/github/zeroaicy/aide/services/PackagingStream;)Ljava/util/zip/ZipEntry;
    .locals 4

    .line 83
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "lib/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    invoke-virtual {p2, v0}, Lio/github/zeroaicy/aide/services/PackagingStream;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 97
    :cond_1
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$NativeLibFileTransformer;->androidExtractNativeLibs:Z

    if-nez v0, :cond_2

    .line 100
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

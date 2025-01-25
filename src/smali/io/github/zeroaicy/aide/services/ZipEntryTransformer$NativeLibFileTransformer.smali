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
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean p1, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$NativeLibFileTransformer;->androidExtractNativeLibs:Z

    return-void
.end method


# virtual methods
.method public transformer(Ljava/util/zip/ZipEntry;Lio/github/zeroaicy/aide/services/PackagingStream;)Ljava/util/zip/ZipEntry;
    .registers 7

    .line 83
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 85
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2b

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "lib/"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    :cond_2b
    invoke-virtual {p2, p1}, Lio/github/zeroaicy/aide/services/PackagingStream;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_33

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_33
    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 98
    iget-boolean p1, p0, Lio/github/zeroaicy/aide/services/ZipEntryTransformer$NativeLibFileTransformer;->androidExtractNativeLibs:Z

    if-nez p1, :cond_40

    .line 100
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    :cond_40
    return-object p2
.end method

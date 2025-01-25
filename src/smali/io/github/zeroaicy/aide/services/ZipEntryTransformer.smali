.class public interface abstract Lio/github/zeroaicy/aide/services/ZipEntryTransformer;
.super Ljava/lang/Object;
.source "ZipEntryTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/aide/services/ZipEntryTransformer$DexZipTransformer;,
        Lio/github/zeroaicy/aide/services/ZipEntryTransformer$NativeLibFileTransformer;,
        Lio/github/zeroaicy/aide/services/ZipEntryTransformer$ZipResourceTransformer;
    }
.end annotation


# virtual methods
.method public abstract transformer(Ljava/util/zip/ZipEntry;Lio/github/zeroaicy/aide/services/PackagingStream;)Ljava/util/zip/ZipEntry;
.end method

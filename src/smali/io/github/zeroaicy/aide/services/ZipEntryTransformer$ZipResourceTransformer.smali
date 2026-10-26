.class public Lio/github/zeroaicy/aide/services/ZipEntryTransformer$ZipResourceTransformer;
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
    name = "ZipResourceTransformer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformer(Ljava/util/zip/ZipEntry;Lio/github/zeroaicy/aide/services/PackagingStream;)Ljava/util/zip/ZipEntry;
    .locals 3

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p2, v1}, Lio/github/zeroaicy/aide/services/PackagingStream;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, v0

    .line 67
    :cond_0
    :goto_0
    return-object p1

    .line 65
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

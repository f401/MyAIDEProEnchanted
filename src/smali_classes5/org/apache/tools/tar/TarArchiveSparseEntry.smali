.class public Lorg/apache/tools/tar/TarArchiveSparseEntry;
.super Ljava/lang/Object;
.source "TarArchiveSparseEntry.java"

# interfaces
.implements Lorg/apache/tools/tar/TarConstants;


# instance fields
.field private isExtended:Z


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x1f8

    invoke-static {p1, v0}, Lorg/apache/tools/tar/TarUtils;->parseBoolean([BI)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/tar/TarArchiveSparseEntry;->isExtended:Z

    .line 58
    return-void
.end method


# virtual methods
.method public isExtended()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarArchiveSparseEntry;->isExtended:Z

    return v0
.end method

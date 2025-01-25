.class Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileInfo;
.super Ljava/lang/Object;
.source "FileBrowserListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/filebrowser/FileBrowserListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileInfo"
.end annotation


# instance fields
.field lastModification:J

.field listPos:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileInfo;->listPos:I

    .line 43
    iput-wide p2, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileInfo;->lastModification:J

    return-void
.end method

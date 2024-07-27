.class public Lcom/s1243808733/data/AppUpdateData$Data;
.super Ljava/lang/Object;
.source "AppUpdateData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AppUpdateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field private fileSize:J

.field private minVersion:I

.field private targetVersion:I

.field private updateLog:Ljava/lang/String;

.field private updateTime:J

.field private versionCode:J

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/s1243808733/data/AppUpdateData$Data;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/s1243808733/data/AppUpdateData$Data;->fileSize:J

    return-wide v0
.end method

.method public getMinVersion()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/s1243808733/data/AppUpdateData$Data;->minVersion:I

    return v0
.end method

.method public getTargetVersion()J
    .registers 3

    .line 92
    iget v0, p0, Lcom/s1243808733/data/AppUpdateData$Data;->targetVersion:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getUpdateLog()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/s1243808733/data/AppUpdateData$Data;->updateLog:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/s1243808733/data/AppUpdateData$Data;->updateTime:J

    return-wide v0
.end method

.method public getVersionCode()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/s1243808733/data/AppUpdateData$Data;->versionCode:J

    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/s1243808733/data/AppUpdateData$Data;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/s1243808733/data/AppUpdateData$Data;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 112
    iput-wide p1, p0, Lcom/s1243808733/data/AppUpdateData$Data;->fileSize:J

    return-void
.end method

.method public setMinVersion(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 80
    iput p1, p0, Lcom/s1243808733/data/AppUpdateData$Data;->minVersion:I

    return-void
.end method

.method public setTargetVersion(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 88
    iput p1, p0, Lcom/s1243808733/data/AppUpdateData$Data;->targetVersion:I

    return-void
.end method

.method public setUpdateLog(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/s1243808733/data/AppUpdateData$Data;->updateLog:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 120
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/s1243808733/data/AppUpdateData$Data;->updateTime:J

    return-void
.end method

.method public setVersionCode(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 64
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/s1243808733/data/AppUpdateData$Data;->versionCode:J

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/s1243808733/data/AppUpdateData$Data;->versionName:Ljava/lang/String;

    return-void
.end method

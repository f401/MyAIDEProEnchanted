.class public Lcom/s1243808733/data/AppUpdateData;
.super Ljava/lang/Object;
.source "AppUpdateData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/data/AppUpdateData$Data;
    }
.end annotation


# instance fields
.field private code:J

.field private data:Lcom/s1243808733/data/AppUpdateData$Data;

.field private msg:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()J
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/s1243808733/data/AppUpdateData;->code:J

    return-wide v0
.end method

.method public getData()Lcom/s1243808733/data/AppUpdateData$Data;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/s1243808733/data/AppUpdateData;->data:Lcom/s1243808733/data/AppUpdateData$Data;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/s1243808733/data/AppUpdateData;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 34
    iget-wide v0, p0, Lcom/s1243808733/data/AppUpdateData;->time:J

    return-wide v0
.end method

.method public setCode(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/s1243808733/data/AppUpdateData;->code:J

    return-void
.end method

.method public setData(Lcom/s1243808733/data/AppUpdateData$Data;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/data/AppUpdateData$Data;",
            ")V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/s1243808733/data/AppUpdateData;->data:Lcom/s1243808733/data/AppUpdateData$Data;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/s1243808733/data/AppUpdateData;->msg:Ljava/lang/String;

    return-void
.end method

.method public setTime(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/s1243808733/data/AppUpdateData;->time:J

    return-void
.end method

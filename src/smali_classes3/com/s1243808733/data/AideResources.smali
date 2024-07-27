.class public Lcom/s1243808733/data/AideResources;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/data/AideResources$Data;,
        Lcom/s1243808733/data/AideResources$Data$AndroidJar;,
        Lcom/s1243808733/data/AideResources$Data$Apk;,
        Lcom/s1243808733/data/AideResources$Data$Apk$Aide;,
        Lcom/s1243808733/data/AideResources$Data$Course;,
        Lcom/s1243808733/data/AideResources$Data$Course$Android;,
        Lcom/s1243808733/data/AideResources$Data$Course$Game;,
        Lcom/s1243808733/data/AideResources$Data$Course$Java;,
        Lcom/s1243808733/data/AideResources$Data$Course$Web;,
        Lcom/s1243808733/data/AideResources$Data$Docs;,
        Lcom/s1243808733/data/AideResources$Data$Ndk;,
        Lcom/s1243808733/data/AideResources$Data$Ndk$Default;,
        Lcom/s1243808733/data/AideResources$Data$Ndk$Gradle;,
        Lcom/s1243808733/data/AideResources$Data$Templates;,
        Lcom/s1243808733/data/AideResources$Data$Templates$Android;,
        Lcom/s1243808733/data/AideResources$Data$Templates$Website;
    }
.end annotation


# instance fields
.field private code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private data:Lcom/s1243808733/data/AideResources$Data;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private time:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/s1243808733/data/AideResources;->code:I

    return v0
.end method

.method public getData()Lcom/s1243808733/data/AideResources$Data;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/s1243808733/data/AideResources;->data:Lcom/s1243808733/data/AideResources$Data;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/s1243808733/data/AideResources;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/s1243808733/data/AideResources;->time:I

    return v0
.end method

.method public setCode(I)Lcom/s1243808733/data/AideResources;
    .registers 2

    .line 23
    iput p1, p0, Lcom/s1243808733/data/AideResources;->code:I

    .line 24
    return-object p0
.end method

.method public setData(Lcom/s1243808733/data/AideResources$Data;)Lcom/s1243808733/data/AideResources;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/s1243808733/data/AideResources;->data:Lcom/s1243808733/data/AideResources$Data;

    .line 51
    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/s1243808733/data/AideResources;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/s1243808733/data/AideResources;->msg:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public setTime(I)Lcom/s1243808733/data/AideResources;
    .registers 2

    .line 41
    iput p1, p0, Lcom/s1243808733/data/AideResources;->time:I

    .line 42
    return-object p0
.end method

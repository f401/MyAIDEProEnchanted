.class public Lcom/s1243808733/data/AideResources$Data$Templates;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Templates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/data/AideResources$Data$Templates$Android;,
        Lcom/s1243808733/data/AideResources$Data$Templates$Website;
    }
.end annotation


# instance fields
.field private android:Lcom/s1243808733/data/AideResources$Data$Templates$Android;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android"
    .end annotation
.end field

.field private cpp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cpp"
    .end annotation
.end field

.field private java:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "java"
    .end annotation
.end field

.field private javascript:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "javascript"
    .end annotation
.end field

.field private website:Lcom/s1243808733/data/AideResources$Data$Templates$Website;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "website"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroid()Lcom/s1243808733/data/AideResources$Data$Templates$Android;
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Templates;->android:Lcom/s1243808733/data/AideResources$Data$Templates$Android;

    return-object v0
.end method

.method public getCpp()Ljava/lang/String;
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Templates;->cpp:Ljava/lang/String;

    return-object v0
.end method

.method public getJava()Ljava/lang/String;
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Templates;->java:Ljava/lang/String;

    return-object v0
.end method

.method public getJavascript()Ljava/lang/String;
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Templates;->javascript:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Lcom/s1243808733/data/AideResources$Data$Templates$Website;
    .registers 2

    .line 443
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Templates;->website:Lcom/s1243808733/data/AideResources$Data$Templates$Website;

    return-object v0
.end method

.method public setAndroid(Lcom/s1243808733/data/AideResources$Data$Templates$Android;)Lcom/s1243808733/data/AideResources$Data$Templates;
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Templates;->android:Lcom/s1243808733/data/AideResources$Data$Templates$Android;

    .line 412
    return-object p0
.end method

.method public setCpp(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Templates;
    .registers 2

    .line 420
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Templates;->cpp:Ljava/lang/String;

    .line 421
    return-object p0
.end method

.method public setJava(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Templates;
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Templates;->java:Ljava/lang/String;

    .line 403
    return-object p0
.end method

.method public setJavascript(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Templates;
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Templates;->javascript:Ljava/lang/String;

    .line 430
    return-object p0
.end method

.method public setWebsite(Lcom/s1243808733/data/AideResources$Data$Templates$Website;)Lcom/s1243808733/data/AideResources$Data$Templates;
    .registers 2

    .line 438
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Templates;->website:Lcom/s1243808733/data/AideResources$Data$Templates$Website;

    .line 439
    return-object p0
.end method

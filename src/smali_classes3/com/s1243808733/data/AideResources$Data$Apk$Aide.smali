.class public Lcom/s1243808733/data/AideResources$Data$Apk$Aide;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data$Apk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aide"
.end annotation


# instance fields
.field private debug:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "debug"
    .end annotation
.end field

.field private release:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "release"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebug()Ljava/lang/String;
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Apk$Aide;->debug:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Apk$Aide;->release:Ljava/lang/String;

    return-object v0
.end method

.method public setDebug(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Apk$Aide;
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Apk$Aide;->debug:Ljava/lang/String;

    .line 373
    return-object p0
.end method

.method public setRelease(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Apk$Aide;
    .registers 2

    .line 363
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Apk$Aide;->release:Ljava/lang/String;

    .line 364
    return-object p0
.end method

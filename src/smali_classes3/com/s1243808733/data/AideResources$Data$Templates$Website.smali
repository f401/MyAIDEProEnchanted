.class public Lcom/s1243808733/data/AideResources$Data$Templates$Website;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data$Templates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Website"
.end annotation


# instance fields
.field private bootstrap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bootstrap"
    .end annotation
.end field

.field private default1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootstrap()Ljava/lang/String;
    .registers 2

    .line 605
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Templates$Website;->bootstrap:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault1()Ljava/lang/String;
    .registers 2

    .line 596
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Templates$Website;->default1:Ljava/lang/String;

    return-object v0
.end method

.method public setBootstrap(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Templates$Website;
    .registers 2

    .line 600
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Templates$Website;->bootstrap:Ljava/lang/String;

    .line 601
    return-object p0
.end method

.method public setDefault1(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Templates$Website;
    .registers 2

    .line 591
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Templates$Website;->default1:Ljava/lang/String;

    .line 592
    return-object p0
.end method

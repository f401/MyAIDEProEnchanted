.class public Lcom/s1243808733/data/AideResources$Data$Course$Android;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data$Course;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Android"
.end annotation


# instance fields
.field private default1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private default2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default_2"
    .end annotation
.end field

.field private graphics:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "graphics"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault1()Ljava/lang/String;
    .registers 2

    .line 755
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Android;->default1:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault2()Ljava/lang/String;
    .registers 2

    .line 764
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Android;->default2:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphics()Ljava/lang/String;
    .registers 2

    .line 773
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Android;->graphics:Ljava/lang/String;

    return-object v0
.end method

.method public setDefault1(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Android;
    .registers 2

    .line 750
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Android;->default1:Ljava/lang/String;

    .line 751
    return-object p0
.end method

.method public setDefault2(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Android;
    .registers 2

    .line 759
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Android;->default2:Ljava/lang/String;

    .line 760
    return-object p0
.end method

.method public setGraphics(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Android;
    .registers 2

    .line 768
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Android;->graphics:Ljava/lang/String;

    .line 769
    return-object p0
.end method

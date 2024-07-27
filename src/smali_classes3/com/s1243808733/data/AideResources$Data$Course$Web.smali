.class public Lcom/s1243808733/data/AideResources$Data$Course$Web;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data$Course;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Web"
.end annotation


# instance fields
.field private default1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private images:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault1()Ljava/lang/String;
    .registers 2

    .line 832
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Web;->default1:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/lang/String;
    .registers 2

    .line 841
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Web;->images:Ljava/lang/String;

    return-object v0
.end method

.method public setDefault1(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Web;
    .registers 2

    .line 827
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Web;->default1:Ljava/lang/String;

    .line 828
    return-object p0
.end method

.method public setImages(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Web;
    .registers 2

    .line 836
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Web;->images:Ljava/lang/String;

    .line 837
    return-object p0
.end method

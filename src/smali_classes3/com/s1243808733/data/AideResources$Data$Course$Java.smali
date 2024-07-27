.class public Lcom/s1243808733/data/AideResources$Data$Course$Java;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data$Course;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Java"
.end annotation


# instance fields
.field private default1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private nativeInterface:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native_interface"
    .end annotation
.end field

.field private packages:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packages"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault1()Ljava/lang/String;
    .registers 2

    .line 715
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Java;->default1:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeInterface()Ljava/lang/String;
    .registers 2

    .line 733
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Java;->nativeInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPackages()Ljava/lang/String;
    .registers 2

    .line 724
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Java;->packages:Ljava/lang/String;

    return-object v0
.end method

.method public setDefault1(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Java;
    .registers 2

    .line 710
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Java;->default1:Ljava/lang/String;

    .line 711
    return-object p0
.end method

.method public setNativeInterface(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Java;
    .registers 2

    .line 728
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Java;->nativeInterface:Ljava/lang/String;

    .line 729
    return-object p0
.end method

.method public setPackages(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Java;
    .registers 2

    .line 719
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Java;->packages:Ljava/lang/String;

    .line 720
    return-object p0
.end method

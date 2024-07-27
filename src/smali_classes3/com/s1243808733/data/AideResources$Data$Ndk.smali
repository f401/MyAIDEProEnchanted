.class public Lcom/s1243808733/data/AideResources$Data$Ndk;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ndk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/data/AideResources$Data$Ndk$Default;,
        Lcom/s1243808733/data/AideResources$Data$Ndk$Gradle;
    }
.end annotation


# instance fields
.field private default1:Lcom/s1243808733/data/AideResources$Data$Ndk$Default;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private gradle:Lcom/s1243808733/data/AideResources$Data$Ndk$Gradle;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gradle"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault1()Lcom/s1243808733/data/AideResources$Data$Ndk$Default;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Ndk;->default1:Lcom/s1243808733/data/AideResources$Data$Ndk$Default;

    return-object v0
.end method

.method public getGradle()Lcom/s1243808733/data/AideResources$Data$Ndk$Gradle;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Ndk;->gradle:Lcom/s1243808733/data/AideResources$Data$Ndk$Gradle;

    return-object v0
.end method

.method public setDefault1(Lcom/s1243808733/data/AideResources$Data$Ndk$Default;)Lcom/s1243808733/data/AideResources$Data$Ndk;
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Ndk;->default1:Lcom/s1243808733/data/AideResources$Data$Ndk$Default;

    .line 178
    return-object p0
.end method

.method public setGradle(Lcom/s1243808733/data/AideResources$Data$Ndk$Gradle;)Lcom/s1243808733/data/AideResources$Data$Ndk;
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Ndk;->gradle:Lcom/s1243808733/data/AideResources$Data$Ndk$Gradle;

    .line 187
    return-object p0
.end method

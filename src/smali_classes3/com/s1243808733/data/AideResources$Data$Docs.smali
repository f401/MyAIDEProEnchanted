.class public Lcom/s1243808733/data/AideResources$Data$Docs;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Docs"
.end annotation


# instance fields
.field private android:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android"
    .end annotation
.end field

.field private java:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "java"
    .end annotation
.end field

.field private phonegap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phonegap"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroid()Ljava/lang/String;
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Docs;->android:Ljava/lang/String;

    return-object v0
.end method

.method public getJava()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Docs;->java:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonegap()Ljava/lang/String;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Docs;->phonegap:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroid(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Docs;
    .registers 2

    .line 288
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Docs;->android:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public setJava(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Docs;
    .registers 2

    .line 297
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Docs;->java:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public setPhonegap(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Docs;
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Docs;->phonegap:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.class public Lcom/s1243808733/data/AideResources$Data$Ndk$Default;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data$Ndk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# instance fields
.field private v17:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "v17"
    .end annotation
.end field

.field private v17X64:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "v17_x64"
    .end annotation
.end field

.field private v24:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "v24"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getV17()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Ndk$Default;->v17:Ljava/lang/String;

    return-object v0
.end method

.method public getV17X64()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Ndk$Default;->v17X64:Ljava/lang/String;

    return-object v0
.end method

.method public getV24()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Ndk$Default;->v24:Ljava/lang/String;

    return-object v0
.end method

.method public setV17(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Ndk$Default;
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Ndk$Default;->v17:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setV17X64(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Ndk$Default;
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Ndk$Default;->v17X64:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public setV24(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Ndk$Default;
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Ndk$Default;->v24:Ljava/lang/String;

    .line 225
    return-object p0
.end method

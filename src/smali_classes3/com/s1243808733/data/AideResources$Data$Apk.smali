.class public Lcom/s1243808733/data/AideResources$Data$Apk;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Apk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/data/AideResources$Data$Apk$Aide;
    }
.end annotation


# instance fields
.field private aide:Lcom/s1243808733/data/AideResources$Data$Apk$Aide;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aide"
    .end annotation
.end field

.field private json2bean:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "json2bean"
    .end annotation
.end field

.field private mdIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "md_icon"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAide()Lcom/s1243808733/data/AideResources$Data$Apk$Aide;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Apk;->aide:Lcom/s1243808733/data/AideResources$Data$Apk$Aide;

    return-object v0
.end method

.method public getJson2bean()Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Apk;->json2bean:Ljava/lang/String;

    return-object v0
.end method

.method public getMdIcon()Ljava/lang/String;
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Apk;->mdIcon:Ljava/lang/String;

    return-object v0
.end method

.method public setAide(Lcom/s1243808733/data/AideResources$Data$Apk$Aide;)Lcom/s1243808733/data/AideResources$Data$Apk;
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Apk;->aide:Lcom/s1243808733/data/AideResources$Data$Apk$Aide;

    .line 329
    return-object p0
.end method

.method public setJson2bean(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Apk;
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Apk;->json2bean:Ljava/lang/String;

    .line 347
    return-object p0
.end method

.method public setMdIcon(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Apk;
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Apk;->mdIcon:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.class public Lcom/s1243808733/data/AideResources$Data$Course$Game;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data$Course;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Game"
.end annotation


# instance fields
.field private default1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private dropGame:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "drop_game"
    .end annotation
.end field

.field private runGame:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "run_game"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault1()Ljava/lang/String;
    .registers 2

    .line 795
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Game;->default1:Ljava/lang/String;

    return-object v0
.end method

.method public getDropGame()Ljava/lang/String;
    .registers 2

    .line 804
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Game;->dropGame:Ljava/lang/String;

    return-object v0
.end method

.method public getRunGame()Ljava/lang/String;
    .registers 2

    .line 813
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course$Game;->runGame:Ljava/lang/String;

    return-object v0
.end method

.method public setDefault1(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Game;
    .registers 2

    .line 790
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Game;->default1:Ljava/lang/String;

    .line 791
    return-object p0
.end method

.method public setDropGame(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Game;
    .registers 2

    .line 799
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Game;->dropGame:Ljava/lang/String;

    .line 800
    return-object p0
.end method

.method public setRunGame(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course$Game;
    .registers 2

    .line 808
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course$Game;->runGame:Ljava/lang/String;

    .line 809
    return-object p0
.end method

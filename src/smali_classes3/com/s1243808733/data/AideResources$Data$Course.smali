.class public Lcom/s1243808733/data/AideResources$Data$Course;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Course"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/data/AideResources$Data$Course$Android;,
        Lcom/s1243808733/data/AideResources$Data$Course$Game;,
        Lcom/s1243808733/data/AideResources$Data$Course$Java;,
        Lcom/s1243808733/data/AideResources$Data$Course$Web;
    }
.end annotation


# instance fields
.field private android:Lcom/s1243808733/data/AideResources$Data$Course$Android;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android"
    .end annotation
.end field

.field private cpp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cpp"
    .end annotation
.end field

.field private game:Lcom/s1243808733/data/AideResources$Data$Course$Game;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "game"
    .end annotation
.end field

.field private java:Lcom/s1243808733/data/AideResources$Data$Course$Java;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "java"
    .end annotation
.end field

.field private javascript:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "javascript"
    .end annotation
.end field

.field private ndk:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ndk"
    .end annotation
.end field

.field private web:Lcom/s1243808733/data/AideResources$Data$Course$Web;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "web"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroid()Lcom/s1243808733/data/AideResources$Data$Course$Android;
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course;->android:Lcom/s1243808733/data/AideResources$Data$Course$Android;

    return-object v0
.end method

.method public getCpp()Ljava/lang/String;
    .registers 2

    .line 677
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course;->cpp:Ljava/lang/String;

    return-object v0
.end method

.method public getGame()Lcom/s1243808733/data/AideResources$Data$Course$Game;
    .registers 2

    .line 668
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course;->game:Lcom/s1243808733/data/AideResources$Data$Course$Game;

    return-object v0
.end method

.method public getJava()Lcom/s1243808733/data/AideResources$Data$Course$Java;
    .registers 2

    .line 641
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course;->java:Lcom/s1243808733/data/AideResources$Data$Course$Java;

    return-object v0
.end method

.method public getJavascript()Ljava/lang/String;
    .registers 2

    .line 686
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course;->javascript:Ljava/lang/String;

    return-object v0
.end method

.method public getNdk()Ljava/lang/String;
    .registers 2

    .line 659
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course;->ndk:Ljava/lang/String;

    return-object v0
.end method

.method public getWeb()Lcom/s1243808733/data/AideResources$Data$Course$Web;
    .registers 2

    .line 695
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data$Course;->web:Lcom/s1243808733/data/AideResources$Data$Course$Web;

    return-object v0
.end method

.method public setAndroid(Lcom/s1243808733/data/AideResources$Data$Course$Android;)Lcom/s1243808733/data/AideResources$Data$Course;
    .registers 2

    .line 645
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course;->android:Lcom/s1243808733/data/AideResources$Data$Course$Android;

    .line 646
    return-object p0
.end method

.method public setCpp(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course;
    .registers 2

    .line 672
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course;->cpp:Ljava/lang/String;

    .line 673
    return-object p0
.end method

.method public setGame(Lcom/s1243808733/data/AideResources$Data$Course$Game;)Lcom/s1243808733/data/AideResources$Data$Course;
    .registers 2

    .line 663
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course;->game:Lcom/s1243808733/data/AideResources$Data$Course$Game;

    .line 664
    return-object p0
.end method

.method public setJava(Lcom/s1243808733/data/AideResources$Data$Course$Java;)Lcom/s1243808733/data/AideResources$Data$Course;
    .registers 2

    .line 636
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course;->java:Lcom/s1243808733/data/AideResources$Data$Course$Java;

    .line 637
    return-object p0
.end method

.method public setJavascript(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course;
    .registers 2

    .line 681
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course;->javascript:Ljava/lang/String;

    .line 682
    return-object p0
.end method

.method public setNdk(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data$Course;
    .registers 2

    .line 654
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course;->ndk:Ljava/lang/String;

    .line 655
    return-object p0
.end method

.method public setWeb(Lcom/s1243808733/data/AideResources$Data$Course$Web;)Lcom/s1243808733/data/AideResources$Data$Course;
    .registers 2

    .line 690
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data$Course;->web:Lcom/s1243808733/data/AideResources$Data$Course$Web;

    .line 691
    return-object p0
.end method

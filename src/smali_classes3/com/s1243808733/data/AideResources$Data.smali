.class public Lcom/s1243808733/data/AideResources$Data;
.super Ljava/lang/Object;
.source "AideResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/AideResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/data/AideResources$Data$AndroidJar;,
        Lcom/s1243808733/data/AideResources$Data$Apk;,
        Lcom/s1243808733/data/AideResources$Data$Apk$Aide;,
        Lcom/s1243808733/data/AideResources$Data$Course;,
        Lcom/s1243808733/data/AideResources$Data$Course$Android;,
        Lcom/s1243808733/data/AideResources$Data$Course$Game;,
        Lcom/s1243808733/data/AideResources$Data$Course$Java;,
        Lcom/s1243808733/data/AideResources$Data$Course$Web;,
        Lcom/s1243808733/data/AideResources$Data$Docs;,
        Lcom/s1243808733/data/AideResources$Data$Ndk;,
        Lcom/s1243808733/data/AideResources$Data$Ndk$Default;,
        Lcom/s1243808733/data/AideResources$Data$Ndk$Gradle;,
        Lcom/s1243808733/data/AideResources$Data$Templates;,
        Lcom/s1243808733/data/AideResources$Data$Templates$Android;,
        Lcom/s1243808733/data/AideResources$Data$Templates$Website;
    }
.end annotation


# instance fields
.field private androidjar:Lcom/s1243808733/data/AideResources$Data$AndroidJar;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android.jar"
    .end annotation
.end field

.field private apk:Lcom/s1243808733/data/AideResources$Data$Apk;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apk"
    .end annotation
.end field

.field private course:Lcom/s1243808733/data/AideResources$Data$Course;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "course"
    .end annotation
.end field

.field private docs:Lcom/s1243808733/data/AideResources$Data$Docs;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "docs"
    .end annotation
.end field

.field private gradle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gradle"
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field private ndk:Lcom/s1243808733/data/AideResources$Data$Ndk;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ndk"
    .end annotation
.end field

.field private r8:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "r8"
    .end annotation
.end field

.field private templates:Lcom/s1243808733/data/AideResources$Data$Templates;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "templates"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidJar()Lcom/s1243808733/data/AideResources$Data$AndroidJar;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data;->androidjar:Lcom/s1243808733/data/AideResources$Data$AndroidJar;

    return-object v0
.end method

.method public getApk()Lcom/s1243808733/data/AideResources$Data$Apk;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data;->apk:Lcom/s1243808733/data/AideResources$Data$Apk;

    return-object v0
.end method

.method public getCourse()Lcom/s1243808733/data/AideResources$Data$Course;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data;->course:Lcom/s1243808733/data/AideResources$Data$Course;

    return-object v0
.end method

.method public getDocs()Lcom/s1243808733/data/AideResources$Data$Docs;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data;->docs:Lcom/s1243808733/data/AideResources$Data$Docs;

    return-object v0
.end method

.method public getGradle()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data;->gradle:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getNdk()Lcom/s1243808733/data/AideResources$Data$Ndk;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data;->ndk:Lcom/s1243808733/data/AideResources$Data$Ndk;

    return-object v0
.end method

.method public getR8()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data;->r8:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplates()Lcom/s1243808733/data/AideResources$Data$Templates;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/s1243808733/data/AideResources$Data;->templates:Lcom/s1243808733/data/AideResources$Data$Templates;

    return-object v0
.end method

.method public setAndroidJar(Lcom/s1243808733/data/AideResources$Data$AndroidJar;)Lcom/s1243808733/data/AideResources$Data;
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data;->androidjar:Lcom/s1243808733/data/AideResources$Data$AndroidJar;

    .line 143
    return-object p0
.end method

.method public setApk(Lcom/s1243808733/data/AideResources$Data$Apk;)Lcom/s1243808733/data/AideResources$Data;
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data;->apk:Lcom/s1243808733/data/AideResources$Data$Apk;

    .line 116
    return-object p0
.end method

.method public setCourse(Lcom/s1243808733/data/AideResources$Data$Course;)Lcom/s1243808733/data/AideResources$Data;
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data;->course:Lcom/s1243808733/data/AideResources$Data$Course;

    .line 134
    return-object p0
.end method

.method public setDocs(Lcom/s1243808733/data/AideResources$Data$Docs;)Lcom/s1243808733/data/AideResources$Data;
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data;->docs:Lcom/s1243808733/data/AideResources$Data$Docs;

    .line 107
    return-object p0
.end method

.method public setGradle(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data;
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data;->gradle:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setIcon(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data;
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data;->icon:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public setNdk(Lcom/s1243808733/data/AideResources$Data$Ndk;)Lcom/s1243808733/data/AideResources$Data;
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data;->ndk:Lcom/s1243808733/data/AideResources$Data$Ndk;

    .line 98
    return-object p0
.end method

.method public setR8(Ljava/lang/String;)Lcom/s1243808733/data/AideResources$Data;
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data;->r8:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public setTemplates(Lcom/s1243808733/data/AideResources$Data$Templates;)Lcom/s1243808733/data/AideResources$Data;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/s1243808733/data/AideResources$Data;->templates:Lcom/s1243808733/data/AideResources$Data$Templates;

    .line 125
    return-object p0
.end method

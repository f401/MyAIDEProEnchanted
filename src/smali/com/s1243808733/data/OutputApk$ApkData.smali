.class public Lcom/s1243808733/data/OutputApk$ApkData;
.super Ljava/lang/Object;
.source "OutputApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/OutputApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkData"
.end annotation


# instance fields
.field private baseName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "baseName"
    .end annotation
.end field

.field private dirName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dirName"
    .end annotation
.end field

.field private enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private fullName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullName"
    .end annotation
.end field

.field private outputFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "outputFile"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private versionCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "versionCode"
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "versionName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseName()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk$ApkData;->baseName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirName()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk$ApkData;->dirName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk$ApkData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputFile()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk$ApkData;->outputFile:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk$ApkData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/s1243808733/data/OutputApk$ApkData;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk$ApkData;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/s1243808733/data/OutputApk$ApkData;->enabled:Z

    return v0
.end method

.method public setBaseName(Ljava/lang/String;)Lcom/s1243808733/data/OutputApk$ApkData;
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk$ApkData;->baseName:Ljava/lang/String;

    return-object p0
.end method

.method public setDirName(Ljava/lang/String;)Lcom/s1243808733/data/OutputApk$ApkData;
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk$ApkData;->dirName:Ljava/lang/String;

    return-object p0
.end method

.method public setEnabled(Z)Lcom/s1243808733/data/OutputApk$ApkData;
    .registers 2

    .line 127
    iput-boolean p1, p0, Lcom/s1243808733/data/OutputApk$ApkData;->enabled:Z

    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/s1243808733/data/OutputApk$ApkData;
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk$ApkData;->fullName:Ljava/lang/String;

    return-object p0
.end method

.method public setOutputFile(Ljava/lang/String;)Lcom/s1243808733/data/OutputApk$ApkData;
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk$ApkData;->outputFile:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/s1243808733/data/OutputApk$ApkData;
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk$ApkData;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionCode(I)Lcom/s1243808733/data/OutputApk$ApkData;
    .registers 2

    .line 109
    iput p1, p0, Lcom/s1243808733/data/OutputApk$ApkData;->versionCode:I

    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/s1243808733/data/OutputApk$ApkData;
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk$ApkData;->versionName:Ljava/lang/String;

    return-object p0
.end method

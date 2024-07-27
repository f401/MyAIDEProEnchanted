.class public Lcom/s1243808733/data/OutputApk;
.super Ljava/lang/Object;
.source "OutputApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/data/OutputApk$ApkData;,
        Lcom/s1243808733/data/OutputApk$OutputType;,
        Lcom/s1243808733/data/OutputApk$Properties;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private apkData:Lcom/s1243808733/data/OutputApk$ApkData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apkData"
    .end annotation
.end field

.field private outputType:Lcom/s1243808733/data/OutputApk$OutputType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "outputType"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "path"
    .end annotation
.end field

.field private properties:Lcom/s1243808733/data/OutputApk$Properties;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "properties"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkData()Lcom/s1243808733/data/OutputApk$ApkData;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk;->apkData:Lcom/s1243808733/data/OutputApk$ApkData;

    return-object v0
.end method

.method public getOutputType()Lcom/s1243808733/data/OutputApk$OutputType;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk;->outputType:Lcom/s1243808733/data/OutputApk$OutputType;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/s1243808733/data/OutputApk$Properties;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk;->properties:Lcom/s1243808733/data/OutputApk$Properties;

    return-object v0
.end method

.method public setApkData(Lcom/s1243808733/data/OutputApk$ApkData;)Lcom/s1243808733/data/OutputApk;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk;->apkData:Lcom/s1243808733/data/OutputApk$ApkData;

    .line 32
    return-object p0
.end method

.method public setOutputType(Lcom/s1243808733/data/OutputApk$OutputType;)Lcom/s1243808733/data/OutputApk;
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk;->outputType:Lcom/s1243808733/data/OutputApk$OutputType;

    .line 23
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/s1243808733/data/OutputApk;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk;->path:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public setProperties(Lcom/s1243808733/data/OutputApk$Properties;)Lcom/s1243808733/data/OutputApk;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk;->properties:Lcom/s1243808733/data/OutputApk$Properties;

    .line 50
    return-object p0
.end method

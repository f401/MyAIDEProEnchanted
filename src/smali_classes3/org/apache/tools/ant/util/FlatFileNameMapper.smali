.class public Lorg/apache/tools/ant/util/FlatFileNameMapper;
.super Ljava/lang/Object;
.source "FlatFileNameMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 57
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 58
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 39
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 47
    return-void
.end method

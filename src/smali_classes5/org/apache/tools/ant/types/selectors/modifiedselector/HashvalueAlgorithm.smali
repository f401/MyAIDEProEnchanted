.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/HashvalueAlgorithm;
.super Ljava/lang/Object;
.source "HashvalueAlgorithm.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_8

    .line 63
    :goto_7
    return-object v0

    .line 59
    :cond_8
    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_23

    .line 60
    :try_start_d
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1e

    move-result-object v1

    .line 62
    :try_start_19
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_23

    move-object v0, v1

    .line 61
    goto :goto_7

    .line 59
    :catchall_1e
    move-exception v1

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_25

    :goto_22
    :try_start_22
    throw v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_23} :catch_23

    .line 62
    :catch_23
    move-exception v1

    goto :goto_7

    .line 59
    :catchall_25
    move-exception v2

    goto :goto_22
.end method

.method public isValid()Z
    .registers 2

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 73
    const-string v0, "HashvalueAlgorithm"

    return-object v0
.end method

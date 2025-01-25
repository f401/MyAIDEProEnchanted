.class public Lorg/apache/tools/ant/types/mappers/CutDirsMapper;
.super Ljava/lang/Object;
.source "CutDirsMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# instance fields
.field private dirs:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/types/mappers/CutDirsMapper;->dirs:I

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v0, 0x0

    .line 65
    iget v1, p0, Lorg/apache/tools/ant/types/mappers/CutDirsMapper;->dirs:I

    if-lez v1, :cond_3a

    .line 68
    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 69
    if-nez p1, :cond_c

    .line 81
    :cond_b
    :goto_b
    return-object v0

    .line 72
    :cond_c
    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    move v2, v3

    .line 75
    :goto_1d
    if-le v1, v7, :cond_2c

    iget v6, p0, Lorg/apache/tools/ant/types/mappers/CutDirsMapper;->dirs:I

    if-ge v2, v6, :cond_2c

    .line 76
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 78
    :cond_2c
    if-eq v1, v7, :cond_b

    .line 81
    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_b

    .line 66
    :cond_3a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dirs must be set to a positive number"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDirs(I)V
    .registers 2

    .line 43
    iput p1, p0, Lorg/apache/tools/ant/types/mappers/CutDirsMapper;->dirs:I

    .line 44
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 52
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 60
    return-void
.end method

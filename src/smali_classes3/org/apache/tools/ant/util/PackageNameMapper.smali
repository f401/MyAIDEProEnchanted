.class public Lorg/apache/tools/ant/util/PackageNameMapper;
.super Lorg/apache/tools/ant/util/GlobPatternMapper;
.source "PackageNameMapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/util/GlobPatternMapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractVariablePart(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x2e

    .line 42
    iget v0, p0, Lorg/apache/tools/ant/util/PackageNameMapper;->prefixLength:I

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/tools/ant/util/PackageNameMapper;->postfixLength:I

    .line 42
    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/PackageNameMapper;->getHandleDirSep()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/apache/tools/ant/util/UnPackageNameMapper;
.super Lorg/apache/tools/ant/util/GlobPatternMapper;
.source "UnPackageNameMapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/util/GlobPatternMapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractVariablePart(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 44
    iget v0, p0, Lorg/apache/tools/ant/util/UnPackageNameMapper;->prefixLength:I

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/tools/ant/util/UnPackageNameMapper;->postfixLength:I

    .line 44
    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    const/16 v1, 0x2e

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

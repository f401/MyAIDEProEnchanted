.class public Lorg/apache/tools/ant/types/Mapper$MapperType;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Mapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Mapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapperType"
.end annotation


# instance fields
.field private implementations:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 289
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 290
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    .line 291
    const-string v1, "identity"

    const-string v2, "org.apache.tools.ant.util.IdentityMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "flatten"

    const-string v2, "org.apache.tools.ant.util.FlatFileNameMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "glob"

    const-string v2, "org.apache.tools.ant.util.GlobPatternMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "merge"

    const-string v2, "org.apache.tools.ant.util.MergingMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "regexp"

    const-string v2, "org.apache.tools.ant.util.RegexpPatternMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "package"

    const-string v2, "org.apache.tools.ant.util.PackageNameMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    const-string v1, "unpackage"

    const-string v2, "org.apache.tools.ant.util.UnPackageNameMapper"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method


# virtual methods
.method public getImplementation()Ljava/lang/String;
    .registers 3

    .line 320
    iget-object v0, p0, Lorg/apache/tools/ant/types/Mapper$MapperType;->implementations:Ljava/util/Properties;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Mapper$MapperType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .registers 4

    .line 312
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "identity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "flatten"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "glob"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "merge"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "regexp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "unpackage"

    aput-object v2, v0, v1

    return-object v0
.end method

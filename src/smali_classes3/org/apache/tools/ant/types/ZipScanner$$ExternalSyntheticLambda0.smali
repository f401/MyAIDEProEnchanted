.class public final synthetic Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/tools/ant/types/ZipScanner;

.field public final f$1:Ljava/io/File;

.field public final f$2:Ljava/lang/String;

.field public final f$3:Ljava/util/Map;

.field public final f$4:Ljava/util/Map;

.field public final f$5:Ljava/util/Map;

.field public final f$6:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/ZipScanner;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/ZipScanner;

    iput-object p2, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput-object p3, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$4:Ljava/util/Map;

    iput-object p6, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$5:Ljava/util/Map;

    iput-object p7, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$6:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/ZipScanner;

    iget-object v1, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$4:Ljava/util/Map;

    iget-object v5, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$5:Ljava/util/Map;

    iget-object v6, p0, Lorg/apache/tools/ant/types/ZipScanner$$ExternalSyntheticLambda0;->f$6:Ljava/util/Map;

    move-object v7, p1

    check-cast v7, Lorg/apache/tools/zip/ZipEntry;

    invoke-virtual/range {v0 .. v7}, Lorg/apache/tools/ant/types/ZipScanner;->lambda$fillMapsFromArchive$1$ZipScanner(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/apache/tools/zip/ZipEntry;)V

    return-void
.end method

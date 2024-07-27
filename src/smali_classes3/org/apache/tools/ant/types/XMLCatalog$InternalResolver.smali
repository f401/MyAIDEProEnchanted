.class Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;
.super Ljava/lang/Object;
.source "XMLCatalog.java"

# interfaces
.implements Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/XMLCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalResolver"
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/types/XMLCatalog;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/XMLCatalog;)V
    .registers 4

    .line 803
    iput-object p1, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    const-string v0, "Apache resolver library not found, internal resolver will be used"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 806
    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 838
    const/4 v2, 0x0

    .line 839
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$000(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;

    move-result-object v1

    .line 843
    if-eqz v1, :cond_2

    .line 845
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Matching catalog entry found for uri: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' location: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 845
    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 861
    if-eqz p2, :cond_3

    .line 863
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 864
    new-instance v0, Lorg/apache/tools/ant/types/ResourceLocation;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/ResourceLocation;-><init>()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :try_start_1
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/ResourceLocation;->setBase(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 870
    :goto_0
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/ResourceLocation;->setPublicId(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/ResourceLocation;->setLocation(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->access$100(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v1

    .line 875
    if-nez v1, :cond_0

    .line 876
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->access$200(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v1

    .line 879
    :cond_0
    if-nez v1, :cond_1

    .line 880
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->access$300(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    move-object v1, v0

    .line 883
    :cond_1
    if-eqz v1, :cond_2

    .line 884
    new-instance v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v0, v1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 887
    :goto_1
    return-object v0

    .line 866
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 7

    .line 811
    const/4 v0, 0x0

    .line 812
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v1, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$000(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;

    move-result-object v1

    .line 814
    if-eqz v1, :cond_1

    .line 816
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matching catalog entry found for publicId: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' location: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 816
    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 821
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$100(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 823
    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$200(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 827
    :cond_0
    if-nez v0, :cond_1

    .line 828
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$300(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 831
    :cond_1
    return-object v0
.end method

.class Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;
.super Lorg/xml/sax/HandlerBase;
.source "IPlanetEjbc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EjbcHandler"
.end annotation


# static fields
.field private static final DEFAULT_IAS60_DTD_LOCATION:Ljava/lang/String; = "IASEjb_jar_1_0.dtd"

.field private static final DEFAULT_IAS60_EJB11_DTD_LOCATION:Ljava/lang/String; = "ejb-jar_1_1.dtd"

.field private static final PUBLICID_EJB11:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

.field private static final PUBLICID_IPLANET_EJB_60:Ljava/lang/String; = "-//Sun Microsystems, Inc.//DTD iAS Enterprise JavaBeans 1.0//EN"


# instance fields
.field private currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

.field private currentLoc:Ljava/lang/String;

.field private currentText:Ljava/lang/String;

.field private ejbType:Ljava/lang/String;

.field private ejbs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fileDtds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iasDescriptor:Z

.field private resourceDtds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;)V
    .registers 4

    .line 624
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    invoke-direct {p0}, Lorg/xml/sax/HandlerBase;-><init>()V

    .line 608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->resourceDtds:Ljava/util/Map;

    .line 609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->fileDtds:Ljava/util/Map;

    .line 611
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->ejbs:Ljava/util/Map;

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->iasDescriptor:Z

    .line 615
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    .line 625
    const-string v0, "-//Sun Microsystems, Inc.//DTD Enterprise JavaBeans 1.1//EN"

    const-string v1, "ejb-jar_1_1.dtd"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v0, "-//Sun Microsystems, Inc.//DTD iAS Enterprise JavaBeans 1.0//EN"

    const-string v1, "IASEjb_jar_1_0.dtd"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->registerDTD(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method private iasCharacters(Ljava/lang/String;)V
    .registers 5

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\ias-ejb-jar\\enterprise-beans\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->ejbType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\ejb-name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 844
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->ejbs:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    .line 853
    :cond_3b
    :goto_3b
    return-void

    .line 845
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\iiop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 846
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->setIiop(Ljava/lang/String;)V

    goto :goto_3b

    .line 847
    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\failover-required"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 848
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->setHasession(Ljava/lang/String;)V

    goto :goto_3b

    .line 849
    :cond_7a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\persistence-manager\\properties-file-location"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 851
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->addCmpDescriptor(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method private stdCharacters(Ljava/lang/String;)V
    .registers 5

    .line 806
    const-string v0, "\\ejb-jar\\display-name"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 807
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->access$102(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)Ljava/lang/String;

    .line 828
    :cond_f
    :goto_f
    return-void

    .line 811
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\ejb-jar\\enterprise-beans\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->ejbType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\ejb-name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 814
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->ejbs:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    goto :goto_f

    .line 815
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\home"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 816
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->setHome(Ljava/lang/String;)V

    goto :goto_f

    .line 817
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\remote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 818
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->setRemote(Ljava/lang/String;)V

    goto :goto_f

    .line 819
    :cond_8a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\ejb-class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 820
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->setImplementation(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 821
    :cond_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\prim-key-class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 822
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->setPrimaryKey(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 823
    :cond_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\session-type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 824
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->setBeantype(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 825
    :cond_ea
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\persistence-type"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 826
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentEjb:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;->setCmp(Ljava/lang/String;)V

    goto/16 :goto_f
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    add-int v2, p2, p3

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentText:Ljava/lang/String;

    .line 762
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 779
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->iasDescriptor:Z

    if-eqz v0, :cond_21

    .line 780
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->iasCharacters(Ljava/lang/String;)V

    .line 790
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 791
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 793
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, v1, v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    .line 794
    return-void

    .line 782
    :cond_21
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->stdCharacters(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 648
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->access$100(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEjbs()[Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;
    .registers 3

    .line 637
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->ejbs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    return-object v0
.end method

.method public synthetic lambda$iasCharacters$1$IPlanetEjbc$EjbcHandler(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;
    .registers 4

    .line 844
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic lambda$stdCharacters$0$IPlanetEjbc$EjbcHandler(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;
    .registers 4

    .line 814
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbInfo;-><init>(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)V

    return-object v0
.end method

.method public registerDTD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 664
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->access$200(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)V

    .line 665
    if-eqz p1, :cond_1a

    if-nez p2, :cond_1b

    .line 679
    :cond_1a
    :goto_1a
    return-void

    .line 669
    :cond_1b
    invoke-static {p2}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 670
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->access$200(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->resourceDtds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 673
    :cond_3d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 675
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;->access$200(Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->fileDtds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 694
    .line 698
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->resourceDtds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 699
    if-eqz v0, :cond_1b

    .line 700
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_3a

    move-result-object v0

    :goto_13
    move-object v1, v0

    .line 711
    :goto_14
    if-nez v1, :cond_34

    .line 712
    invoke-super {p0, p1, p2}, Lorg/xml/sax/HandlerBase;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 714
    :goto_1a
    return-object v0

    .line 703
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->fileDtds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 704
    if-eqz v0, :cond_3c

    .line 706
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_32} :catch_3a

    move-result-object v0

    goto :goto_13

    .line 714
    :cond_34
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_1a

    .line 709
    :catch_3a
    move-exception v0

    goto :goto_14

    :cond_3c
    move-object v0, v1

    goto :goto_13
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    .line 736
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentText:Ljava/lang/String;

    .line 738
    const-string v1, "\\ejb-jar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->iasDescriptor:Z

    .line 744
    :cond_27
    :goto_27
    const-string v0, "session"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "entity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 745
    :cond_37
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->ejbType:Ljava/lang/String;

    .line 747
    :cond_39
    return-void

    .line 740
    :cond_3a
    const-string v0, "\\ias-ejb-jar"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->currentLoc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/IPlanetEjbc$EjbcHandler;->iasDescriptor:Z

    goto :goto_27
.end method

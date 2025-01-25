.class public Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
.source "ProjectHelper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 875
    invoke-direct {p0}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;-><init>()V

    return-void
.end method

.method private getTargetPrefix(Lorg/apache/tools/ant/helper/AntXMLContext;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1053
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentTargetPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1054
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v1, v0

    .line 1057
    :cond_e
    if-eqz v1, :cond_12

    move-object v0, v1

    .line 1066
    :cond_11
    :goto_11
    return-object v0

    .line 1061
    :cond_12
    invoke-virtual {p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v1

    .line 1062
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_1e
    move-object v0, v1

    goto :goto_11
.end method


# virtual methods
.method public onEndElement(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/helper/AntXMLContext;)V
    .registers 5

    .line 1100
    invoke-virtual {p3}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTarget(Lorg/apache/tools/ant/Target;)V

    .line 1101
    return-void
.end method

.method public onStartChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1087
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$400()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    move-result-object v0

    return-object v0
.end method

.method public onStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 900
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    .line 906
    const-string v1, "target"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 907
    new-instance v1, Lorg/apache/tools/ant/Target;

    invoke-direct {v1}, Lorg/apache/tools/ant/Target;-><init>()V

    move-object v3, v1

    .line 908
    :goto_14
    invoke-virtual {v3, v9}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 909
    new-instance v1, Lorg/apache/tools/ant/Location;

    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/Location;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/Target;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 910
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/helper/AntXMLContext;->addTarget(Lorg/apache/tools/ant/Target;)V

    .line 912
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, ""

    const/4 v4, 0x0

    move v7, v2

    :goto_2f
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v7, v2, :cond_137

    .line 913
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 914
    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 912
    :cond_49
    :goto_49
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_2f

    .line 907
    :cond_4d
    new-instance v1, Lorg/apache/tools/ant/ExtensionPoint;

    invoke-direct {v1}, Lorg/apache/tools/ant/ExtensionPoint;-><init>()V

    move-object v3, v1

    goto :goto_14

    .line 914
    :cond_54
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 918
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2fe

    :cond_67
    const/4 v8, -0x1

    :goto_68
    packed-switch v8, :pswitch_data_320

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected attribute \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 954
    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v2

    .line 918
    :sswitch_91
    const-string v10, "onMissingExtensionPoint"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    const/4 v8, 0x7

    goto :goto_68

    :sswitch_9b
    const-string v10, "depends"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    const/4 v8, 0x1

    goto :goto_68

    :sswitch_a5
    const-string v10, "name"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    const/4 v8, 0x0

    goto :goto_68

    :sswitch_af
    const-string v10, "if"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    const/4 v8, 0x2

    goto :goto_68

    :sswitch_b9
    const-string v10, "id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    const/4 v8, 0x4

    goto :goto_68

    :sswitch_c3
    const-string v10, "extensionOf"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    const/4 v8, 0x6

    goto :goto_68

    :sswitch_cd
    const-string v10, "unless"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    const/4 v8, 0x3

    goto :goto_68

    :sswitch_d7
    const-string v10, "description"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    const/4 v8, 0x5

    goto :goto_68

    .line 947
    :pswitch_e1  #0x7
    :try_start_e1
    invoke-static {v2}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;
    :try_end_e4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e1 .. :try_end_e4} :catch_e8

    move-result-object v2

    move-object v5, v2

    .line 950
    goto/16 :goto_49

    .line 948
    :catch_e8
    move-exception v1

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid onMissingExtensionPoint "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_100  #0x6
    move-object v6, v2

    .line 943
    goto/16 :goto_49

    .line 940
    :pswitch_103  #0x5
    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/Target;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_49

    .line 935
    :pswitch_108  #0x4
    if-eqz v2, :cond_49

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_49

    .line 936
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_49

    .line 932
    :pswitch_119  #0x3
    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/Target;->setUnless(Ljava/lang/String;)V

    goto/16 :goto_49

    .line 929
    :pswitch_11e  #0x2
    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/Target;->setIf(Ljava/lang/String;)V

    goto/16 :goto_49

    :pswitch_123  #0x1
    move-object v1, v2

    .line 926
    goto/16 :goto_49

    .line 920
    :pswitch_126  #0x0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12f

    move-object v4, v2

    goto/16 :goto_49

    .line 922
    :cond_12f
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "name attribute must not be empty"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 912
    :cond_137
    if-eqz v4, :cond_2ed

    .line 963
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v2

    if-eqz v2, :cond_23b

    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->isInIncludeMode()Z

    move-result v2

    if-eqz v2, :cond_23b

    const/4 v2, 0x1

    .line 966
    :goto_146
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentPrefixSeparator()Ljava/lang/String;

    move-result-object v10

    .line 968
    if-eqz v2, :cond_25e

    .line 969
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;->getTargetPrefix(Lorg/apache/tools/ant/helper/AntXMLContext;)Ljava/lang/String;

    move-result-object v7

    .line 970
    if-eqz v7, :cond_23e

    .line 977
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 981
    :goto_166
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTargets()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2cd

    .line 985
    invoke-virtual {v9}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v11

    .line 986
    const/4 v8, 0x0

    .line 988
    invoke-virtual {v11, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_261

    .line 989
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Already defined in main or a previous import, ignore "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v9, v11, v12}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 998
    :goto_190
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_19b

    .line 999
    if-nez v2, :cond_271

    .line 1000
    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/Target;->setDepends(Ljava/lang/String;)V

    .line 1007
    :cond_19b
    if-nez v2, :cond_1db

    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v1

    if-eqz v1, :cond_1db

    .line 1008
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;->getTargetPrefix(Lorg/apache/tools/ant/helper/AntXMLContext;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1db

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1013
    if-eqz v8, :cond_2fa

    .line 1014
    const-string v1, "target"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29d

    .line 1015
    new-instance v1, Lorg/apache/tools/ant/Target;

    invoke-direct {v1, v3}, Lorg/apache/tools/ant/Target;-><init>(Lorg/apache/tools/ant/Target;)V

    .line 1017
    :goto_1ce
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Target;->setName(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTargets()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    invoke-virtual {v9, v2, v1}, Lorg/apache/tools/ant/Project;->addOrReplaceTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    .line 1021
    :cond_1db
    if-eqz v5, :cond_1df

    if-eqz v6, :cond_2a4

    .line 1027
    :cond_1df
    if-eqz v6, :cond_2f9

    .line 1028
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "ant.projectHelper"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/ProjectHelper;

    .line 1030
    const-string v2, "extensionOf"

    invoke-static {v6, v4, v2}, Lorg/apache/tools/ant/Target;->parseDepends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1031
    if-nez v5, :cond_207

    .line 1032
    sget-object v5, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->FAIL:Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;

    .line 1036
    :cond_207
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->isInIncludeMode()Z

    move-result v6

    if-eqz v6, :cond_2b0

    .line 1040
    invoke-virtual {v1}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v6

    .line 1041
    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1042
    invoke-virtual {v5}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->name()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1040
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v2, 0x1

    aput-object v8, v12, v2

    const/4 v2, 0x2

    aput-object v9, v12, v2

    const/4 v2, 0x3

    aput-object v11, v12, v2

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f7

    .line 963
    :cond_23b
    const/4 v2, 0x0

    goto/16 :goto_146

    .line 971
    :cond_23e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t include build file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", no as attribute has been given and the project tag doesn\'t specify a name attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 968
    :cond_25e
    const/4 v7, 0x0

    goto/16 :goto_166

    .line 992
    :cond_261
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/Target;->setName(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTargets()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    invoke-virtual {v9, v4, v3}, Lorg/apache/tools/ant/Project;->addOrReplaceTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    .line 995
    const/4 v8, 0x1

    goto/16 :goto_190

    .line 1002
    :cond_271
    const-string v11, "depends"

    invoke-static {v1, v4, v11}, Lorg/apache/tools/ant/Target;->parseDepends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_27b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1003
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/Target;->addDependency(Ljava/lang/String;)V

    goto :goto_27b

    .line 1015
    :cond_29d
    new-instance v1, Lorg/apache/tools/ant/ExtensionPoint;

    invoke-direct {v1, v3}, Lorg/apache/tools/ant/ExtensionPoint;-><init>(Lorg/apache/tools/ant/Target;)V

    goto/16 :goto_1ce

    .line 1022
    :cond_2a4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "onMissingExtensionPoint attribute cannot be specified unless extensionOf is specified"

    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1044
    :cond_2b0
    invoke-virtual {v1}, Lorg/apache/tools/ant/ProjectHelper;->getExtensionStack()Ljava/util/List;

    move-result-object v6

    .line 1045
    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1046
    invoke-virtual {v5}, Lorg/apache/tools/ant/ProjectHelper$OnMissingExtensionPoint;->name()Ljava/lang/String;

    move-result-object v9

    .line 1044
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v2, 0x1

    aput-object v8, v11, v2

    const/4 v2, 0x2

    aput-object v9, v11, v2

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f7

    .line 982
    :cond_2cd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate target \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 983
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 959
    :cond_2ed
    new-instance v1, Lorg/xml/sax/SAXParseException;

    const-string v2, "target element appears without a name attribute"

    invoke-virtual/range {p5 .. p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    .line 1027
    :cond_2f9
    return-void

    :cond_2fa
    move-object v1, v3

    goto/16 :goto_1ce

    .line 918
    nop

    :sswitch_data_2fe
    .sparse-switch
        -0x66ca7c04 -> :sswitch_d7
        -0x3218444e -> :sswitch_cd
        -0xf58ed8a -> :sswitch_c3
        0xd1b -> :sswitch_b9
        0xd1d -> :sswitch_af
        0x337a8b -> :sswitch_a5
        0x5ca27787 -> :sswitch_9b
        0x65c5eef8 -> :sswitch_91
    .end sparse-switch

    :pswitch_data_320
    .packed-switch 0x0
        :pswitch_126  #00000000
        :pswitch_123  #00000001
        :pswitch_11e  #00000002
        :pswitch_119  #00000003
        :pswitch_108  #00000004
        :pswitch_103  #00000005
        :pswitch_100  #00000006
        :pswitch_e1  #00000007
    .end packed-switch
.end method

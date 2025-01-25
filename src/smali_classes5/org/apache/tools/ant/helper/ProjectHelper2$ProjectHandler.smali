.class public Lorg/apache/tools/ant/helper/ProjectHelper2$ProjectHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
.source "ProjectHelper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProjectHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 681
    invoke-direct {p0}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 867
    const-string v0, "target"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "extension-point"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "antlib:org.apache.tools.ant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 868
    :cond_1e
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$300()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    move-result-object v0

    .line 866
    :goto_22
    return-object v0

    .line 868
    :cond_23
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$400()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    move-result-object v0

    goto :goto_22
.end method

.method public onStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 705
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    .line 710
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/Location;

    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/Location;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Target;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 723
    const/4 v3, 0x0

    move v0, v1

    move v2, v1

    :goto_19
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_fc

    .line 724
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    .line 725
    if-eqz v5, :cond_34

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_34

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 723
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 725
    :cond_34
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 729
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_226

    :cond_43
    const/4 v6, -0x1

    :goto_44
    packed-switch v6, :pswitch_data_238

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected attribute \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    .line 729
    :sswitch_6b
    const-string v8, "default"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    move v6, v1

    goto :goto_44

    :sswitch_75
    const-string v8, "name"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    move v6, v4

    goto :goto_44

    :sswitch_7f
    const-string v8, "id"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    const/4 v6, 0x2

    goto :goto_44

    :sswitch_89
    const-string v8, "basedir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    const/4 v6, 0x3

    goto :goto_44

    .line 763
    :pswitch_93  #0x3
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v6

    if-nez v6, :cond_31

    move-object v3, v5

    .line 764
    goto :goto_31

    .line 755
    :pswitch_9b  #0x2
    if-eqz v5, :cond_31

    .line 757
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v6

    if-nez v6, :cond_31

    .line 758
    invoke-virtual {v7, v5, v7}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_31

    .line 738
    :pswitch_a7  #0x1
    if-eqz v5, :cond_31

    .line 739
    invoke-virtual {p5, v5}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentProjectName(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 742
    invoke-virtual {v7, v5}, Lorg/apache/tools/ant/Project;->setName(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v7, v5, v7}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v4

    goto/16 :goto_31

    .line 744
    :cond_bb
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->isInIncludeMode()Z

    move-result v0

    if-eqz v0, :cond_223

    .line 745
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_223

    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentTargetPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_223

    .line 746
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentTargetPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v6, "USE_PROJECT_NAME_AS_TARGET_PREFIX"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_223

    .line 747
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelper;->getCurrentTargetPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v6, "USE_PROJECT_NAME_AS_TARGET_PREFIX"

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-static {v0}, Lorg/apache/tools/ant/ProjectHelper;->setCurrentTargetPrefix(Ljava/lang/String;)V

    move v0, v4

    .line 750
    goto/16 :goto_31

    .line 731
    :pswitch_e9  #0x0
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_31

    .line 732
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v6

    if-nez v6, :cond_31

    .line 733
    invoke-virtual {v7, v5}, Lorg/apache/tools/ant/Project;->setDefault(Ljava/lang/String;)V

    goto/16 :goto_31

    .line 775
    :cond_fc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ant.file."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 777
    invoke-virtual {v7, v5}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ant.file.type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 780
    invoke-virtual {v7, v8}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 781
    if-eqz v6, :cond_177

    if-eqz v0, :cond_177

    .line 782
    const-string v2, "url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    .line 786
    :try_start_13a
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_13f
    .catch Ljava/net/MalformedURLException; {:try_start_13a .. :try_end_13f} :catch_196

    .line 792
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileURL()Ljava/net/URL;

    move-result-object v2

    .line 799
    :goto_143
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v9

    if-eqz v9, :cond_177

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_177

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicated project name in import. Project "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " defined first in "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and again in "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-virtual {v7, v1, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 805
    :cond_177
    if-eqz v0, :cond_18f

    .line 806
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1bd

    .line 807
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "file"

    invoke-virtual {v7, v8, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_18f
    :goto_18f
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->isIgnoringProjectTag()Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 841
    :goto_195
    return-void

    .line 787
    :catch_196
    move-exception v0

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as URL while looking at a duplicate project name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 795
    :cond_1b3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFile()Ljava/io/File;

    move-result-object v2

    goto :goto_143

    .line 811
    :cond_1bd
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_18f

    .line 812
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v0, "url"

    invoke-virtual {v7, v8, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18f

    .line 823
    :cond_1d4
    const-string v0, "basedir"

    invoke-virtual {v7, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f6

    .line 824
    const-string v0, "basedir"

    invoke-virtual {v7, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V

    .line 839
    :goto_1e5
    const-string v0, ""

    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/apache/tools/ant/Project;->addTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    .line 840
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {p5, v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTarget(Lorg/apache/tools/ant/Target;)V

    goto :goto_195

    .line 827
    :cond_1f6
    if-nez v3, :cond_204

    .line 828
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileParent()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V

    goto :goto_1e5

    .line 831
    :cond_204
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_213

    .line 832
    invoke-virtual {v7, v3}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V

    goto :goto_1e5

    .line 834
    :cond_213
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$100()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileParent()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/tools/ant/Project;->setBaseDir(Ljava/io/File;)V

    goto :goto_1e5

    :cond_223
    move v0, v4

    goto/16 :goto_31

    .line 729
    :sswitch_data_226
    .sparse-switch
        -0x13d33fe4 -> :sswitch_89
        0xd1b -> :sswitch_7f
        0x337a8b -> :sswitch_75
        0x5c13d641 -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_238
    .packed-switch 0x0
        :pswitch_e9  #00000000
        :pswitch_a7  #00000001
        :pswitch_9b  #00000002
        :pswitch_93  #00000003
    .end packed-switch
.end method

.class Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TargetHandler"
.end annotation


# instance fields
.field private target:Lorg/apache/tools/ant/Target;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V
    .registers 3

    .line 497
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    .line 498
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 518
    .line 519
    const-string v2, ""

    move-object v0, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move v7, v8

    .line 525
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 526
    invoke-interface {p2, v7}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v10

    .line 527
    invoke-interface {p2, v7}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 528
    const/4 v9, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected attribute \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 553
    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-static {v1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v2

    .line 528
    :sswitch_0
    const-string v11, "depends"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :sswitch_1
    const-string v11, "name"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v9, v8

    goto :goto_1

    :sswitch_2
    const-string v11, "if"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x2

    goto :goto_1

    :sswitch_3
    const-string v11, "id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x4

    goto :goto_1

    :sswitch_4
    const-string v11, "unless"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x3

    goto :goto_1

    :sswitch_5
    const-string v11, "description"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x5

    goto :goto_1

    :pswitch_0
    move-object v6, v1

    .line 525
    :goto_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :pswitch_1
    move-object v5, v1

    .line 546
    goto :goto_2

    :pswitch_2
    move-object v4, v1

    .line 543
    goto :goto_2

    :pswitch_3
    move-object v3, v1

    .line 540
    goto :goto_2

    :pswitch_4
    move-object v2, v1

    .line 537
    goto :goto_2

    .line 530
    :pswitch_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_2

    .line 532
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 533
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "name attribute must not be empty"

    new-instance v3, Lorg/apache/tools/ant/Location;

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/Location;-><init>(Lorg/xml/sax/Locator;)V

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 557
    :cond_2
    if-eqz v0, :cond_5

    .line 562
    new-instance v1, Lorg/apache/tools/ant/Target;

    invoke-direct {v1}, Lorg/apache/tools/ant/Target;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    .line 565
    const-string v7, ""

    invoke-virtual {v1, v7}, Lorg/apache/tools/ant/Target;->addDependency(Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Target;->setName(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/Target;->setIf(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/Target;->setUnless(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {v1, v6}, Lorg/apache/tools/ant/Target;->setDescription(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {v1, v0, v3}, Lorg/apache/tools/ant/Project;->addTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    .line 573
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 574
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {v0, v5, v1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 580
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Target;->setDepends(Ljava/lang/String;)V

    .line 582
    :cond_4
    return-void

    .line 558
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 559
    new-instance v1, Lorg/xml/sax/SAXParseException;

    const-string v2, "target element appears without a name attribute"

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    .line 528
    nop

    :sswitch_data_0
    .sparse-switch
        -0x66ca7c04 -> :sswitch_5
        -0x3218444e -> :sswitch_4
        0xd1b -> :sswitch_3
        0xd1d -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x5ca27787 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-static {v0, p0, v1, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$700(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 597
    return-void
.end method

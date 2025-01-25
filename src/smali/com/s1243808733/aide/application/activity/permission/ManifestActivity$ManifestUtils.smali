.class public Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;
.super Ljava/lang/Object;
.source "ManifestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManifestUtils"
.end annotation


# static fields
.field private static indent:I = 0x4


# instance fields
.field private isAdded:Z

.field private isAnnotation:Z

.field private permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private sb:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/w3c/dom/Document;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;",
            "Lorg/w3c/dom/Document;",
            "Z)V"
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->sb:Ljava/lang/StringBuffer;

    .line 398
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAdded:Z

    .line 388
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->permission:Ljava/util/List;

    .line 389
    iput-boolean p3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAnnotation:Z

    .line 390
    const-string p1, "<?xml version=\'1.0\' encoding=\'utf-8\'?>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->sb:Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->loadNodeList(Ljava/lang/StringBuffer;Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Node;I)V

    return-void
.end method

.method private getSpace(I)Ljava/lang/String;
    .registers 5

    .line 497
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p1, :cond_10

    .line 499
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 501
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadNodeAttributes(Ljava/lang/StringBuffer;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V
    .registers 9

    if-eqz p2, :cond_3b

    .line 475
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_3b

    .line 477
    invoke-interface {p2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 478
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-le v0, v4, :cond_21

    .line 482
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28

    :cond_21
    if-lez v0, :cond_28

    .line 485
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    :cond_28
    :goto_28
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    const-string v3, "=\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3b
    return-void
.end method

.method private loadNodeList(Ljava/lang/StringBuffer;Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Node;I)V
    .registers 21

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_ff

    .line 405
    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 406
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 408
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 410
    const-string v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_fb

    iget-boolean v9, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAdded:Z

    const-string v10, "manifest"

    const/4 v11, 0x1

    if-eqz v9, :cond_2b

    goto :goto_47

    :cond_2b
    if-eqz p3, :cond_38

    .line 411
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_38

    goto :goto_47

    .line 412
    :cond_38
    const-string v9, "uses-permission"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    goto :goto_47

    :cond_41
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    if-le v9, v11, :cond_fb

    .line 414
    :goto_47
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 416
    invoke-direct {v0, v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->getSpace(I)Ljava/lang/String;

    move-result-object v12

    .line 417
    sget v13, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->indent:I

    add-int/2addr v13, v2

    invoke-direct {v0, v13}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->getSpace(I)Ljava/lang/String;

    move-result-object v13

    .line 419
    const-string v14, "\n\n"

    if-lez v2, :cond_5e

    .line 420
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_63

    .line 422
    :cond_5e
    const-string v15, "\n"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    :goto_63
    iget-object v15, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->permission:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_c1

    iget-boolean v15, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAdded:Z

    if-nez v15, :cond_c1

    if-eqz p3, :cond_c1

    .line 426
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 428
    iget-object v10, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->permission:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_81
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_be

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/s1243808733/aide/application/activity/permission/Permission;

    .line 429
    iget-boolean v11, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAnnotation:Z

    if-eqz v11, :cond_a5

    .line 430
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    const-string v11, "<!-- "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v15}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v11, " -->\n"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    :cond_a5
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-string v11, "<uses-permission android:name=\""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    invoke-virtual {v15}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    const-string v11, "\"/>"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v11, 0x1

    goto :goto_81

    .line 443
    :cond_be
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAdded:Z

    :cond_c1
    if-lez v2, :cond_c6

    .line 447
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    :cond_c6
    const-string v10, "<"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-direct {v0, v1, v8, v13}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->loadNodeAttributes(Ljava/lang/StringBuffer;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    .line 455
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-nez v8, :cond_dd

    .line 456
    const-string v6, "/>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_fb

    .line 458
    :cond_dd
    const-string v8, ">"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    sget v10, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->indent:I

    add-int/2addr v10, v2

    invoke-direct {v0, v1, v9, v6, v10}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->loadNodeList(Ljava/lang/StringBuffer;Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Node;I)V

    .line 460
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez v2, :cond_f0

    .line 462
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    :cond_f0
    const-string v6, "</"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_fb
    :goto_fb
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_ff
    return-void
.end method

.method public static save(Ljava/util/List;Lorg/w3c/dom/Document;Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;",
            "Lorg/w3c/dom/Document;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 395
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;-><init>(Ljava/util/List;Lorg/w3c/dom/Document;Z)V

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->result()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public result()Ljava/lang/String;
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
.field private static indent:I


# instance fields
.field private isAdded:Z

.field private isAnnotation:Z

.field private permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private sb:Ljava/lang/StringBuffer;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    sput v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->indent:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/w3c/dom/Document;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;",
            "Lorg/w3c/dom/Document;",
            "Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->sb:Ljava/lang/StringBuffer;

    iput-boolean v3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAdded:Z

    .line 388
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->permission:Ljava/util/List;

    .line 389
    iput-boolean p3, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAnnotation:Z

    .line 390
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->sb:Ljava/lang/StringBuffer;

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\'?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->sb:Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->loadNodeList(Ljava/lang/StringBuffer;Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Node;I)V

    return-void
.end method

.method private getSpace(I)Ljava/lang/String;
    .registers 5

    .line 497
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 499
    :cond_0
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadNodeAttributes(Ljava/lang/StringBuffer;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Lorg/w3c/dom/NamedNodeMap;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 474
    if-eqz p2, :cond_0

    .line 475
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    .line 476
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    .line 477
    :cond_1
    invoke-interface {p2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 478
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 481
    const/4 v4, 0x1

    if-le v1, v4, :cond_3

    .line 482
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    const-string v3, "=\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_3
    if-lez v1, :cond_2

    .line 485
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private loadNodeList(Ljava/lang/StringBuffer;Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Node;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Lorg/w3c/dom/NodeList;",
            "Lorg/w3c/dom/Node;",
            "I)V"
        }
    .end annotation

    .line 401
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 403
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    .line 405
    :cond_0
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 406
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 410
    const-string v0, "#"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAdded:Z

    if-eqz v0, :cond_5

    .line 414
    :cond_1
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 416
    invoke-direct {p0, p4}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->getSpace(I)Ljava/lang/String;

    move-result-object v7

    .line 417
    sget v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->indent:I

    add-int/2addr v0, p4

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->getSpace(I)Ljava/lang/String;

    move-result-object v8

    .line 419
    if-lez p4, :cond_7

    .line 420
    const-string v0, "\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    :goto_2
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->permission:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAdded:Z

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    const-string v0, "manifest"

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->permission:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 440
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAdded:Z

    .line 446
    :cond_2
    if-lez p4, :cond_3

    .line 447
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    :cond_3
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-direct {p0, p1, v5, v8}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->loadNodeAttributes(Ljava/lang/StringBuffer;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    .line 455
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_a

    .line 456
    const-string v0, "/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    :cond_4
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 410
    :cond_5
    if-eqz p3, :cond_6

    const-string v0, "manifest"

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_6
    const-string v0, "uses-permission"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_4

    goto :goto_1

    .line 422
    :cond_7
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 428
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    .line 429
    iget-boolean v10, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->isAnnotation:Z

    if-eqz v10, :cond_9

    .line 430
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    const-string v10, "<!-- "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v10, " -->\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    :cond_9
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-string v10, "<uses-permission android:name=\""

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string v0, "\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 458
    :cond_a
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    sget v0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->indent:I

    add-int/2addr v0, p4

    invoke-direct {p0, p1, v6, v3, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$ManifestUtils;->loadNodeList(Ljava/lang/StringBuffer;Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Node;I)V

    .line 460
    const-string v0, "\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    if-lez p4, :cond_b

    .line 462
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    :cond_b
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4
.end method

.method public static save(Ljava/util/List;Lorg/w3c/dom/Document;Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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

    move-result-object v0

    return-object v0
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

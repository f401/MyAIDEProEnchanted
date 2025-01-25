.class public Lorg/dom4j/io/SAXEventRecorder;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final NULL:B = 0x2t

.field private static final OBJECT:B = 0x1t

.field private static final STRING:B = 0x0t

.field private static final XMLNS:Ljava/lang/String; = "xmlns"

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private events:Ljava/util/List;

.field private prefixMappings:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p4}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p5}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public characters([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public comment([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endDTD()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_46

    new-instance v0, Lorg/dom4j/QName;

    invoke-static {p1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    :goto_1f
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    new-instance v1, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_46
    new-instance v0, Lorg/dom4j/QName;

    invoke-direct {v0, p2}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    :cond_4c
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    :cond_f
    return-void
.end method

.method public replay(Lorg/xml/sax/ContentHandler;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1bb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    iget-byte v0, v6, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->event:B

    packed-switch v0, :pswitch_data_1bc

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unrecognized event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, v6, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->event:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_38  #0x1
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_48  #0x2
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_58  #0x3
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_62  #0x4
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    goto :goto_b

    :pswitch_66  #0x5
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_b

    :pswitch_6a  #0x6
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {v6, v12}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_96

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    aget-object v1, v5, v9

    aget-object v2, v5, v10

    aget-object v3, v5, v11

    aget-object v4, v5, v12

    aget-object v5, v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :cond_96
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3, v0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_b

    :pswitch_ad  #0x7
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_c4  #0x8
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v2, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto/16 :goto_b

    :pswitch_e3  #0x9
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_fd  #0xa
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    goto/16 :goto_b

    :pswitch_105  #0xb
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_113  #0xc
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_121  #0xd
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    goto/16 :goto_b

    :pswitch_129  #0xe
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_b

    :pswitch_131  #0xf
    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p1

    check-cast v1, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto/16 :goto_b

    :pswitch_153  #0x10
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_167  #0x11
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v12}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v13}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_18d  #0x12
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_1a1  #0x13
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {v6, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_1bb
    return-void

    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_48  #00000002
        :pswitch_58  #00000003
        :pswitch_62  #00000004
        :pswitch_66  #00000005
        :pswitch_6a  #00000006
        :pswitch_ad  #00000007
        :pswitch_c4  #00000008
        :pswitch_e3  #00000009
        :pswitch_fd  #0000000a
        :pswitch_105  #0000000b
        :pswitch_113  #0000000c
        :pswitch_121  #0000000d
        :pswitch_129  #0000000e
        :pswitch_131  #0000000f
        :pswitch_153  #00000010
        :pswitch_167  #00000011
        :pswitch_18d  #00000012
        :pswitch_1a1  #00000013
    .end packed-switch
.end method

.method public startCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v2, 0x0

    new-instance v5, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    invoke-direct {v5, v10}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v5, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v5, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v5, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    if-eqz p1, :cond_7c

    new-instance v0, Lorg/dom4j/QName;

    invoke-static {p1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    move-object v4, v0

    :goto_1e
    if-eqz p4, :cond_ad

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lez v0, :cond_ad

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_30
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_aa

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "xmlns"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_83

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_4d
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    invoke-direct {v0, v8}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, v3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v7, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_75

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_30

    :cond_7c
    new-instance v0, Lorg/dom4j/QName;

    invoke-direct {v0, p2}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_1e

    :cond_83
    const-string v0, ""

    move-object v3, v0

    goto :goto_4d

    :cond_87
    new-array v3, v9, [Ljava/lang/String;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    const/4 v7, 0x1

    aput-object v0, v3, v7

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    const/4 v0, 0x3

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v0

    const/4 v0, 0x4

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v0

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_aa
    invoke-virtual {v5, v6}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    :cond_ad
    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    if-nez v0, :cond_9

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_8
.end method

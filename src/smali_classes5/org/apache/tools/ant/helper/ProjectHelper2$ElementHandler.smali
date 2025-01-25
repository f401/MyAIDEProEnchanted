.class public Lorg/apache/tools/ant/helper/ProjectHelper2$ElementHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
.source "ProjectHelper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElementHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1112
    invoke-direct {p0}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;-><init>()V

    .line 1113
    return-void
.end method


# virtual methods
.method public characters([CIILorg/apache/tools/ant/helper/AntXMLContext;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1223
    invoke-virtual {p4}, Lorg/apache/tools/ant/helper/AntXMLContext;->currentWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    .line 1224
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText([CII)V

    .line 1225
    return-void
.end method

.method public onEndElement(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/helper/AntXMLContext;)V
    .registers 4

    .line 1260
    invoke-virtual {p3}, Lorg/apache/tools/ant/helper/AntXMLContext;->popWrapper()V

    .line 1261
    return-void
.end method

.method public onStartChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1247
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$400()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    move-result-object v0

    return-object v0
.end method

.method public onStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 1136
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->currentWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v4

    .line 1137
    const/4 v0, 0x0

    .line 1139
    if-eqz v4, :cond_c

    .line 1140
    invoke-virtual {v4}, Lorg/apache/tools/ant/RuntimeConfigurable;->getProxy()Ljava/lang/Object;

    move-result-object v0

    .line 1145
    :cond_c
    new-instance v1, Lorg/apache/tools/ant/UnknownElement;

    invoke-direct {v1, p2}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/UnknownElement;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 1147
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/UnknownElement;->setNamespace(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v1, p3}, Lorg/apache/tools/ant/UnknownElement;->setQName(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/UnknownElement;->setTaskType(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v1, p3}, Lorg/apache/tools/ant/UnknownElement;->setTaskName(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1153
    new-instance v5, Lorg/apache/tools/ant/Location;

    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v6

    invoke-interface {v6}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v6

    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v7

    invoke-interface {v7}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v7

    invoke-direct {v5, v2, v6, v7}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 1154
    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/UnknownElement;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 1155
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 1157
    if-eqz v0, :cond_e0

    .line 1159
    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    .line 1165
    :goto_5a
    invoke-virtual {p5, v1, p4}, Lorg/apache/tools/ant/helper/AntXMLContext;->configureId(Ljava/lang/Object;Lorg/xml/sax/Attributes;)V

    .line 1170
    new-instance v5, Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {v1}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v1, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    .line 1172
    :goto_67
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_105

    .line 1173
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 1174
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    .line 1175
    if-eqz v6, :cond_9b

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1178
    :cond_9b
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1183
    const-string v7, "ant-type"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_bb

    .line 1184
    const-string v7, "antlib:org.apache.tools.ant"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 1185
    const-string v6, "ant-type"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 1186
    :cond_bb
    const-string v0, "ant-type"

    .line 1187
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1188
    if-ltz v6, :cond_d9

    .line 1189
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1190
    invoke-virtual {p5, v7}, Lorg/apache/tools/ant/helper/AntXMLContext;->getPrefixMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1191
    if-eqz v8, :cond_e9

    .line 1195
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1199
    :cond_d9
    invoke-virtual {v5, v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_67

    .line 1162
    :cond_e0
    invoke-virtual {p5}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Target;->addTask(Lorg/apache/tools/ant/Task;)V

    goto/16 :goto_5a

    .line 1192
    :cond_e9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find XML NS prefix \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1201
    :cond_105
    if-eqz v4, :cond_10a

    .line 1202
    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 1204
    :cond_10a
    invoke-virtual {p5, v5}, Lorg/apache/tools/ant/helper/AntXMLContext;->pushWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 1205
    return-void
.end method

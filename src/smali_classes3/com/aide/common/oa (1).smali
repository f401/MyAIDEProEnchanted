.class final Lcom/aide/common/oa;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/pa;->j6(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Lorg/xml/sax/Locator;
    .annotation runtime Labcd/ru;
        field = 0xf0a824494bc9b24L
    .end annotation
.end field

.field final Hw:Lorg/w3c/dom/Document;

.field final Zo:Ljava/lang/StringBuilder;

.field final v5:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x32a0d59c9dfeb8b9L  # -5.128310221298194E64

    const-wide v2, -0xa022c942aa6f410L

    const-class v4, Lcom/aide/common/oa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Document;Ljava/util/Stack;Ljava/lang/StringBuilder;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/oa;->Hw:Lorg/w3c/dom/Document;

    iput-object p2, p0, Lcom/aide/common/oa;->v5:Ljava/util/Stack;

    iput-object p3, p0, Lcom/aide/common/oa;->Zo:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method private j6()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4ab0d6eb2473429L
    .end annotation

    const-wide v0, -0x44e7ccba610d718L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/oa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/oa;->Zo:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_35

    iget-object v2, p0, Lcom/aide/common/oa;->v5:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v3, p0, Lcom/aide/common/oa;->Hw:Lorg/w3c/dom/Document;

    iget-object v4, p0, Lcom/aide/common/oa;->Zo:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v2, p0, Lcom/aide/common/oa;->Zo:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    :cond_35
    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/common/oa;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method


# virtual methods
.method public characters([CII)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1778b463c4823501L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/oa;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2e8d52073db084f0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/common/oa;->Zo:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/common/oa;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, -0x2e8d52073db084f0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2f92baf5b3c7b1b4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/oa;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x48e4b360db324b7L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-direct {p0}, Lcom/aide/common/oa;->j6()V

    iget-object v0, p0, Lcom/aide/common/oa;->v5:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    iget-object v1, p0, Lcom/aide/common/oa;->v5:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/aide/common/oa;->Hw:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_34

    :cond_29
    iget-object v1, p0, Lcom/aide/common/oa;->v5:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    :goto_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Lcom/aide/common/oa;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, 0x48e4b360db324b7L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xd8f72fed9749620L
    .end annotation

    const-wide v0, -0x3843e0432ae947a7L  # -3.738317506022786E37

    :try_start_5
    sget-boolean v2, Lcom/aide/common/oa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/common/oa;->FH:Lorg/xml/sax/Locator;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/common/oa;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x412e30931f49b80L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/oa;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x1f4f04049eba6afbL  # 7.059497834015506E-158

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0}, Lcom/aide/common/oa;->j6()V

    iget-object v0, p0, Lcom/aide/common/oa;->Hw:Lorg/w3c/dom/Document;

    invoke-interface {v0, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1b
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2f

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2f
    const-string v1, "line"

    iget-object v2, p0, Lcom/aide/common/oa;->FH:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/Element;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    const-string v1, "column"

    iget-object v2, p0, Lcom/aide/common/oa;->FH:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/Element;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/aide/common/oa;->v5:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_0 .. :try_end_55} :catchall_56

    return-void

    :catchall_56
    move-exception v0

    sget-boolean v1, Lcom/aide/common/oa;->DW:Z

    if-eqz v1, :cond_69

    const-wide v2, 0x1f4f04049eba6afbL  # 7.059497834015506E-158

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_69
    goto :goto_6b

    :goto_6a
    throw v0

    :goto_6b
    goto :goto_6a
.end method

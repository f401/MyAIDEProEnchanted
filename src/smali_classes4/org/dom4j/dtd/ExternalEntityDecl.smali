.class public Lorg/dom4j/dtd/ExternalEntityDecl;
.super Ljava/lang/Object;


# instance fields
.field private name:Ljava/lang/String;

.field private publicID:Ljava/lang/String;

.field private systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->publicID:Ljava/lang/String;

    iput-object p3, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    return-void
.end method

.method public setPublicID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->publicID:Ljava/lang/String;

    return-void
.end method

.method public setSystemID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<!ENTITY "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_20
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->publicID:Ljava/lang/String;

    if-eqz v1, :cond_56

    const-string v1, " PUBLIC \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->publicID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    if-eqz v1, :cond_46

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_46
    :goto_46
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_50
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    :cond_56
    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    if-eqz v1, :cond_46

    const-string v1, " SYSTEM \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/ExternalEntityDecl;->systemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_46
.end method

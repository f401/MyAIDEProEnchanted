.class public Lorg/apache/tools/ant/types/Assertions;
.super Lorg/apache/tools/ant/types/DataType;
.source "Assertions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Assertions$BaseAssertion;,
        Lorg/apache/tools/ant/types/Assertions$DisabledAssertion;,
        Lorg/apache/tools/ant/types/Assertions$EnabledAssertion;
    }
.end annotation


# instance fields
.field private assertionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/tools/ant/types/Assertions$BaseAssertion;",
            ">;"
        }
    .end annotation
.end field

.field private enableSystemAssertions:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Assertions;->assertionList:Ljava/util/ArrayList;

    return-void
.end method

.method private static addVmArgument(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V
    .registers 3

    .line 236
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private getFinalReference()Lorg/apache/tools/ant/types/Assertions;
    .registers 3

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-object p0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    instance-of v1, v0, Lorg/apache/tools/ant/types/Assertions;

    if-eqz v1, :cond_1

    .line 138
    check-cast v0, Lorg/apache/tools/ant/types/Assertions;

    move-object p0, v0

    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "reference is of wrong type"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFinalSize()I
    .registers 3

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/types/Assertions;->assertionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lorg/apache/tools/ant/types/Assertions;->enableSystemAssertions:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDisable(Lorg/apache/tools/ant/types/Assertions$DisabledAssertion;)V
    .registers 3

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->checkChildrenAllowed()V

    .line 96
    iget-object v0, p0, Lorg/apache/tools/ant/types/Assertions;->assertionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public addEnable(Lorg/apache/tools/ant/types/Assertions$EnabledAssertion;)V
    .registers 3

    .line 86
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->checkChildrenAllowed()V

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/types/Assertions;->assertionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public applyAssertions(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x4

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "Applying assertions"

    invoke-virtual {v0, v1, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 166
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Assertions;->getFinalReference()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    .line 168
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v0, Lorg/apache/tools/ant/types/Assertions;->enableSystemAssertions:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "Enabling system assertions"

    invoke-virtual {v1, v2, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 170
    const-string v1, "-enablesystemassertions"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    :goto_0
    iget-object v0, v0, Lorg/apache/tools/ant/types/Assertions;->assertionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;

    .line 178
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->toCommand()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding assertion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 180
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, v0, Lorg/apache/tools/ant/types/Assertions;->enableSystemAssertions:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "disabling system assertions"

    invoke-virtual {v1, v2, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 173
    const-string v1, "-disablesystemassertions"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_2
    return-void
.end method

.method public applyAssertions(Ljava/util/ListIterator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x4

    .line 210
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "Applying assertions"

    invoke-virtual {v0, v1, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 211
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Assertions;->getFinalReference()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    .line 213
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v0, Lorg/apache/tools/ant/types/Assertions;->enableSystemAssertions:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "Enabling system assertions"

    invoke-virtual {v1, v2, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 215
    const-string v1, "-enablesystemassertions"

    invoke-interface {p1, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 222
    :cond_0
    :goto_0
    iget-object v0, v0, Lorg/apache/tools/ant/types/Assertions;->assertionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;

    .line 223
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->toCommand()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding assertion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 225
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 216
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, v0, Lorg/apache/tools/ant/types/Assertions;->enableSystemAssertions:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    const-string v2, "disabling system assertions"

    invoke-virtual {v1, v2, v5}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 218
    const-string v1, "-disablesystemassertions"

    invoke-interface {p1, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_2
    return-void
.end method

.method public applyAssertions(Lorg/apache/tools/ant/types/CommandlineJava;)V
    .registers 5

    .line 189
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Assertions;->getFinalReference()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    .line 191
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v0, Lorg/apache/tools/ant/types/Assertions;->enableSystemAssertions:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "-enablesystemassertions"

    invoke-static {p1, v1}, Lorg/apache/tools/ant/types/Assertions;->addVmArgument(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    iget-object v0, v0, Lorg/apache/tools/ant/types/Assertions;->assertionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;

    .line 199
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Assertions$BaseAssertion;->toCommand()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {p1, v0}, Lorg/apache/tools/ant/types/Assertions;->addVmArgument(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, v0, Lorg/apache/tools/ant/types/Assertions;->enableSystemAssertions:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const-string v1, "-disablesystemassertions"

    invoke-static {p1, v1}, Lorg/apache/tools/ant/types/Assertions;->addVmArgument(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 249
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Assertions;

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/Assertions;->assertionList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/Assertions;->assertionList:Ljava/util/ArrayList;

    .line 251
    return-object v0
.end method

.method public setEnableSystemAssertions(Ljava/lang/Boolean;)V
    .registers 2

    .line 106
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->checkAttributesAllowed()V

    .line 107
    iput-object p1, p0, Lorg/apache/tools/ant/types/Assertions;->enableSystemAssertions:Ljava/lang/Boolean;

    .line 108
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/types/Assertions;->assertionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Assertions;->enableSystemAssertions:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 124
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Assertions;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public size()I
    .registers 2

    .line 146
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Assertions;->getFinalReference()Lorg/apache/tools/ant/types/Assertions;

    move-result-object v0

    .line 147
    invoke-direct {v0}, Lorg/apache/tools/ant/types/Assertions;->getFinalSize()I

    move-result v0

    return v0
.end method

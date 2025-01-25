.class public Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;
.super Lorg/apache/tools/ant/types/DataType;
.source "ExtensionAdapter.java"


# instance fields
.field private extensionName:Ljava/lang/String;

.field private implementationURL:Ljava/lang/String;

.field private implementationVendor:Ljava/lang/String;

.field private implementationVendorID:Ljava/lang/String;

.field private implementationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

.field private specificationVendor:Ljava/lang/String;

.field private specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    return-void
.end method

.method private getRef()Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;
    .registers 2

    .line 218
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    return-object v0
.end method

.method private verifyNotAReference()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->isReference()Z

    move-result v0

    if-nez v0, :cond_7

    .line 173
    return-void

    .line 171
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public setExtensionName(Ljava/lang/String;)V
    .registers 2

    .line 79
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->verifyNotAReference()V

    .line 80
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->extensionName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setImplementationUrl(Ljava/lang/String;)V
    .registers 2

    .line 139
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->verifyNotAReference()V

    .line 140
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationURL:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setImplementationVendor(Ljava/lang/String;)V
    .registers 2

    .line 119
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->verifyNotAReference()V

    .line 120
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationVendor:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setImplementationVendorId(Ljava/lang/String;)V
    .registers 2

    .line 109
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->verifyNotAReference()V

    .line 110
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationVendorID:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setImplementationVersion(Ljava/lang/String;)V
    .registers 3

    .line 129
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->verifyNotAReference()V

    .line 130
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    .line 131
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->extensionName:Ljava/lang/String;

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->specificationVendor:Ljava/lang/String;

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationVendorID:Ljava/lang/String;

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationVendor:Ljava/lang/String;

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationURL:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 165
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 166
    return-void

    .line 163
    :cond_20
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setSpecificationVendor(Ljava/lang/String;)V
    .registers 2

    .line 99
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->verifyNotAReference()V

    .line 100
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->specificationVendor:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setSpecificationVersion(Ljava/lang/String;)V
    .registers 3

    .line 89
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->verifyNotAReference()V

    .line 90
    new-instance v0, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    .line 91
    return-void
.end method

.method toExtension()Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->isReference()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 183
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->getRef()Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->toExtension()Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v0

    .line 198
    :goto_f
    return-object v0

    .line 185
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->dieOnCircularReference()V

    .line 186
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->extensionName:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 191
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v1, :cond_41

    .line 192
    invoke-virtual {v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    :goto_1f
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v1, :cond_37

    .line 196
    invoke-virtual {v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    :goto_27
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->extensionName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->specificationVendor:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationVendor:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationVendorID:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->implementationURL:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_37
    move-object v4, v0

    .line 195
    goto :goto_27

    .line 187
    :cond_39
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Extension is missing name."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    move-object v2, v0

    goto :goto_1f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/ExtensionAdapter;->toExtension()Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

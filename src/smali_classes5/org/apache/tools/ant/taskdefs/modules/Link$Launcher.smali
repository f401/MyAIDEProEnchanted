.class public Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Launcher"
.end annotation


# instance fields
.field private mainClass:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .registers 2

    .line 1169
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V
    .registers 6

    .line 1186
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    const-string v0, "Text cannot be null"

    invoke-static {p2, v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1189
    const/16 v0, 0x3d

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1190
    const/4 v1, 0x1

    if-lt v0, v1, :cond_54

    .line 1194
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->setName(Ljava/lang/String;)V

    .line 1196
    const/16 v1, 0x2f

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1197
    if-gez v1, :cond_2d

    .line 1198
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->setModule(Ljava/lang/String;)V

    .line 1205
    :goto_2c
    return-void

    .line 1199
    :cond_2d
    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_4c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4c

    .line 1200
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->setModule(Ljava/lang/String;)V

    .line 1201
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->setMainClass(Ljava/lang/String;)V

    goto :goto_2c

    .line 1203
    :cond_4c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Launcher command must take the form name=module or name=module/mainclass"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_54
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Launcher command must take the form name=module or name=module/mainclass"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMainClass()Ljava/lang/String;
    .registers 2

    .line 1258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->mainClass:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .registers 2

    .line 1237
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1216
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setMainClass(Ljava/lang/String;)V
    .registers 2

    .line 1269
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->mainClass:Ljava/lang/String;

    .line 1270
    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .registers 2

    .line 1247
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->module:Ljava/lang/String;

    .line 1248
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1227
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->name:Ljava/lang/String;

    .line 1228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1297
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->mainClass:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->mainClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    :goto_26
    return-object v0

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method public validate()V
    .registers 4

    .line 1278
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->name:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->module:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1286
    return-void

    .line 1283
    :cond_15
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1284
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Launcher must have specify a module"

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1279
    :cond_23
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1280
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Launcher must have a name"

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

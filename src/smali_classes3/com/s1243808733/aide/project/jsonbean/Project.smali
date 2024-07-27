.class public Lcom/s1243808733/aide/project/jsonbean/Project;
.super Ljava/lang/Object;
.source "Project.java"


# static fields
.field public static final ANDROID:Ljava/lang/String; = "android"


# instance fields
.field private main:Ljava/lang/String;

.field private noPkg:Z

.field private openFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private replaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private template:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMain()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->main:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenFile()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->openFile:Ljava/util/List;

    return-object v0
.end method

.method public getReplaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->replaces:Ljava/util/List;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isNoPkg()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->noPkg:Z

    return v0
.end method

.method public setMain(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->main:Ljava/lang/String;

    return-void
.end method

.method public setNoPkg(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 30
    iput-boolean p1, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->noPkg:Z

    return-void
.end method

.method public setOpenFile(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->openFile:Ljava/util/List;

    return-void
.end method

.method public setReplaces(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->replaces:Ljava/util/List;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->template:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Project;->type:Ljava/lang/String;

    return-void
.end method

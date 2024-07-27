.class public Lcom/s1243808733/aide/project/jsonbean/Category$Templates;
.super Ljava/lang/Object;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/project/jsonbean/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Templates"
.end annotation


# instance fields
.field private describes:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private project:Lcom/s1243808733/aide/project/jsonbean/Project;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescribes()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->describes:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Lcom/s1243808733/aide/project/jsonbean/Project;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->project:Lcom/s1243808733/aide/project/jsonbean/Project;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescribes(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->describes:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->icon:Ljava/lang/String;

    return-void
.end method

.method public setProject(Lcom/s1243808733/aide/project/jsonbean/Project;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/project/jsonbean/Project;",
            ")V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->project:Lcom/s1243808733/aide/project/jsonbean/Project;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->title:Ljava/lang/String;

    return-void
.end method

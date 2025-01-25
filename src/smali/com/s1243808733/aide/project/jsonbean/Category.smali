.class public Lcom/s1243808733/aide/project/jsonbean/Category;
.super Ljava/lang/Object;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/project/jsonbean/Category$Templates;
    }
.end annotation


# instance fields
.field private describes:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private templates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/project/jsonbean/Category$Templates;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescribes()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Category;->describes:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Category;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/project/jsonbean/Category$Templates;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Category;->templates:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/Category;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescribes(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Category;->describes:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Category;->icon:Ljava/lang/String;

    return-void
.end method

.method public setTemplates(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/project/jsonbean/Category$Templates;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Category;->templates:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/Category;->title:Ljava/lang/String;

    return-void
.end method

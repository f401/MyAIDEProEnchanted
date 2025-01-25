.class public Lcom/s1243808733/aide/application/activity/icons/Meta;
.super Ljava/lang/Object;
.source "Meta.java"


# instance fields
.field private aliases:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aliases"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private author:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author"
    .end annotation
.end field

.field private baseIconId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "baseIconId"
    .end annotation
.end field

.field private codepoint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "codepoint"
    .end annotation
.end field

.field private deprecated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deprecated"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private styles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "styles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->aliases:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->styles:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->tags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAliases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->aliases:Ljava/util/List;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseIconId()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->baseIconId:Ljava/lang/String;

    return-object v0
.end method

.method public getCodepoint()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->codepoint:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStyles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->styles:Ljava/util/List;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isDeprecated()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->deprecated:Z

    return v0
.end method

.method public setAliases(Ljava/util/List;)Lcom/s1243808733/aide/application/activity/icons/Meta;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/s1243808733/aide/application/activity/icons/Meta;"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->aliases:Ljava/util/List;

    return-object p0
.end method

.method public setAuthor(Ljava/lang/String;)Lcom/s1243808733/aide/application/activity/icons/Meta;
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->author:Ljava/lang/String;

    return-object p0
.end method

.method public setBaseIconId(Ljava/lang/String;)Lcom/s1243808733/aide/application/activity/icons/Meta;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->baseIconId:Ljava/lang/String;

    return-object p0
.end method

.method public setCodepoint(Ljava/lang/String;)Lcom/s1243808733/aide/application/activity/icons/Meta;
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->codepoint:Ljava/lang/String;

    return-object p0
.end method

.method public setDeprecated(Z)Lcom/s1243808733/aide/application/activity/icons/Meta;
    .registers 2

    .line 103
    iput-boolean p1, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->deprecated:Z

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/s1243808733/aide/application/activity/icons/Meta;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/s1243808733/aide/application/activity/icons/Meta;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setStyles(Ljava/util/List;)Lcom/s1243808733/aide/application/activity/icons/Meta;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/s1243808733/aide/application/activity/icons/Meta;"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->styles:Ljava/util/List;

    return-object p0
.end method

.method public setTags(Ljava/util/List;)Lcom/s1243808733/aide/application/activity/icons/Meta;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/s1243808733/aide/application/activity/icons/Meta;"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->tags:Ljava/util/List;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/s1243808733/aide/application/activity/icons/Meta;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Meta;->version:Ljava/lang/String;

    return-object p0
.end method

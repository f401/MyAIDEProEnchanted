.class public Lcom/s1243808733/aide/project/adapter/TemplateAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TemplateAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private iconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/project/jsonbean/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->list:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->iconMap:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/project/jsonbean/Category;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->list:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->iconMap:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->list:Ljava/util/List;

    return-void
.end method

.method private getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->iconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 68
    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/s1243808733/aide/project/PUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->iconMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Lcom/s1243808733/aide/project/jsonbean/Category;)Lcom/s1243808733/aide/project/adapter/TemplateAdapter;
    .registers 3

    .line 31
    invoke-virtual {p0}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-object p0
.end method

.method public getChild(II)Lcom/s1243808733/aide/project/jsonbean/Category$Templates;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getGroup(I)Lcom/s1243808733/aide/project/jsonbean/Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Category;->getTemplates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    return-object v0
.end method

.method public bridge getChild(II)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getChild(II)Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 110
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 52
    if-nez p4, :cond_0

    .line 53
    new-instance v1, Lcom/s1243808733/aide/project/adapter/TemplateView;

    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/s1243808733/aide/project/adapter/TemplateView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    .line 55
    check-cast v0, Lcom/s1243808733/aide/project/adapter/TemplateView;

    iget-object v0, v0, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getChild(II)Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setIcon(Landroid/graphics/Bitmap;Z)V

    .line 60
    invoke-virtual {v2}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v2}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getDescribes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 63
    return-object v1

    :cond_0
    move-object v1, p4

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getGroup(I)Lcom/s1243808733/aide/project/jsonbean/Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Category;->getTemplates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Lcom/s1243808733/aide/project/jsonbean/Category;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/project/jsonbean/Category;

    return-object v0
.end method

.method public bridge getGroup(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getGroup(I)Lcom/s1243808733/aide/project/jsonbean/Category;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 105
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 37
    if-nez p3, :cond_0

    .line 38
    new-instance v1, Lcom/s1243808733/aide/project/adapter/TemplateView;

    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/s1243808733/aide/project/adapter/TemplateView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    .line 40
    check-cast v0, Lcom/s1243808733/aide/project/adapter/TemplateView;

    iget-object v0, v0, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    .line 41
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getGroup(I)Lcom/s1243808733/aide/project/jsonbean/Category;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/s1243808733/aide/project/jsonbean/Category;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setIcon(Landroid/graphics/Bitmap;Z)V

    .line 45
    invoke-virtual {v2}, Lcom/s1243808733/aide/project/jsonbean/Category;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v2}, Lcom/s1243808733/aide/project/jsonbean/Category;->getDescribes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 47
    return-object v1

    :cond_0
    move-object v1, p3

    goto :goto_0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/project/jsonbean/Category;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/project/jsonbean/Category;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->list:Ljava/util/List;

    return-void
.end method

.class public Lcom/s1243808733/aide/project/adapter/TemplateAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TemplateAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private iconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->list:Ljava/util/List;

    .line 19
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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/project/jsonbean/Category;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->list:Ljava/util/List;

    .line 19
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

    if-nez v0, :cond_15

    .line 69
    iget-object v0, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/s1243808733/aide/project/PUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->iconMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method


# virtual methods
.method public add(Lcom/s1243808733/aide/project/jsonbean/Category;)Lcom/s1243808733/aide/project/adapter/TemplateAdapter;
    .registers 3

    .line 31
    invoke-virtual {p0}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getChild(II)Lcom/s1243808733/aide/project/jsonbean/Category$Templates;
    .registers 3

    .line 100
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getGroup(I)Lcom/s1243808733/aide/project/jsonbean/Category;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category;->getTemplates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    return-object p1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .registers 3

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getChild(II)Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .registers 3

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p4, :cond_9

    .line 53
    new-instance p4, Lcom/s1243808733/aide/project/adapter/TemplateView;

    iget-object p3, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->context:Landroid/content/Context;

    invoke-direct {p4, p3}, Lcom/s1243808733/aide/project/adapter/TemplateView;-><init>(Landroid/content/Context;)V

    .line 55
    :cond_9
    move-object p3, p4

    check-cast p3, Lcom/s1243808733/aide/project/adapter/TemplateView;

    iget-object p3, p3, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getChild(II)Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getIcon()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p5, 0x0

    invoke-virtual {p3, p2, p5}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setIcon(Landroid/graphics/Bitmap;Z)V

    .line 60
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getDescribes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setSubtitle(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getGroup(I)Lcom/s1243808733/aide/project/jsonbean/Category;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category;->getTemplates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Lcom/s1243808733/aide/project/jsonbean/Category;
    .registers 3

    .line 95
    invoke-virtual {p0}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/project/jsonbean/Category;

    return-object p1
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getGroup(I)Lcom/s1243808733/aide/project/jsonbean/Category;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p3, :cond_9

    .line 38
    new-instance p3, Lcom/s1243808733/aide/project/adapter/TemplateView;

    iget-object p2, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->context:Landroid/content/Context;

    invoke-direct {p3, p2}, Lcom/s1243808733/aide/project/adapter/TemplateView;-><init>(Landroid/content/Context;)V

    .line 40
    :cond_9
    move-object p2, p3

    check-cast p2, Lcom/s1243808733/aide/project/adapter/TemplateView;

    iget-object p2, p2, Lcom/s1243808733/aide/project/adapter/TemplateView;->holder:Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;

    .line 41
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getGroup(I)Lcom/s1243808733/aide/project/jsonbean/Category;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category;->getIcon()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p2, p4, v0}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setIcon(Landroid/graphics/Bitmap;Z)V

    .line 45
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category;->getTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category;->getDescribes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/s1243808733/aide/project/adapter/TemplateView$ViewHolder;->setSubtitle(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/project/jsonbean/Category;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/s1243808733/aide/project/adapter/TemplateAdapter;->list:Ljava/util/List;

    return-void
.end method

.class public Lcom/a4455jkjh/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public a:Z

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field private d:Lcom/a4455jkjh/ManifestActivity;

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/a4455jkjh/ManifestActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/a4455jkjh/a;->d:Lcom/a4455jkjh/ManifestActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/a;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a4455jkjh/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/a4455jkjh/g;
    .registers 3

    iget-object v0, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/g;

    goto :goto_9
.end method

.method public a()V
    .registers 7

    iget-object v0, p0, Lcom/a4455jkjh/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/a4455jkjh/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/a4455jkjh/ManifestActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/f;

    iget-object v1, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v1, 0x0

    move v2, v1

    :cond_25
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_33

    if-nez v2, :cond_10

    iget-object v1, p0, Lcom/a4455jkjh/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a4455jkjh/g;

    invoke-virtual {v1}, Lcom/a4455jkjh/g;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/a4455jkjh/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/a4455jkjh/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v2, v1

    goto :goto_25
.end method

.method public a(Lcom/a4455jkjh/g;)V
    .registers 3

    iget-object v0, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/a4455jkjh/a;->a()V

    invoke-virtual {p0}, Lcom/a4455jkjh/a;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a4455jkjh/a;->a:Z

    iget-object v0, p0, Lcom/a4455jkjh/a;->d:Lcom/a4455jkjh/ManifestActivity;

    invoke-virtual {v0}, Lcom/a4455jkjh/ManifestActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/a4455jkjh/a;->a()V

    invoke-virtual {p0}, Lcom/a4455jkjh/a;->notifyDataSetChanged()V

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/a4455jkjh/a;->d:Lcom/a4455jkjh/ManifestActivity;

    iget-object v1, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    const-string v2, "uses-permission"

    invoke-virtual {v0, v1, v2}, Lcom/a4455jkjh/ManifestActivity;->a(Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a4455jkjh/a;->a:Z

    iget-object v0, p0, Lcom/a4455jkjh/a;->d:Lcom/a4455jkjh/ManifestActivity;

    invoke-virtual {v0}, Lcom/a4455jkjh/ManifestActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/a4455jkjh/a;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a4455jkjh/a;->a:Z

    iget-object v0, p0, Lcom/a4455jkjh/a;->d:Lcom/a4455jkjh/ManifestActivity;

    invoke-virtual {v0}, Lcom/a4455jkjh/ManifestActivity;->invalidateOptionsMenu()V

    return-void

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/f;

    new-instance v2, Lcom/a4455jkjh/c;

    invoke-direct {v2}, Lcom/a4455jkjh/c;-><init>()V

    const-string v3, "android:name"

    iput-object v3, v2, Lcom/a4455jkjh/c;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/a4455jkjh/f;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/a4455jkjh/c;->b:Ljava/lang/String;

    new-instance v3, Lcom/a4455jkjh/g;

    const-string v4, "uses-permission"

    invoke-direct {v3, v4}, Lcom/a4455jkjh/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/a4455jkjh/g;->a(Lcom/a4455jkjh/c;)V

    iget-object v2, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/a4455jkjh/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/a4455jkjh/a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_9
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a4455jkjh/a;->a(I)Lcom/a4455jkjh/g;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/16 v2, 0x8

    if-nez p2, :cond_a

    iget-object v0, p0, Lcom/a4455jkjh/a;->d:Lcom/a4455jkjh/ManifestActivity;

    invoke-virtual {v0}, Lcom/a4455jkjh/ManifestActivity;->a()Landroid/view/View;

    move-result-object p2

    :cond_a
    sget v0, Lcom/a;->c:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/a;->b:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/a;->d:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "当前没有权限，请点击右上角来添加权限↗"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_31
    return-object p2

    :cond_32
    iget-object v1, p0, Lcom/a4455jkjh/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a4455jkjh/g;

    invoke-virtual {v1, v0}, Lcom/a4455jkjh/g;->a(Landroid/widget/TextView;)V

    goto :goto_31
.end method

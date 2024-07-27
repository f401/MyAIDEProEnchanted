.class public Lcom/a4455jkjh/b;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Ljava/util/List;

.field b:Ljava/util/List;

.field c:Lcom/a4455jkjh/ManifestActivity;

.field d:Lcom/a4455jkjh/a;


# direct methods
.method public constructor <init>(Lcom/a4455jkjh/a;Lcom/a4455jkjh/ManifestActivity;)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/a4455jkjh/b;->d:Lcom/a4455jkjh/a;

    iput-object p2, p0, Lcom/a4455jkjh/b;->c:Lcom/a4455jkjh/ManifestActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/b;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/a4455jkjh/b;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/a4455jkjh/a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/a4455jkjh/f;)V
    .registers 3

    iget-object v0, p0, Lcom/a4455jkjh/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    iget-object v0, p0, Lcom/a4455jkjh/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/a4455jkjh/b;->d:Lcom/a4455jkjh/a;

    iget-object v0, v0, Lcom/a4455jkjh/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/a4455jkjh/b;->notifyDataSetChanged()V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/f;

    iget-object v3, v0, Lcom/a4455jkjh/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/a4455jkjh/b;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Lcom/a4455jkjh/f;)V
    .registers 3

    iget-object v0, p0, Lcom/a4455jkjh/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/a4455jkjh/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/a4455jkjh/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-nez p2, :cond_0

    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/a4455jkjh/b;->c:Lcom/a4455jkjh/ManifestActivity;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    move-object p2, v0

    :goto_0
    iget-object v0, p0, Lcom/a4455jkjh/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/f;

    invoke-virtual {v0}, Lcom/a4455jkjh/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/a4455jkjh/d;

    invoke-direct {v2, p0, v0}, Lcom/a4455jkjh/d;-><init>(Lcom/a4455jkjh/b;Lcom/a4455jkjh/f;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/a4455jkjh/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a4455jkjh/b;->d:Lcom/a4455jkjh/a;

    iget-object v1, p0, Lcom/a4455jkjh/b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/a;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
